import 'package:flutter_test/flutter_test.dart';
import 'package:base_converter/base_converter.dart';

void main() {
  test('Converts an int to string of given base and vice versa', () {
    print(BaseConverter.itoa(1568290107882, 62));
    print(BaseConverter.atoi("RbrFT22", 62));
  });
}
