import 'package:intl/intl.dart';

final numberFormat = NumberFormat('###,###');

String serialFormat(String number) {
  if (number.length < 3) return number;
  String frontNumber = number.substring(0, 3);
  String backNumber = "";
  int i = 0;
  while (i < number.length - 3) {
    backNumber += "*";
    i++;
  }
  String newNumber = frontNumber + backNumber;
  return newNumber;
}
