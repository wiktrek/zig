const std = @import("std");
const print = std.debug.print;
pub fn main() !void {
    const array = [3]i32{ 1, 2, 3 };
    print("{} {} {}", .{ array[0], array[1], array[2] });
}
