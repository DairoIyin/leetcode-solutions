class ProductExceptSelf {
  List<int> productExceptSelf(List<int> nums) {
    List<int> arr = List.generate(nums.length, (element) => 1);
    int prefix = 1;
    for (int i = 0; i < nums.length; i++) {
      arr[i] = prefix;
      prefix = prefix * nums[i];
    }
    int postfix = 1;
    for (int i = nums.length - 1; i >= 0; i--) {
      arr[i] = postfix * arr[i];
      postfix = postfix * nums[i];
    }

    return arr;
  }

  //check Neetcode video for an explanation
}
