
```markdown
# Base Converter App

A simple Flutter application for converting numbers between different bases (binary, octal, decimal, hexadecimal).

## Features

- Convert numbers from any base (2, 8, 10, 16) to binary, octal, decimal, and hexadecimal.
- Clear input and output fields with a reset button.
- Responsive and user-friendly UI.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/rezk1834/base_converter.git
   cd base_converter
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Run the app:**

   ```bash
   flutter run
   ```

## Usage

1. Enter a number in the input field.
2. Select the base of the input number from the dropdown menu.
3. The app will automatically convert the input number to binary, octal, decimal, and hexadecimal bases.
4. Press the "Reset" button to clear the input and output fields.

## Project Structure

- `lib/`: Contains the main source code for the Flutter app.
  - `components/`: Custom widgets used in the app.
    - `block.dart`: Widget to display the converted values.
    - `drawer.dart`: Widget for the app drawer.
  - `main.dart`: Entry point of the app.
  - `home_page.dart`: Contains the main UI of the app.

## Dependencies

- `flutter`: SDK for building the app.
- `cupertino_icons`: Icons for iOS style.

## Contributing

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
