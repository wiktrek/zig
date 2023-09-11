const std = @import("std");
const print = std.debug.print;
pub fn main() !void {
    print("sort - sort.zig", .{});
    var arr = [_]i32{ 1, 5, 3, 4, 3 };
    for (arr) |e| {
        print("\ne: {} ", .{e});
    }
}
