🌐 Unit Converter App
A sleek and modern Unit Converter built with Flutter, supporting a wide range of unit conversions such as Length, Weight, Temperature, Speed, Time, Area, Volume, Pressure, Power, Energy, Data, Force, Angle, and real-time Currency conversion via the live_currency_rate dependency.

🚀 Features
🔄 Convert between 15+ types of units

🌍 Real-time currency conversion using live_currency_rate

📱 Responsive UI across devices

🎨 Built-in support for both light and dark themes (adapts to system setting)

🧩 Modular and clean code structure

📂 Project Structure
pgsql
Copy
Edit
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
🧪 Supported Unit Categories
Length

Weight

Temperature

Area

Volume

Speed

Time

Currency

Pressure

Power

Energy

Data

Force

Angle

🛠️ Built With
Flutter & Dart

live_currency_rate for currency conversion

Material Design components

▶️ Getting Started
Clone the repository

bash
Copy
Edit
git clone https://github.com/yourusername/unit_converter.git
cd unit_converter
Install dependencies

bash
Copy
Edit
flutter pub get
Run the app

bash
Copy
Edit
flutter run
📦 Dependencies
flutter

http

live_currency_rate

🎨 Theme
The app automatically adapts to your device's system theme (light or dark). There is no manual toggle in-app.

📜 License
This project is licensed under the MIT License - see the LICENSE file for details.

🤝 Contributions
Pull requests and feedback are welcome! Feel free to fork and improve this project.

