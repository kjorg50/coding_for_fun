#!/bin/python
# https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

import math
import os
import random
import re
import sys

# Complete the sockMerchant function below.
def sockMerchant(n, ar):
    count_dict = {}
    pairs = 0

    for i in range(n):
        if ar[i] in count_dict:
            count_dict[ar[i]] += 1
        else:
            count_dict[ar[i]] = 1

    for sock, count in count_dict.items():
        pairs = pairs + (count / 2)

    return pairs 

if __name__ == '__main__':
    # fptr = open(os.environ['OUTPUT_PATH'], 'w')

    f = open("input.txt", 'r')

    n = int(f.readline())

    ar = list(map(int, f.readline().rstrip().split()))

    result = sockMerchant(n, ar)

    print result

    # fptr.write(str(result) + '\n')

    # fptr.close()
