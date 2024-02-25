def optimalFreelancing(jobs):
    LENGTH_OF_WEEK = 7
    profit = 0
    jobs.sort(key=lambda job: job["payment"], reverse=True)
    timeline = [False] * LENGTH_OF_WEEK
    for job in jobs:
        maxTime = min(job["deadline"], LENGTH_OF_WEEK)
        for time in reversed(range(maxTime)):
            if timeline[time] == False:
                timeline[time] = True
                profit += job["payment"]
                break

    return profit