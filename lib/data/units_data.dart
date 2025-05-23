import '../models/unit.dart';

final Map<String, List<Unit>> unitCategories = {
  'Length': [
    Unit(name: 'Meter', symbol: 'm', conversionFactor: 1.0),
    Unit(name: 'Kilometer', symbol: 'km', conversionFactor: 1000.0),
    Unit(name: 'Centimeter', symbol: 'cm', conversionFactor: 0.01),
    Unit(name: 'Millimeter', symbol: 'mm', conversionFactor: 0.001),
    Unit(name: 'Mile', symbol: 'mi', conversionFactor: 1609.34),
    Unit(name: 'Yard', symbol: 'yd', conversionFactor: 0.9144),
    Unit(name: 'Foot', symbol: 'ft', conversionFactor: 0.3048),
    Unit(name: 'Inch', symbol: 'in', conversionFactor: 0.0254),
    Unit(name: 'Nautical Mile', symbol: 'NM', conversionFactor: 1852.0),
  ],
  'Weight': [
    Unit(name: 'Kilogram', symbol: 'kg', conversionFactor: 1.0),
    Unit(name: 'Gram', symbol: 'g', conversionFactor: 0.001),
    Unit(name: 'Milligram', symbol: 'mg', conversionFactor: 0.000001),
    Unit(name: 'Pound', symbol: 'lb', conversionFactor: 0.453592),
    Unit(name: 'Ounce', symbol: 'oz', conversionFactor: 0.0283495),
    Unit(name: 'Ton', symbol: 'ton', conversionFactor: 907.18474),
    Unit(name: 'Stone', symbol: 'st', conversionFactor: 6.35029),
    Unit(name: 'Carat', symbol: 'ct', conversionFactor: 0.0002),
  ],
  'Temperature': [
    Unit(name: 'Celsius', symbol: '°C', conversionFactor: 1.0),
    Unit(name: 'Fahrenheit', symbol: '°F', conversionFactor: 1.8),
    Unit(name: 'Kelvin', symbol: 'K', conversionFactor: 1.0),
  ],
  'Area': [
    Unit(name: 'Square Meter', symbol: 'm²', conversionFactor: 1.0),
    Unit(name: 'Square Kilometer', symbol: 'km²', conversionFactor: 1000000.0),
    Unit(name: 'Hectare', symbol: 'ha', conversionFactor: 10000.0),
    Unit(name: 'Acre', symbol: 'ac', conversionFactor: 4046.85642),
    Unit(name: 'Square Mile', symbol: 'mi²', conversionFactor: 2589988.110336),
    Unit(name: 'Square Yard', symbol: 'yd²', conversionFactor: 0.836127),
    Unit(name: 'Square Foot', symbol: 'ft²', conversionFactor: 0.092903),
    Unit(name: 'Square Inch', symbol: 'in²', conversionFactor: 0.00064516),
  ],
  'Volume': [
    Unit(name: 'Cubic Meter', symbol: 'm³', conversionFactor: 1.0),
    Unit(name: 'Liter', symbol: 'L', conversionFactor: 0.001),
    Unit(name: 'Milliliter', symbol: 'mL', conversionFactor: 0.000001),
    Unit(name: 'Cubic Centimeter', symbol: 'cm³', conversionFactor: 0.000001),
    Unit(name: 'Cubic Inch', symbol: 'in³', conversionFactor: 0.000016387064),
    Unit(name: 'Cubic Foot', symbol: 'ft³', conversionFactor: 0.0283168),
    Unit(name: 'Gallon', symbol: 'gal', conversionFactor: 0.00378541),
    Unit(name: 'Quart', symbol: 'qt', conversionFactor: 0.000946353),
    Unit(name: 'Pint', symbol: 'pt', conversionFactor: 0.000473176),
  ],
  'Speed': [
    Unit(name: 'Meter per second', symbol: 'm/s', conversionFactor: 1.0),
    Unit(
      name: 'Kilometer per hour',
      symbol: 'km/h',
      conversionFactor: 0.277778,
    ),
    Unit(name: 'Miles per hour', symbol: 'mph', conversionFactor: 0.44704),
    Unit(name: 'Feet per second', symbol: 'ft/s', conversionFactor: 0.3048),
    Unit(name: 'Knots', symbol: 'kn', conversionFactor: 0.514444),
  ],
  'Time': [
    Unit(name: 'Second', symbol: 's', conversionFactor: 1.0),
    Unit(name: 'Minute', symbol: 'min', conversionFactor: 60.0),
    Unit(name: 'Hour', symbol: 'h', conversionFactor: 3600.0),
    Unit(name: 'Day', symbol: 'd', conversionFactor: 86400.0),
    Unit(name: 'Week', symbol: 'wk', conversionFactor: 604800.0),
    Unit(name: 'Month', symbol: 'mo', conversionFactor: 2592000.0),
    Unit(name: 'Year', symbol: 'yr', conversionFactor: 31536000.0),
  ],
  'Pressure': [
    Unit(name: 'Pascal', symbol: 'Pa', conversionFactor: 1.0),
    Unit(name: 'Kilopascal', symbol: 'kPa', conversionFactor: 1000.0),
    Unit(name: 'Bar', symbol: 'bar', conversionFactor: 100000.0),
    Unit(name: 'Atmosphere', symbol: 'atm', conversionFactor: 101325.0),
    Unit(name: 'Torr', symbol: 'Torr', conversionFactor: 133.322),
    Unit(
      name: 'Pound per square inch',
      symbol: 'psi',
      conversionFactor: 6894.76,
    ),
  ],
  'Power': [
    Unit(name: 'Watt', symbol: 'W', conversionFactor: 1.0),
    Unit(name: 'Kilowatt', symbol: 'kW', conversionFactor: 1000.0),
    Unit(name: 'Horsepower', symbol: 'hp', conversionFactor: 745.7),
    Unit(name: 'Megawatt', symbol: 'MW', conversionFactor: 1000000.0),
  ],
  'Energy': [
    Unit(name: 'Joule', symbol: 'J', conversionFactor: 1.0),
    Unit(name: 'Kilojoule', symbol: 'kJ', conversionFactor: 1000.0),
    Unit(name: 'Calorie', symbol: 'cal', conversionFactor: 4.184),
    Unit(name: 'Kilocalorie', symbol: 'kcal', conversionFactor: 4184.0),
    Unit(name: 'Electronvolt', symbol: 'eV', conversionFactor: 1.60218e-19),
  ],
  'Data': [
    Unit(name: 'Byte', symbol: 'B', conversionFactor: 1.0),
    Unit(name: 'Kilobyte', symbol: 'KB', conversionFactor: 1024.0),
    Unit(name: 'Megabyte', symbol: 'MB', conversionFactor: 1048576.0),
    Unit(name: 'Gigabyte', symbol: 'GB', conversionFactor: 1073741824.0),
    Unit(name: 'Terabyte', symbol: 'TB', conversionFactor: 1099511627776.0),
  ],
  'Force': [
    Unit(name: 'Newton', symbol: 'N', conversionFactor: 1.0),
    Unit(name: 'Kilonewton', symbol: 'kN', conversionFactor: 1000.0),
    Unit(name: 'Pound-force', symbol: 'lbf', conversionFactor: 4.44822),
    Unit(name: 'Dyne', symbol: 'dyn', conversionFactor: 1e-5),
  ],
  'Angle': [
    Unit(name: 'Radian', symbol: 'rad', conversionFactor: 1.0),
    Unit(name: 'Degree', symbol: '°', conversionFactor: 0.0174533),
    Unit(name: 'Gradian', symbol: 'gon', conversionFactor: 0.015708),
  ],
  'Currency': [
    Unit(name: 'US Dollar', symbol: 'USD', conversionFactor: 1.0),
    Unit(name: 'Indian Rupee', symbol: 'INR', conversionFactor: 1.0),
    Unit(name: 'Euro', symbol: 'EUR', conversionFactor: 1.0),
    Unit(name: 'British Pound', symbol: 'GBP', conversionFactor: 1.0),
    Unit(name: 'Japanese Yen', symbol: 'JPY', conversionFactor: 1.0),
    Unit(name: 'Canadian Dollar', symbol: 'CAD', conversionFactor: 1.0),
    Unit(name: 'Australian Dollar', symbol: 'AUD', conversionFactor: 1.0),
  ],
};
