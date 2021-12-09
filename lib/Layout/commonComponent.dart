import 'package:flutter/material.dart';

Widget keyboardDown(
  {Widget child, BuildContext context}
) {
  return 
    GestureDetector
      (
        onTap: () => FocusScope.of(context).unfocus()
        ,
        child: child
    );
}