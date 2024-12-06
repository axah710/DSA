//! Create a function that takes string and returns reversed string
//! ahmed => demha

void main() {
  //? Function Declaration
  String reverseString(String stringToReverse) {
    return stringToReverse.split('').reversed.join();
  }
  print(reverseString('ahmed'));
}
