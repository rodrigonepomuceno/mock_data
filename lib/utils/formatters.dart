import 'package:intl/intl.dart';

class Formatters {
  String formatDate(String dateTime) {
    DateTime _dateTime = DateTime.parse(dateTime);
    return DateFormat("dd/MM/yyyy").format(_dateTime);
  }

  String formatMoney(num value) {
    try {
      final fmf = new NumberFormat.currency(
          locale: 'pt-BR',
          symbol: 'R\$',
          decimalDigits: 2,
          name: 'formatMoney');
      return fmf.format(value).toString();
    } catch (e) {
      final fmf = new NumberFormat.currency(
        locale: 'pt-BR',
        symbol: 'R\$',
        decimalDigits: 2,
        name: 'formatMoney',
      );
      return fmf.format(value).toString();
    }
  }
}
