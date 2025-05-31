const std = @import("std");
const print = std.debug.print;
pub fn main() !void {
    const User = struct {
        username: []const u8,
        password: []const u8,
    };
    const wiktrek = User{
        .username = "wiktrek",
        .password = "verystrongpassword",
    };
    print("username: {s}\npassword: {s}", .{ wiktrek.username, wiktrek.password });
}
