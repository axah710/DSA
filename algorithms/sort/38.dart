void main() {
  List<int> unSortedlist = [64, 34, 25, 12, 22, 11, 90];
  print("Unsorted List: $unSortedlist");
  //! Defines a function to sort the list using the bubble sort algorithm.
  List<int> bubbleSort(List<int> unSortedlist) {
    //! It ensures that each pass through the list gets one more element in its correct position.
    for (int outerIndex = 0; outerIndex < unSortedlist.length; outerIndex++) {
      print(unSortedlist);
      //! It compares adjacent elements and swaps them if they are in the wrong order.
      for (int innerIndex = 0;
          innerIndex < unSortedlist.length - 1;
          innerIndex++) {
        //! If the current element is larger than the next, it means they are in the wrong order and need to be swapped.
        if (unSortedlist[innerIndex] > unSortedlist[innerIndex + 1]) {
          //! This helps in swapping the two elements without losing the value of either.
          int temp = unSortedlist[innerIndex];
          //! The current element is replaced by the next element, effectively moving the smaller element to the left.
          unSortedlist[innerIndex] = unSortedlist[innerIndex + 1];
          //! The next element is replaced with the value stored in temp, completing the swap.
          //! After this swap, the two adjacent elements are now correctly ordered.
          unSortedlist[innerIndex + 1] = temp;
        }
      }
    }
    return unSortedlist;
  }

  List<int> sortedList = bubbleSort(unSortedlist);
  print("Sorted List: $sortedList");
}

//? How Bubble Sort Works
//! The outer loop ensures that the algorithm goes through the list multiple times.
//! The inner loop compares adjacent elements and swaps them if needed.
//! With each pass of the outer loop, the largest remaining element "bubbles" to its correct position at the end of the list.
//! This process continues until the list is fully sorted.