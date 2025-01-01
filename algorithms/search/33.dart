/// Finds all occurrences of a given pattern in a given text using the naive search algorithm.
void main() {
  String text = "AABAACAADAABAAABAA";
  String pattern = "AABA";
  naiveSearch(text, pattern);
}

/// Finds all occurrences of a given pattern in a given text using the naive search algorithm.
///
/// The naive search algorithm iterates over the text and checks for each possible
/// starting position if the pattern matches the substring starting at that position.
///

void naiveSearch(String text, String pattern) {
  //! Stores the lengths of text and pattern in separate variables to avoid recalculating them multiple times during the loop.
  int textLength = text.length;
  int patternLength = pattern.length;
  //! Moves the pattern over the text, one character at a time.
  //! Condition: Runs from index 0 to textLength - patternLength, ensuring that the pattern doesn't exceed the bounds of the text.
  //! Variable i: Represents the starting index of the current substring of text being checked.
  for (int i = 0; i <= textLength - patternLength; i++) {
    //! Compares each character of the pattern with the corresponding characters in the text.
    //! Variable j: Represents the index of the character in the pattern.
    //! text[i + j]: Refers to the current character in the text being compared.
    //! Logic:
    //! If a mismatch is found, the found flag is set to false, and the inner loop exits early using break.
    bool found = true;
    for (int j = 0; j < patternLength; j++) {
      if (text[i + j] != pattern[j]) {
        found = false;
        break;
      }
    }
    //! If the found flag is still true after the inner loop, the pattern was found starting at index i in the text.
    if (found) {
      print("Pattern found at index $i");
    }
  }
}
