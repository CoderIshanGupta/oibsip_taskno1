import 'dart:convert';
import 'package:http/http.dart' as http;

class CurrencyConverter {
  static Future<double> convertCurrency(
      double amount, String fromCurrency, String toCurrency) async {
    final apiUrl = "https://api.exchangerate-api.com/v4/latest/$fromCurrency";

    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final rate = data['rates'][toCurrency];

      if (rate == null) {
        throw Exception('Rate not found for $toCurrency');
      }

      return amount * rate;
    } else {
      throw Exception('Failed to fetch exchange rate');
    }
  }
}