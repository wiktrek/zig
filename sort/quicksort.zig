// https://en.wikipedia.org/wiki/Quicksort
const std = @import("std");
const print = std.debug.print;
const swap = std.mem.swap;
const expect = std.testing.expect;
pub fn main() !void {
    print("sort - sort.zig", .{});
}
test "empty array" {
    var array = .{};
    quick_sort(&array);
    try expect(array.len == 0);
}
test "sorted array" {
    var array: [5]i32 = .{ 1, 2, 3, 4, 5 };
    quick_sort(&array);
    for (array, 1..) |v, i| {
        try expect(v == i);
    }
}
test "unsorted array" {
    var array: [5]i32 = .{ 2, 1, 3, 4, 5 };
    quick_sort(&array);
    for (array, 1..) |v, i| {
        try expect(v == i);
    }
}
test "unsorted array 2" {
    var array: [13]i32 = .{ 2, 1, 4, 3, 5, 6, 9, 8, 7, 10, 11, 13, 12 };
    quick_sort(&array);
    for (array, 1..) |v, i| {
        try expect(v == i);
    }
}
fn quick_sort(arr: []i32) void {
    if (arr.len != 0) {
        const partition_index = partition(arr);
        const len = arr.len;
        quick_sort(arr[0..partition_index]);
        quick_sort(arr[partition_index + 1 .. len]);
    }
}
fn partition(arr: []i32) usize {
    const len = arr.len;
    const pivot = arr[len - 1];
    var i: usize = 0;
    var j: usize = 0;

    while (j < len - 1) {
        if (arr[j] <= pivot) {
            swap(i32, &arr[i], &arr[j]);
            i += 1;
        }
        j += 1;
    }

    swap(i32, &arr[i], &arr[len - 1]);
    return i;
}
