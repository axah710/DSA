void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  //! The `indexOf` and `contains` methods use linear search.
  //! Linear search iterates over all items in the list to find the target value.
  //! Worst-case time complexity: O(n).
  //! Linear search is the default and most commonly used search algorithm.

  print(numbers.indexOf(6)); //! Output: -1 (item not found)
  print(numbers.indexOf(3)); //! Output: 2 (item found at index 2)
  print(numbers.contains(1)); //! Output: true (item exists in the list)
}
