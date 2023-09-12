//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

class Solution {
  bool containsDuplicate(List<int> nums) {
      //convert nums to a unique array
      var uniqueNums=[...{...nums}];
    var numsSum = nums.reduce((numsSum,item)=>numsSum+=item);
  var uniqueNumsSum = uniqueNums.reduce((uniqueNumsSum,item)=>uniqueNumsSum+=item);
  if(numsSum==uniqueNumsSum){
      return false;
  }else{
      return true;
  }
  }
}