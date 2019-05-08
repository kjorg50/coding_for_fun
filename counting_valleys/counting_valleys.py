#!/bin/python3
# https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

import math
import os
import random
import re
import sys

# Complete the countingValleys function below.
def countingValleys(n, s):
    valley_count = 0
    current_height = 0

    for letter in s:
        if letter == 'D':
            if current_height == 0:
                valley_count += 1
            current_height -= 1
        elif letter == 'U':
            current_height += 1

    return valley_count

if __name__ == '__main__':
    # fptr = open(os.environ['OUTPUT_PATH'], 'w')

    f = open("input", 'r')

    n = int(f.readline())

    s = f.readline()

    result = countingValleys(n, s)

    print(result)

    # fptr.write(str(result) + '\n')

    # fptr.close()