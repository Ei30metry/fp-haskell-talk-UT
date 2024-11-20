def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)


def hasEven(char, string):
    i = 0
    for c in string:
        if c == char:
            i += 1
    return (True if (i % 2) == 0 else False)


def say(n,string):
    i = 0
    final = ""
    while i < n:
        final = string + final
        i += 1
    return final
