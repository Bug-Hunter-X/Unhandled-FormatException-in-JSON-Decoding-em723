```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // ignore: avoid_dynamic_calls
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the error here
    print('Error: $e');
  }
}
```