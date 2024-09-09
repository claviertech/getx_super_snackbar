library getx_super_snackbar;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSuperSnackbar {
  // Show a success Snackbar

  static void showSuccess(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onTap,
    TextButton? mainButton,
    // New parameters
    SnackPosition snackPosition = SnackPosition.TOP,
    double? maxWidth,
    double? borderRadius,
    EdgeInsets? margin,
    double? barBlur,
    bool isDismissible = true,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    _showSnackbar(
      title ?? 'Success',
      message,
      backgroundColor: Colors.green.withOpacity(0.5),
      colorText: Colors.white,
      icon: Icons.check_circle,
      duration: duration,
      onTap: onTap,
      mainButton: mainButton,
      snackPosition: snackPosition,
      maxWidth: maxWidth,
      borderRadius: borderRadius,
      margin: margin,
      barBlur: barBlur,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
    );
  }

  // Show an error Snackbar
  static void showError(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onTap,
    TextButton? mainButton,
    // New parameters
    SnackPosition snackPosition = SnackPosition.TOP,
    double? maxWidth,
    double? borderRadius,
    EdgeInsets? margin,
    double? barBlur,
    bool isDismissible = true,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    _showSnackbar(
      title ?? 'Error',
      message,
      backgroundColor: Colors.redAccent.withOpacity(0.5),
      colorText: Colors.white,
      icon: Icons.error,
      duration: duration,
      onTap: onTap,
      mainButton: mainButton,
      snackPosition: snackPosition,
      maxWidth: maxWidth,
      borderRadius: borderRadius,
      margin: margin,
      barBlur: barBlur,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
    );
  }

  // Show a warning Snackbar
  static void showWarning(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onTap,
    TextButton? mainButton,
    // New parameters
    SnackPosition snackPosition = SnackPosition.TOP,
    double? maxWidth,
    double? borderRadius,
    EdgeInsets? margin,
    double? barBlur,
    bool isDismissible = true,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    _showSnackbar(
      title ?? 'Warning',
      message,
      backgroundColor: Colors.orange.withOpacity(0.5),
      colorText: Colors.white,
      icon: Icons.warning,
      duration: duration,
      onTap: onTap,
      mainButton: mainButton,
      snackPosition: snackPosition,
      maxWidth: maxWidth,
      borderRadius: borderRadius,
      margin: margin,
      barBlur: barBlur,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
    );
  }

  // Show an info Snackbar
  static void showInfo(
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onTap,
    TextButton? mainButton,
    // New parameters
    SnackPosition snackPosition = SnackPosition.TOP,
    double? maxWidth,
    double? borderRadius,
    EdgeInsets? margin,
    double? barBlur,
    bool isDismissible = true,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    _showSnackbar(
      title ?? 'Info',
      message,
      backgroundColor: Colors.blue.withOpacity(0.5),
      colorText: Colors.white,
      icon: Icons.info,
      duration: duration,
      onTap: onTap,
      mainButton: mainButton,
      snackPosition: snackPosition,
      maxWidth: maxWidth,
      borderRadius: borderRadius,
      margin: margin,
      barBlur: barBlur,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
    );
  }

  // Internal method to handle the actual Snackbar display
  static void _showSnackbar(
    String title,
    String message, {
    required Color backgroundColor,
    required Color colorText,
    required IconData icon,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onTap,
    SnackPosition snackPosition = SnackPosition.TOP,
    TextButton? mainButton,
    // New fields
    double? maxWidth,
    double? borderRadius,
    EdgeInsets? margin,
    double? barBlur,
    bool isDismissible = true,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    Get.snackbar(
      '',
      '',
      snackPosition: snackPosition,
      backgroundColor: backgroundColor,
      colorText: colorText,
      duration: duration,
      shouldIconPulse: false,
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 4,
          spreadRadius: 2,
          offset: const Offset(0, 2),
        ),
      ],
      maxWidth: maxWidth ?? 400,
      barBlur: barBlur ?? 10,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      borderRadius: borderRadius ?? 12,
      titleText: Text(
        title,
        style: TextStyle(
          color: colorText,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          color: colorText,
          fontSize: 14,
        ),
      ),
      icon: Icon(
        icon,
        color: colorText,
        size: 24,
      ),
      onTap: onTap != null ? (_) => onTap() : null,
      mainButton: mainButton,
    );
  }

  // New method for custom Snackbar
  static void showCustom(
    String message, {
    String? title,
    Color backgroundColor = Colors.grey,
    Color colorText = Colors.white,
    IconData icon = Icons.info,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onTap,
    SnackPosition snackPosition = SnackPosition.TOP,
    TextButton? mainButton,
    double? maxWidth,
    double? borderRadius,
    EdgeInsets? margin,
    double? barBlur,
    bool isDismissible = true,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    _showSnackbar(
      title ?? 'Custom',
      message,
      backgroundColor: backgroundColor,
      colorText: colorText,
      icon: icon,
      duration: duration,
      onTap: onTap,
      mainButton: mainButton,
      snackPosition: snackPosition,
      maxWidth: maxWidth,
      borderRadius: borderRadius,
      margin: margin,
      barBlur: barBlur,
      isDismissible: isDismissible,
      dismissDirection: dismissDirection,
    );
  }
}
