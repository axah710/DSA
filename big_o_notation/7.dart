void main() {
  Map<String, dynamic> player = {
    "name": "Cristiano Ronaldo",
    "age": 36,
    "club": "Manchester United",
    "country": "Portugal",
    "position": "Forward",
    "isInjured": false,
  };
  print(player);

  //! Accessing a Map has a Big-O complexity of O(1) because it directly accesses the key.
  print(player["name"]);

  //! Deleting a key-value pair in a Map has a Big-O complexity of O(1) because it directly removes the key and its value.
  player.remove("isInjured");
  print(player);

  //! Updating a value in a Map has a Big-O complexity of O(1) because it directly updates the value associated with a key.
  player["club"] = "Real Madrid";
  print(player);

  //! Inserting a new key-value pair in a Map has a Big-O complexity of O(1) because it inserts at the end, and also the order doesn't matter.
  player["isInjured"] = true;
  print(player);

  //! Searching for a value in a Map has a Big-O complexity of O(n) because it checks each key-value pair.
  print(player.containsValue("isInjured"));

  //! Searching for a key in a Map has a Big-O complexity of O(1) because it directly checks for the key.
  print(player.containsKey("position"));
}
