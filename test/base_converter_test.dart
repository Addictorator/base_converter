import 'package:flutter_test/flutter_test.dart';
import 'package:base_converter/base_converter.dart';

void main() {
  test('adds one to input values', () {
    print(BaseConverter.itoa(180, 93));
    print(BaseConverter.atoi("UQpwIuh", 61));
  });
}
