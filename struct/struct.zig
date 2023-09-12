const std = @import("std");
const print = std.debug.print;
pub fn main() !void {
    const Person = struct {
        name: []const u8,
        age: u8,
    };
    const wiktrek = Person{
        .name = "wiktrek",
        .age = 100,
    };
    print("name: {s}\nage: {}", .{ wiktrek.name, wiktrek.age });
}
