const std = @import("std");

fn fib(n: u32) u32 {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

pub fn main() !void {
    var args = try std.process.argsAlloc(std.heap.page_allocator);
    defer std.process.argsFree(std.heap.page_allocator, args);
    const n = std.fmt.parseInt(u32, args[1], 10) catch unreachable;
    std.debug.print("{}\n", .{fib(n)});
}
