void main() {
  //! Declare a list of unsorted numbers.
  List<double> unSortedNumbers = [64, 34, 25, 12, 22, 11, 90];

  //? Sort the numbers in ascending order.
  //! - The `..sort()` mutates the original list by sorting it.
  //! - The cascade operator (`..`) allows chaining operations on the same object.
  //! - The sorted list is then assigned to `sortedNumbers`.
  List<double> sortedNumbers = unSortedNumbers..sort();
  print(sortedNumbers);

  //! Reverse the sorted list to get descending order.
  //! - The `reversed` property returns an iterable with the order of elements reversed.
  //! - `toList()` converts this iterable back to a list.
  List<double> reversedSortedNumbers = sortedNumbers.reversed.toList();
  print(reversedSortedNumbers);

  //! Declare a list of unsorted strings.
  List<String> unSortedStrings = ["banana", "apple", "orange"];

  //? Sort the strings based on their lengths in ascending order.
  //! - A custom comparison function is provided:
  //!   - `(a, b)` are two elements being compared.
  //!   - `a.length.compareTo(b.length)` compares the lengths of the two strings.
  //! - Sorting is done in ascending order of string length.
  List<String> sortedStrings = unSortedStrings
    ..sort((a, b) => a.length.compareTo(b.length));
  print(sortedStrings);

  //! Reverse the sorted string list to get descending order by length.
  List<String> reversedSortedStrings = sortedStrings.reversed.toList();
  print(reversedSortedStrings);

  //! Declare a list of maps representing people with `name` (string) and `age` (integer).
  List<Map<String, dynamic>> unSortedMap = [
    {"name": "Alice", "age": 30},
    {"name": "Bob", "age": 25},
    {"name": "Charlie", "age": 35}
  ];

  //? Sort the list of maps by the `age` property in ascending order.
  //! - A custom comparison function is used:
  //!   - `a["age"]` accesses the age value of the first map.
  //!   - `b["age"]` accesses the age value of the second map.
  //!   - `compareTo` compares the two ages in ascending order.
  List<Map<String, dynamic>> sortedMap = unSortedMap
    ..sort((a, b) => a["age"].compareTo(b["age"]));
  print(sortedMap);
}
