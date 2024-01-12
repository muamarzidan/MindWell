import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class FormAuthController extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormAuthController({
    super.key,
    this.controller,
    this.fieldKey,
    this.isPasswordField,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
  });

  @override
  State<FormAuthController> createState() => _FormAuthControllerState();
}

class _FormAuthControllerState extends State<FormAuthController> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Ganti warna background
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        controller: widget.controller,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obscureText : false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          filled: true,
          fillColor: Colors.white, // Ganti warna background
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: AppColors.descriptionColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          suffixIcon: widget.isPasswordField == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: _obscureText == false ? Colors.grey : Colors.black,
                  ),
                )
              : null,
        ),
      ),
    );
  }



  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.grey,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: TextFormField(
  //       style: const TextStyle(
  //         color: AppColors.primaryColor,
  //         fontSize: 18,
  //       ),
  //       controller: widget.controller,
  //       key: widget.fieldKey,
  //       obscureText: widget.isPasswordField == true ? _obscureText : false,
  //       onSaved: widget.onSaved,
  //       validator: widget.validator,
  //       onFieldSubmitted: widget.onFieldSubmitted,
  //       decoration: InputDecoration(
  //         border: InputBorder.none,
  //         filled: true,
  //         hintText: widget.hintText,
  //         hintStyle: TextStyle(
  //           color: Colors.grey[400],
  //           fontSize: 18,
  //         ),
  //         suffixIcon: widget.isPasswordField == true
  //             ? GestureDetector(
  //                 onTap: () {
  //                   setState(() {
  //                     _obscureText = !_obscureText;
  //                   });
  //                 },
  //                 child: Icon(
  //                   _obscureText ? Icons.visibility_off : Icons.visibility,
  //                   color:
  //                       _obscureText == false ? Colors.blue : Colors.grey[400],
  //                 ),
  //               )
  //             : null,
  //       ),
  //     ),
  //   );
  // }
}