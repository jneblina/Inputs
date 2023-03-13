import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  final String label;
  final IconData icono;
  final Color iconColor;
  final String helper;
  final int longitud;

  const InputPassword({
    Key? key,
    required this.label,
    required this.icono,
    required this.iconColor,
    required this.helper,
    required this.longitud,
  }) : super(key: key);

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool escondido = true;
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        obscureText: escondido,
        cursorColor: Colors.green[800],
        maxLength: widget.longitud,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide()),
          labelText: widget.label,
          helperText: widget.helper,
          icon: Icon(
            widget.icono,
            size: 40,
            color: widget.iconColor,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                escondido = !escondido;
              });
            },
            icon: escondido
                ? const Icon(Icons.visibility_off_rounded, color: Colors.grey)
                : const Icon(Icons.visibility_rounded, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
