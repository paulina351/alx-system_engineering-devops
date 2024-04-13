#!/usr/bin/python3
"""Gather data from an API"""

import requests
from sys import argv, exit

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    url = requests.get(url + "users/{}".format(sys.argv[1])).json()
    todos = requests.get(url + "todos", params={"usersId": sys.argv[1]}).json()

    completed = [t.get("title") for t in todos if t.get("completed") is True]
    print("Employee {} is done with tasks({}):".format(
        user.get("name"), len(completed), len(todos)))
    [print("\t {}".format(c)) for c in completed]

Employee EMPLOYEE_NAME is done with tasks(NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS)

     TASK_TITLE
