class TwoSum {
  List<int> twoSum(List<int> nums, int target) {
      
     Map numsMap={};
     for(int i=0;i<nums.length;i++){
       var remaining = target-nums[i]; //calculate the number we need
       if(numsMap.containsKey(remaining)){
         return [i,numsMap[remaining]];
       }
       numsMap[nums[i]]=i;
     }
  return [];
  }
}