void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(calculateSum(numbers));
  print(multiplyList(numbers));
}

//! Create a function that takes a list of numbers and returns the sum of all the numbers in the list.
//! [1, 2, 3, 4, 5] => 15
int calculateSum(List<int> numbers) {
  int sumOfElements = 0;
  //! sum num complexity = O(1) , why ? Becuse numbers always have a fixed space ...
  for (int index = 0; index < numbers.length; index++) {
    //! index num complexity = O(1) , why ? Becuse numbers always have a fixed space ...
    //! Note : write index instaed of i to write more clean and meaningful names ...
    sumOfElements += numbers[index];
  }
  return sumOfElements;
}

//! Create a function that takes a list of numbers and multiply all the numbers in the list and return the result new list.
//! [1, 2, 3, 4, 5] => [2, 4, 6, 8, 10]
List<int> multiplyList(List<int> numbers) {
  List<int> multipliedNumbers = [];
  for (int index = 0; index < numbers.length; index++) {
    multipliedNumbers.add(numbers[index] * 2);
    //! Space complexity = O(n) , why ? Due to add functionality that make a new list ...
    //! Note : Since the size of the multipliedNumbers list grows linearly with the size of the input list numbers, the space complexity is O(n).
  }
  return multipliedNumbers;
}
