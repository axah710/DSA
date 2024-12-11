void main() {
  //! Order in the list affects the output.
  List<dynamic> anyList = <dynamic>[7, "Ahmed", true];

  //! Access in a list has a Big O of O(1) because lists have a fixed size, allowing direct access via index.
  print(anyList[0]);

  //! Insertion at the end of the list has a Big O of O(1).
  anyList.add(3);
  print(anyList);

  //! Insertion at any position other than the end has a Big O of O(n) because other elements need to be shifted.
  anyList.insert(0, 1);
  print(anyList);

  //! Deletion from any position other than the end has a Big O of O(n) because other elements need to be shifted.
  anyList.remove(7);
  print(anyList);

  //! Deletion from the end of the list has a Big O of O(1).
  anyList.removeAt(anyList.length - 1);
  print(anyList);

  //! Searching in the list has a Big O of O(n) because it checks each element until a match is found.
  print(anyList.contains(true));
  print(anyList.indexOf("Ahmed"));
  print(anyList);
}
