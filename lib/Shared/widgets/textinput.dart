import 'package:flutter/material.dart';

Widget Inputtext(
    {String? hinttext,
    String? labeltext,
    void Function(String)? onChanged,
    TextEditingController? controller}) {
  return SizedBox(
    height: 40,
    child: TextFormField(
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        labelText: labeltext,
        hintText: hinttext,
      ),
    ),
  );
}
