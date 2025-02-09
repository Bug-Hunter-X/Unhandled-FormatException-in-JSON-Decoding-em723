```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Use the data
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON error appropriately.
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle other JSON decoding errors.
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately (e.g., display an error message to the user)
  }
}
```