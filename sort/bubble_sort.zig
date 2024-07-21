const std = @import("std");
const print = std.debug.print;
const swap = std.mem.swap;
const expect = std.testing.expect;
pub fn main() !void {
    print("sort - sort.zig", .{});
}
test "empty array" {
    var array = .{};
    bubble_sort(&array);
    try expect(array.len == 0);
}
test "sorted array" {
    var array: [5]i32 = .{ 1, 2, 3, 4, 5 };
    bubble_sort(&array);
    for (array, 1..) |v, i| {
        try expect(v == i);
    }
}
test "unsorted array" {
    var array: [5]i32 = .{ 2, 1, 3, 4, 5 };
    bubble_sort(&array);
    for (array, 1..) |v, i| {
        try expect(v == i);
    }
}
test "unsorted array 2" {
    var array: [13]i32 = .{ 2, 1, 4, 3, 5, 6, 9, 8, 7, 10, 11, 13, 12 };
    bubble_sort(&array);
    for (array, 1..) |v, i| {
        try expect(v == i);
    }
}
fn bubble_sort(arr: []i32) void {
    var n = arr.len;
    while (n > 1) {
        var newn: usize = 0;
        for (1..n) |i| {
            if (arr[i - 1] > arr[i]) {
                swap(i32, &arr[i - 1], &arr[i]);
            }
            // print("\n{any}", .{arr});
            newn = i;
        }
        n = newn;
    }
}
