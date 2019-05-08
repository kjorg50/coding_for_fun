#!/bin/python3
# https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

import math
import os
import random
import re
import sys

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c):
    jumps = 0
    curr = 0

    while curr < len(c)-1:
        if curr+2 < len(c) and c[curr+2] == 0:
            curr += 2
            jumps += 1
        else:
            curr += 1
            jumps += 1

    return jumps

if __name__ == '__main__':
    # fptr = open(os.environ['OUTPUT_PATH'], 'w')

    f = open("input_simple", 'r')

    n = int(f.readline())

    c = list(map(int, f.readline().rstrip().split()))

    result = jumpingOnClouds(c)

    print(result)

    # fptr.write(str(result) + '\n')

    # fptr.close()
