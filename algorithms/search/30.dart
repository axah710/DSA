main() {
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
  ];
  // create a fun then pass list and value
  int binarySearch(List<int> numbers, int target) {
    // in inital step left pointer will be zero index and right will be length-1
    int left = 0;
    int right = numbers.length - 1;
    // middle pointer will be (left+right)/2
    int middle = (left + right) ~/ 2;
    // will print the points
    print("left: $left, right: $right, middle: $middle");
    // if the target is greater than the middle value then we will move the left pointer to the middle value + 1
    // if the target is less than the middle value then we will move the right pointer to the middle value - 1
    while (numbers[middle] != target && left <= right) {
      // why ? left <= right because if the left pointer is greater than the right pointer then the target is not found
      print("left: $left, right: $right, middle: $middle");
      if (numbers[middle] < target) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
      // when chang the pointers i need to move the middle pointer to the new middle value
      middle = (left + right) ~/ 2;
    }
    // if the target is found then we will return the index of the target
    if (numbers[middle] == target) {
      return middle;
    }
    // if the target is not found then we will return -1
    return -1;
  }

  print("Index of 5: ${binarySearch(numbers, 5)}");
}
