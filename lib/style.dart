import 'package:flutter/material.dart';

// Text Field Design
InputDecoration AppInputDecroation(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

/// Button style
ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(17),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))));
}
