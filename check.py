import sys
import re
import math

with open(sys.argv[1]) as fd_control:
    nums_control = list()
    for line in fd_control:
        nums_control.append(re.findall(
            r"-?[0-9]+(?:\.[0-9]+)?(?:e[+-][0-9]+)?", line))


with open(sys.argv[2]) as fd_test:
    nums_test = list()
    for line in fd_test:
        nums_test.append(re.findall(
            r"-?[0-9]+(?:\.[0-9]+)?(?:e[+-][0-9]+)?", line))

flag = "Valid"
for l, (test, control) in enumerate(zip(nums_test, nums_control), start=1):
    for c,(a, b) in enumerate(zip(test,control), start=1):
        if not math.isclose(float(a), float(b), rel_tol=1e-12, abs_tol=1e-12):
            flag = "Invalid"
            print(f"Fail in line:{l} col:{c}")

print(flag)