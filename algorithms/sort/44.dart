// will work here on insertion sort algorithm...
void main() {
  List<int> array = [5, 2, 9, 1, 3, 6, 4, 7, 8];
  // 2 will compare with 5 and swap if 2 is less than 5...
  //[5, 2, 9, 1, 3, 6, 4, 7, 8]
  // 9 will compare with 5 and swap if 9 is less than 5...
  //[5, 2, 9, 1, 3, 6, 4, 7, 8]
  // 1 will compare with 9 and swap if 1 is less than 9...
  //[5, 2, 1, 9, 3, 6, 4, 7, 8]
  // 3 will compare with 9 and swap if 3 is less than 9...
  //[5, 2, 1, 3, 9, 6, 4, 7, 8]
  print(insertionSort(array));
}

List<int> insertionSort(List<int> list) {
  //! start from index 1 and compare with the previous index...
  for (int i = 1; i < list.length; i++) {
    print("outer loop index: $i");
    //! choosing the first element of our unsorted array...
    int current = list[i];
    print("current element: $current");
    //! the last element of our sorted array...
    int j = i - 1;
    //! comparing the current element with the previous element...

    while (j >= 0 && list[j] > current) {
      print("comparing : ${list[j]} > $current");
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = current;
    print(
        "*********************************************************************");
    print(list);
  }
  return list;
}
//! what is the time complexity of this algorithm?
//! O(n^2)
//! what is the space complexity of this algorithm?
//! O(1)
//! what is the best case time complexity of this algorithm?
//! O(n)
//! what is the worst case time complexity of this algorithm?
//! O(n^2)
//! what is the average case time complexity of this algorithm?
//! O(n^2)

