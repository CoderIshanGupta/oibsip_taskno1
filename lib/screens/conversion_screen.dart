import 'package:flutter/material.dart';
import '../data/units_data.dart';
import '../models/unit.dart';
import '../widgets/unit_dropdown.dart';
import '../currency_converter.dart';

class ConversionScreen extends StatefulWidget {
  final String category;

  ConversionScreen({required this.category});

  @override
  _ConversionScreenState createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  late List<Unit> units;
  Unit? fromUnit;
  Unit? toUnit;
  double inputValue = 0;
  String result = '';

  @override
  void initState() {
    super.initState();
    units = unitCategories[widget.category] ?? [];
    if (units.isNotEmpty) {
      fromUnit = units[0];
      toUnit = units.length > 1 ? units[1] : units[0];
    }
  }

  void convert() async {
    if (fromUnit != null && toUnit != null) {
      if (widget.category == 'Clothing Size') {
        setState(() {
          result = toUnit!.name;
        });
      } else if (widget.category == 'Currency') {
        try {
          // Fetch live conversion rate for Currency
          double conversionRate = await CurrencyConverter.convertCurrency(
            inputValue, // amount
            fromUnit!.symbol, // from currency code (e.g., "USD")
            toUnit!.symbol, // to currency code (e.g., "INR")
          );

          // Display the result
          setState(() {
            result = '${toUnit!.symbol} ${conversionRate.toStringAsFixed(2)}';
          });
        } catch (e) {
          setState(() {
            result = "Error: Unable to fetch conversion rate";
          });
        }
      } else {
        // For other unit categories, standard conversion logic
        double output =
            inputValue * fromUnit!.conversionFactor / toUnit!.conversionFactor;
        setState(() {
          result = output.toStringAsFixed(4);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth > 600 ? 32.0 : 16.0;
    double fontSize = screenWidth > 600 ? 20.0 : 16.0;
    double buttonFontSize = screenWidth > 600 ? 20.0 : 16.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.category} Converter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth > 600 ? 26.0 : 22.0, // Adjust title font size
            color: Colors.white, // White text color
          ),
        ),
        backgroundColor: Colors.transparent, // Transparent background for the gradient effect
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade800, // Darker blue at the top
                Colors.blue.shade500, // Lighter blue at the bottom
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.category != 'Clothing Size') ...[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter value',
                  labelStyle: TextStyle(fontSize: fontSize),
                ),
                style: TextStyle(fontSize: fontSize),
                onChanged: (val) {
                  inputValue = double.tryParse(val) ?? 0;
                },
              ),
              SizedBox(height: 16),
            ],
            UnitDropdown(
              label: 'From',
              value:
                  fromUnit ?? Unit(name: 'N/A', symbol: 'N/A', conversionFactor: 0),
              onChanged: (val) => setState(() => fromUnit = val),
              units: units,
            ),
            SizedBox(height: 16),
            UnitDropdown(
              label: 'To',
              value:
                  toUnit ?? Unit(name: 'N/A', symbol: 'N/A', conversionFactor: 0),
              onChanged: (val) => setState(() => toUnit = val),
              units: units,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: screenWidth > 600 ? 200 : double.infinity,
              child: ElevatedButton(
                onPressed: convert,
                child: Text(
                  'Convert',
                  style: TextStyle(fontSize: buttonFontSize),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: screenWidth > 600 ? 24.0 : 18.0),
            ),
          ],
        ),
      ),
    );
  }
}