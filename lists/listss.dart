// DART LIST COMPREHENSIVE GUIDE
// Everything you need to know about Lists in Dart

void main() {
  print('=== DART LIST COMPLETE GUIDE ===\n');
  
  // 1. CREATING LISTS
  print('1. CREATING LISTS:');
  
  // Empty lists
  List<int> emptyList = [];
  List<String> emptyStringList = <String>[];
  var dynamicList = <dynamic>[];
  
  // Lists with initial values
  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> fruits = ['apple', 'banana', 'orange'];
  
  // Fixed-length lists
  List<int> fixedList = List.filled(5, 0); // [0, 0, 0, 0, 0]
  
  // Generate lists
  List<int> generated = List.generate(5, (index) => index * 2); // [0, 2, 4, 6, 8]
  
  // From other iterables
  List<int> fromSet = Set<int>.from([1, 2, 3]).toList();
  List<String> fromString = 'hello'.split(''); // ['h', 'e', 'l', 'l', 'o']
  
  print('Numbers: $numbers');
  print('Fruits: $fruits');
  print('Generated: $generated\n');
  
  // 2. BASIC OPERATIONS
  print('2. BASIC OPERATIONS:');
  
  List<String> colors = ['red', 'green', 'blue'];
  
  // Adding elements
  colors.add('yellow');                    // Add single element
  colors.addAll(['purple', 'orange']);     // Add multiple elements
  colors.insert(1, 'pink');               // Insert at specific index
  colors.insertAll(2, ['black', 'white']); // Insert multiple at index
  
  print('After additions: $colors');
  
  // Removing elements
  colors.remove('pink');           // Remove first occurrence
  colors.removeAt(0);             // Remove at index
  colors.removeLast();            // Remove last element
  colors.removeWhere((color) => color.length > 5); // Remove based on condition
  
  print('After removals: $colors');
  
  // Accessing elements
  print('First element: ${colors.first}');
  print('Last element: ${colors.last}');
  print('Element at index 1: ${colors[1]}');
  print('Length: ${colors.length}');
  print('Is empty: ${colors.isEmpty}');
  print('Is not empty: ${colors.isNotEmpty}\n');
  
  // 3. SEARCHING AND CHECKING
  print('3. SEARCHING AND CHECKING:');
  
  List<int> nums = [10, 20, 30, 40, 50];
  
  print('Contains 30: ${nums.contains(30)}');
  print('Index of 30: ${nums.indexOf(30)}');
  print('Last index of 30: ${nums.lastIndexOf(30)}');
  print('Any element > 45: ${nums.any((n) => n > 45)}');
  print('Every element > 5: ${nums.every((n) => n > 5)}');
  
  // Find elements
  int? found = nums.firstWhere((n) => n > 25, orElse: () => -1);
  print('First element > 25: $found\n');
  
  // 4. TRANSFORMING LISTS
  print('4. TRANSFORMING LISTS:');
  
  List<int> original = [1, 2, 3, 4, 5];
  
  // Map - transform each element
  List<int> doubled = original.map((n) => n * 2).toList();
  List<String> strings = original.map((n) => 'Number: $n').toList();
  
  // Where - filter elements
  List<int> evens = original.where((n) => n % 2 == 0).toList();
  List<int> greaterThan2 = original.where((n) => n > 2).toList();
  
  // Take and skip
  List<int> firstThree = original.take(3).toList();
  List<int> skipTwo = original.skip(2).toList();
  
  print('Original: $original');
  print('Doubled: $doubled');
  print('As strings: $strings');
  print('Even numbers: $evens');
  print('First three: $firstThree');
  print('Skip first two: $skipTwo\n');
  
  // 5. REDUCING AND FOLDING
  print('5. REDUCING AND FOLDING:');
  
  List<int> values = [1, 2, 3, 4, 5];
  
  // Reduce - combine elements into single value
  int sum = values.reduce((a, b) => a + b);
  int product = values.reduce((a, b) => a * b);
  
  // Fold - like reduce but with initial value
  int sumWithInitial = values.fold(10, (prev, element) => prev + element);
  String concatenated = values.fold('', (prev, element) => prev + element.toString());
  
  print('Sum: $sum');
  print('Product: $product');
  print('Sum with initial 10: $sumWithInitial');
  print('Concatenated: $concatenated\n');
  
  // 6. SORTING
  print('6. SORTING:');
  
  List<int> unsorted = [5, 2, 8, 1, 9];
  List<String> names = ['Charlie', 'Alice', 'Bob'];
  
  // Sort in place
  unsorted.sort(); // Ascending
  names.sort(); // Alphabetical
  
  print('Sorted numbers: $unsorted');
  print('Sorted names: $names');
  
  // Custom sorting
  List<String> words = ['apple', 'pie', 'a', 'longer'];
  words.sort((a, b) => a.length.compareTo(b.length)); // Sort by length
  print('Sorted by length: $words\n');
  
  // 7. ADVANCED OPERATIONS
  print('7. ADVANCED OPERATIONS:');
  
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, 6];
  
  // Combine lists
  List<int> combined = [...list1, ...list2]; // Spread operator
  List<int> combined2 = list1 + list2; // Concatenation
  
  // Reverse
  List<int> reversed = list1.reversed.toList();
  
  // Shuffle
  List<int> shuffled = [...list1];
  shuffled.shuffle();
  
  // Sublist
  List<int> sub = combined.sublist(2, 5); // From index 2 to 4
  
  print('Combined: $combined');
  print('Reversed: $reversed');
  print('Shuffled: $shuffled');
  print('Sublist (2-4): $sub\n');
  
  // 8. LIST COMPREHENSIONS (using collection for and if)
  print('8. COLLECTION FOR AND IF:');
  
  // Collection for
  List<int> squares = [for (int i = 1; i <= 5; i++) i * i];
  
  // Collection if
  List<int> evenSquares = [
    for (int i = 1; i <= 10; i++) 
      if (i % 2 == 0) i * i
  ];
  
  // Nested collections
  List<List<int>> matrix = [
    for (int i = 0; i < 3; i++)
      [for (int j = 0; j < 3; j++) i * 3 + j]
  ];
  
  print('Squares: $squares');
  print('Even squares: $evenSquares');
  print('Matrix: $matrix\n');
  
  // 9. WORKING WITH NESTED LISTS
  print('9. NESTED LISTS:');
  
  List<List<int>> nested = [[1, 2], [3, 4], [5, 6]];
  
  // Flatten
  List<int> flattened = nested.expand((list) => list).toList();
  
  // Access nested elements
  int element = nested[1][0]; // Second list, first element
  
  print('Nested: $nested');
  print('Flattened: $flattened');
  print('Element [1][0]: $element\n');
  
  // 10. PERFORMANCE TIPS
  print('10. PERFORMANCE TIPS:');
  
  // Use specific types for better performance
  List<int> typedList = <int>[]; // Better than List<dynamic>
  
  // Preallocate size if known
  List<int> preallocated = List.filled(1000, 0);
  
  // Use const for immutable lists
  const List<String> constants = ['a', 'b', 'c'];
  
  // Use growable: false for fixed-size performance
  List<int> fixed = List.generate(100, (i) => i, growable: false);
  
  print('Performance tips demonstrated\n');
  
  // 11. COMMON PATTERNS IN FLUTTER
  print('11. FLUTTER PATTERNS:');
  
  // Widget lists
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  
  // This would be used in Flutter widgets
  // ListView.builder(
  //   itemCount: items.length,
  //   itemBuilder: (context, index) => ListTile(title: Text(items[index])),
  // )
  
  // Filtering for search
  String searchTerm = 'Item';
  List<String> filtered = items
      .where((item) => item.toLowerCase().contains(searchTerm.toLowerCase()))
      .toList();
  
  print('Original items: $items');
  print('Filtered items: $filtered\n');
  
  // 12. NULL SAFETY WITH LISTS
  print('12. NULL SAFETY:');
  
  List<int?> nullableList = [1, null, 3, null, 5];
  List<int> nonNullable = nullableList.whereType<int>().toList();
  
  // Safe access
  int? firstElement = nullableList.isNotEmpty ? nullableList.first : null;
  
  print('Nullable list: $nullableList');
  print('Non-nullable filtered: $nonNullable');
  print('Safe first element: $firstElement\n');
  
  // 13. ASYNC OPERATIONS WITH LISTS
  print('13. ASYNC PATTERNS:');
  demonstrateAsyncListOperations();
}

// Async list operations
Future<void> demonstrateAsyncListOperations() async {
  List<int> numbers = [1, 2, 3, 4, 5];
  
  // Process each item asynchronously
  List<String> results = [];
  for (int number in numbers) {
    String result = await processNumberAsync(number);
    results.add(result);
  }
  
  // Or use Future.wait for parallel processing
  List<Future<String>> futures = numbers.map(processNumberAsync).toList();
  List<String> parallelResults = await Future.wait(futures);
  
  print('Sequential results: $results');
  print('Parallel results: $parallelResults');
}

Future<String> processNumberAsync(int number) async {
  await Future.delayed(Duration(milliseconds: 100)); // Simulate async work
  return 'Processed: $number';
}