import 'package:flutter_test/flutter_test.dart';
import 'package:base_converter/base_converter.dart';

void main() {
  test('Converts an int to string of given base and vice versa', () {
    for (int i =0; i < 10000000; i++)
    BaseConverter.itoa2(1189260752896000000, 62);
  });
}
