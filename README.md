Here's a README file for your `getx_super_snackbar` package:

---

# GetxSuperSnackbar

`GetxSuperSnackbar` is a Flutter package that extends the functionality of GetX's `Snackbar` to provide more flexible and customizable snackbar notifications. Whether you need to show success, error, warning, info, or custom messages, `GetxSuperSnackbar` makes it easy to display beautiful and responsive snackbars in your Flutter applications.

## Features

- **Success Snackbar:** Display success messages with a green background.
- **Error Snackbar:** Display error messages with a red background.
- **Warning Snackbar:** Display warning messages with an orange background.
- **Info Snackbar:** Display informational messages with a blue background.
- **Custom Snackbar:** Create fully customized snackbars with your choice of colors, icons, and more.
- **Flexible Positioning:** Choose where your snackbar appears on the screen with the `snackPosition` parameter.
- **Customizable Appearance:** Adjust the max width, border radius, margin, blur effect, and more.
- **Dismissible:** Control whether the snackbar can be dismissed by the user.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  getx_super_snackbar: ^1.0.0
```

Then, run:

```bash
flutter pub get
```

## Usage

### Showing a Success Snackbar

```dart
GetxSuperSnackbar.showSuccess(
  'This is a success message',
  title: 'Success',
);
```

### Showing an Error Snackbar

```dart
GetxSuperSnackbar.showError(
  'This is an error message',
  title: 'Error',
);
```

### Showing a Warning Snackbar

```dart
GetxSuperSnackbar.showWarning(
  'This is a warning message',
  title: 'Warning',
);
```

### Showing an Info Snackbar

```dart
GetxSuperSnackbar.showInfo(
  'This is an informational message',
  title: 'Info',
);
```

### Showing a Custom Snackbar

```dart
GetxSuperSnackbar.showCustom(
  'This is a custom message',
  title: 'Custom',
  backgroundColor: Colors.purple,
  icon: Icons.thumb_up,
);
```

### Customization Options

All snackbar methods accept additional customization options:

- `snackPosition`: Position of the snackbar (`SnackPosition.TOP` or `SnackPosition.BOTTOM`).
- `maxWidth`: Maximum width of the snackbar.
- `borderRadius`: Corner radius of the snackbar.
- `margin`: Margin around the snackbar.
- `barBlur`: Blur effect behind the snackbar.
- `isDismissible`: Whether the snackbar can be dismissed by the user.
- `dismissDirection`: Direction in which the snackbar can be dismissed.

### Example

```dart
GetxSuperSnackbar.showSuccess(
  'Data saved successfully!',
  title: 'Success',
  snackPosition: SnackPosition.BOTTOM,
  borderRadius: 16,
  margin: EdgeInsets.all(16),
);
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any features, bugs, or improvements.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

This README should give users a clear understanding of how to use your `getx_super_snackbar` package and its features.
