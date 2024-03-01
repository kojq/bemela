use std::env;

fn fib(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fib(n - 1) + fib(n - 2),
    }
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let n: u32 = args[1].trim().parse().expect("Please type a number!");
    println!("{}", fib(n));
}
