use "cli"

actor Main
  new create(env: Env) =>
    try
      let n = env.args(1)?.usize()?
      env.out.print(fib(n).string())
    else
      env.err.print("Error parsing the input")
    end

  fun fib(n: USize): USize =>
    if n <= 1 then
      n
    else
      fib(n - 1) + fib(n - 2)
    end
