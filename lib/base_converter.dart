library flutter_package;

/// A Calculator.
class BaseConverter {

  static String itoa2(int value, int base) {
    assert(
    base >= 1 && base <= 93,
    'Base must be between 1 and 93');
    String builtString = "";
    if (base==1) {
      for(int i = 0; i < value; i++) {builtString += '0';}
      return builtString;
    }
    else {while (true){
      int quotient = (value/base).floor(),
          remainder = value - (base * quotient);
      builtString = "${_refTable[remainder]}$builtString";
      if (value == remainder) {
        return builtString;
      }
      value = quotient;
    }
    }}

  static int atoi(String string, int base) {
    assert(
    base >= 1 && base <= 93,
    'Base must be between 1 and 93');
    int builtInt = 0, power = 0;
    for(int i = string.length - 1; i >= 0; i--) {
      builtInt += _refTable.indexOf(string[i]) * _pow(base, power);
      power++;
    }
    return builtInt;
  }

  static int compare(String string1, String string2, int base) => atoi(string1, base) - atoi(string2, base);

  static String atoa(String string, int fromBase, int toBase) => itoa(atoi(string, fromBase),toBase);

  static int _pow(int x, int y) {
    int power = 1;
    for (int i = 0; i < y; i++) {
      power *= x;
    }
    return power;
  }

  static const int numeric = 10, capNumeric = 36, alphaNumeric = 62, allPrintables = 93;

  /// 0-9 [0-9], 10-35 [A-Z], 36-61 [a-z] , 62-92 symbols
  /// Thus, base is (last desired symbol index + 1). Example, for numerics, as 9 is the last digit, add 1 to get base10. Numerics + capitals = base36. Alphanumeric = base62. All_Printable_Chars = base93.
  static const List<String> _refTable = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
    '!', '?', '@', '#', r'$', '%', '^', '&', '*', '(', ')', '_', '-', '+', '{', '}', '|', '[', ']', '.', '<', '>', '~', '`', ',', '/', r'\', '"', "'", ":", ";"];
}
