//! Create a function that calculate the sum of numbers from 1 to the given number ...
//! 5 => 1 + 2 + 3 + 4 + 5 = 15

void main() {
  //? Function Declaration
  //! It takes 5n+2 number of operations, so it's complicated ...
  //! F(N) = linear = n
  //! O(n)
  int getSumOfIntegers(int number) {
    int sum = 0;
    for (int i = 1; i <= number; i++) {
      sum += i;
    }
    return sum;
  }

  //? Another way to write the function
  //! This formula avoids looping through all numbers, and only do three operations,
  //! making it more efficient.
  //! F(N) = constant = 1
  //! O(1)
  int calculateSum(int number) {
    return (number * (number + 1)) ~/ 2;
  }

  //! Stopwatch is used to measure the time taken to execute the function.
  Stopwatch stopwatch = new Stopwatch()..start();
  //! Using the Stopwatch to measure the time taken to execute is not accurate
  //! enough, because the time taken to execute vary from device to device and
  //! aslo vary in the same device.
  print(getSumOfIntegers(55));
  print('getSumOfIntegers executed in ${stopwatch.elapsed}');
  print(calculateSum(55));
  print('calculateSum executed in ${stopwatch.elapsed}');
}
