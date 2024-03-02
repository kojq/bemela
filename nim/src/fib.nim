import os, strutils

proc fib(n: int): int =
    if n <= 1: return n
    else: return fib(n-1) + fib(n-2)

when isMainModule:
    let n = parseInt(paramStr(1))
    echo fib(n)
