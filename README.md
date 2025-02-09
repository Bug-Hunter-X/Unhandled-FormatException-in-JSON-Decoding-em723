# Unhandled FormatException in JSON Decoding

This repository demonstrates an uncommon error in Dart: an unhandled `FormatException` during JSON decoding. The `fetchData` function attempts to decode a JSON response from an API. However, it lacks proper error handling for invalid JSON.  If the API returns an unexpected response, the app crashes.

The `bug.dart` file contains the buggy code. The `bugSolution.dart` file provides a corrected version with comprehensive error handling.  This illustrates the importance of robust error handling when interacting with external APIs.