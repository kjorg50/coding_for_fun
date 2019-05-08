#!/bin/python3
# https://www.hackerrank.com/challenges/ctci-ransom-note/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps

import math
import os
import random
import re
import sys

# Complete the checkMagazine function below.
def checkMagazine(magazine, note):
    myMagazine = {}
    possible = False
    
    for word in magazine:
        if word not in myMagazine:
            myMagazine[word] = 1
        else:
            myMagazine[word] += 1

    for word in note:
        if word in myMagazine and myMagazine[word] > 0:
            possible = True
            myMagazine[word] -= 1
        else:
            possible = False
            break

    print("Yes" if possible else "No")

if __name__ == '__main__':
    f = open("input3", 'r')
    mn = f.readline().split()

    m = int(mn[0])

    n = int(mn[1])

    magazine = f.readline().rstrip().split()

    note = f.readline().rstrip().split()

    checkMagazine(magazine, note)