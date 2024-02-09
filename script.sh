readonly COLOR_PURPLE="\033[1;35m"
readonly COLOR_GREEN="\033[1;32m"
readonly COLOR_BLUE="\033[1;34m"
readonly COLOR_RED="\033[1;31m"
readonly COLOR_YELLOW="\033[0;33m"
readonly COLOR_RESET="\033[0m"

echo "${COLOR_RED}Name of folder:${COLOR_RESET}\\n"
read -r folder

echo "${COLOR_RED} Select level ${COLOR_RESET}
          1) Easy
          2) Medium
          3) Hard
          0) Exit
          ${BOLD_BLUE} Please choose an option:  ${COLOR_RESET}"
read -r level
case $level in
1)
    cd easy
    ;;
2)
    cd medium
    ;;
3)
    cd hard
    ;;
0)
    echo "Bye bye."
    exit 0
    ;;
*)
    echo "Wrong option."
    exit 1
    ;;
esac

name_of_folder=${folder//-/_}
mkdir $name_of_folder
cd $name_of_folder
cp ../../templates/function_template.js index.js
cp ../../templates/js_test.js test.js
touch README.md
# Use awk to convert to Title Case and replace underscores with spaces
readable_name=$(echo $name_of_folder | awk 'BEGIN{FS="_";OFS=" "} {for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2)); print}')

echo "# $readable_name" > README.md

cp ../../templates/module_template.rb "$name_of_folder.rb"
cp ../../templates/ruby_test.rb "test_$name_of_folder.rb"


# Use sed to replace XXX with $name_of_folder in the copied files
sed -i '' "s/XXX/$name_of_folder/g" index.js
sed -i '' "s/XXX/$name_of_folder/g" test.js
sed -i '' "s/XXX/$name_of_folder/g" "$name_of_folder.rb"
sed -i '' "s/XXX/$name_of_folder/g" "test_$name_of_folder.rb"