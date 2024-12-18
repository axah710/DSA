//! This Dart program implements a linear search algorithm to find the index of a target integer in a list of integers.
//! If the target is found, it returns the index; otherwise, it returns -1 indicating the item is not found.

void main() {
  int LinearSearch(List<int> numbers, int target) {
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == target) {
        return i;
      }
    }
    return -1;
  }

  print(LinearSearch([1, 2, 3, 4, 5], 6)); //! Output: -1 (item not found)
}
