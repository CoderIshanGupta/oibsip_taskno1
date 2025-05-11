# 🌐 Unit Converter App
A sleek and modern **Unit Converter** built with **Flutter**, supporting a wide range of unit conversions such as Length, Weight, Temperature, Speed, Time, Area, Volume, Pressure, Power, Energy, Data, Force, Angle, and real-time Currency conversion via the `live_currency_rate` dependency.
<br>

## 🚀 Features
- 🔄 Convert between 15+ types of units
- 🌍 Real-time currency conversion using live_currency_rate
- 📱 Responsive UI across devices
- 🎨 Built-in support for both light and dark themes (adapts to system setting)
- 🧩 Modular and clean code structure

## 📂 Project Structure
```
lib/
├── data/
│   └── units_data.dart         # Predefined units and their conversion factors
├── models/
│   └── unit.dart               # Data model for a Unit
├── screens/
│   ├── home_screen.dart       # Category selector screen
│   └── conversion_screen.dart # Handles unit conversion logic and UI
├── themes/
│   └── app_theme.dart         # Theme data (light & dark)
├── widgets/
│   ├── category_tile.dart     # UI tile for unit categories
│   ├── unit_card.dart         # Optional widget card for units
│   └── unit_dropdown.dart     # Dropdown selector for units
├── currency_converter.dart    # Uses `live_currency_rate` to fetch currency rates
└── main.dart                  # App entry point
```

## 🧪 Supported Unit Categories
- Length
- Weight
- Temperature
- Area
- Volume
- Speed
- Time
- Currency
- Pressure
- Power
- Energy
- Data
- Force
- Angle

## 🛠️ Built With
- Flutter & Dart
- live_currency_rate for currency conversion
- Material Design components



## ▶️ Getting Started
### 1. Clone the repository
```
git clone https://github.com/CoderIshanGupta/oibsip_taskno1.git
cd unit_converter
```
### 2. Install dependencies
```
flutter pub get
```
### 3. Run the app
```
flutter run
```

## 📦 Dependencies
- flutter
- http
- live_currency_rate

## 🎨 Theme
The app automatically adapts to your device's system theme (light or dark).

## 🤝 Contributions
Pull requests and feedback are welcome!<br>
Feel free to fork and improve this project.

