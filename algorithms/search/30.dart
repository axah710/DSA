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

  ///! Function to perform binary search
  int binarySearch(List<int> numbers, int target) {
    //! Step 1: Initialize left and right pointers
    int left = 0;
    int right = numbers.length - 1;

    //! Step 2: Calculate the middle pointer
    int middle = (left + right) ~/ 2;

    //! Step 3: Print initial pointers for debugging
    print("left: $left, right: $right, middle: $middle");

    //! Step 4: Perform binary search loop
    while (numbers[middle] != target && left <= right) {
      //! Condition to ensure the left pointer does not exceed the right pointer
      print("left: $left, right: $right, middle: $middle");

      //! Step 5: Adjust pointers based on comparison
      if (numbers[middle] < target) {
        //! Move the left pointer to the right of the middle
        left = middle + 1;
      } else {
        //! Move the right pointer to the left of the middle
        right = middle - 1;
      }

      //! Step 6: Recalculate the middle pointer
      middle = (left + right) ~/ 2;
    }

    //! Step 7: Check if the target is found
    if (numbers[middle] == target) return middle;

    //! Step 8: Return -1 if the target is not found
    return -1;
  }

  //! Perform the binary search and print the result
  print("Index of 5: ${binarySearch(numbers, 5)}");
}
