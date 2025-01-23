void main() {
  List<int> unSortedlist = [64, 34, 25, 12, 22, 11, 90];
  print("Original list: $unSortedlist");
  print(selectionSort(unSortedlist));
}

////! This function takes an unsorted list of integers as input and returns a sorted list.
List<int> selectionSort(List<int> unSortedlist) {
  //! The outer loop iterates over the list to find the smallest element in the unsorted portion of the list.
  for (int outerIndex = 0; outerIndex < unSortedlist.length; outerIndex++) {
    print("Outer Loop Is Called for index: $outerIndex");
    print(unSortedlist);
    //! minIndex is initialized to outerIndex, assuming the current element is the smallest.
    int minIndex = outerIndex;
    //! The inner loop finds the smallest element in the unsorted portion of the list.
    //! innerIndex starts from outerIndex + 1 and iterates through the rest of the list.
    for (int innerIndex = outerIndex + 1;
        innerIndex < unSortedlist.length;
        innerIndex++) {
      print("Inner Loop Is Called for index: $innerIndex");
      print(unSortedlist);
      if (unSortedlist[innerIndex] < unSortedlist[minIndex]) {
        //! If a smaller element is found, minIndex is updated to the index of that element.
        minIndex = innerIndex;
      }
    }
    //! Swaps the smallest element found with the element at the current outerIndex.
    //! If minIndex is not equal to outerIndex, it means a smaller element was found.
    if (minIndex != outerIndex) {
      //! A temporary variable (temp) is used to swap the elements at outerIndex and minIndex.
      int temp = unSortedlist[outerIndex];
      unSortedlist[outerIndex] = unSortedlist[minIndex];
      unSortedlist[minIndex] = temp;
      print("Swapped $unSortedlist[$outerIndex] and $unSortedlist[$minIndex]");
    }
    print("************************************");
  }

  return unSortedlist;
}
