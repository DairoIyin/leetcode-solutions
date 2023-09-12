//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

class Solution {
  bool containsDuplicate(List<int> nums) {
    var uniqueNums = [
      ...{...nums}
    ];
    if (nums.length == uniqueNums.length) {
      return false;
    } else {
      return true;
    }
  }
}
