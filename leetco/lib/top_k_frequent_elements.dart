//Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
import 'dart:collection';

class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> res = {};
    List<List<int>> frequentElements =
        List.generate(nums.length + 1, (int index) => []);
    List<int> result = [];
//i need to loop through each element, the element will be a key, if it already exists in the map, increment, if it doesnt, create the key and assign to 1.
    for (int item in nums) {
      if (res.containsKey(item)) {
        res[item] = res[item]! + 1;
      } else {
        res[item] = 1;
      }
    }

    ///---solution 1----
    res.entries.forEach((e) => frequentElements[e.value].add(e.key));
    print(frequentElements);
    for (int i = nums.length; i >= 0; i--) {
      for (var item in frequentElements[i]) {
        result.add(item);
        print(item);
        if (result.length == k) {
          return result;
        }
      }
    }
    return [];

//--------solution 2---
// //then i need to arrange the map in descending order of values,
// var sortedValues=res.entries.toList()..sort((a,b){
//   return b.value.compareTo(a.value);
// });

// //pick the top k elements and return their value as a list;
// for(var entry in sortedValues.take(k)){
// frequentElements.add(entry.key);
// }

// return frequentElements;
  }
}
