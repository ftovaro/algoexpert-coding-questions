# Optimal Freelancing

You recently started freelance software development and have been offered a variety of job opportunities. Each job has a deadline, meaning there is no value in completing the work after the deadline. Additionally, each job has an associated payment representing the profit for completing that job. Given this information, write a function that returns the maximum profit that can be obtained in a 7-day period.

Each job will take 1 full day to complete, and the deadline will be given as the number of days left to complete the job. For example, if a job has a deadline of 1, then it can only be completed if it is the first job worked on. If a job has a deadline of 2, then it could be started on the first or second day.

Note: There is no requirement to complete all of the jobs. Only one job can be worked on at a time, meaning that in some scenarios it will be impossible to complete them all.

Sample Input

jobs = [
{"deadline": 1, "payment": 1},
{"deadline": 2, "payment": 1},
{"deadline": 2, "payment": 2}
]

Sample Output

3 // Job 0 would be completed first, followed by job 2. Job 1 is not completed.


Let's start by translating the Python function into JavaScript:

```javascript
function optimalFreelancing(jobs) {
    const LENGTH_OF_WEEK = 7;
    let profit = 0;
    jobs.sort((a, b) => b.payment - a.payment);
    const timeline = new Array(LENGTH_OF_WEEK).fill(false);
    jobs.forEach(job => {
        const maxTime = Math.min(job.deadline, LENGTH_OF_WEEK);
        for (let time = maxTime - 1; time >= 0; time--) {
            if (!timeline[time]) {
                timeline[time] = true;
                profit += job.payment;
                break;
            }
        }
    });
    return profit;
}
```

### Now, let's break down the solution step by step:

1. **Initialization**: The function starts by setting the length of a week (`LENGTH_OF_WEEK`) to 7 days, initializing the total profit (`profit`) to 0, and sorting the jobs in descending order based on their payment. This sorting ensures that the algorithm always considers the most profitable jobs first.

2. **Creating a Timeline**: A timeline array is created and initialized with `false` values. Each element of this array represents a day in the 7-day period. Initially, all days are marked as available (`false`).

3. **Iterating Over Jobs**: The function then iterates over each job in the sorted list. For each job, it calculates the maximum day (`maxTime`) by which the job can be started. This is the minimum of the job's deadline and the length of the week to ensure it doesn't exceed the available timeframe.

4. **Finding a Slot for the Job**: Within the determined `maxTime`, the function searches backwards for an available day (where the timeline is `false`, indicating the day is free). The search starts from the latest possible day and moves backwards to give each job the latest possible slot. This approach leaves earlier slots open for jobs with tighter deadlines that might be processed later.

5. **Marking the Day and Updating Profit**: When an available day is found, the timeline for that day is marked as `true` (indicating the day is now occupied), and the job's payment is added to the total profit. If no available day is found, the job is skipped.

6. **Returning the Profit**: After all jobs have been considered, the function returns the total profit accumulated from the jobs that were fit into the schedule.

The core idea is to maximize profit by prioritizing higher-paying jobs and placing them in the schedule in such a way that leaves room for as many jobs as possible, given their deadlines. By sorting the jobs by payment in descending order, the algorithm ensures that it always considers the most lucrative opportunities first, while the backward search for a slot maximizes the use of the available 7-day period.