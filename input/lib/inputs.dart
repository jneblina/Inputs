import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  final String label;
  final String helper;
  final IconData icono;
  final Color iconColor;
  final int longitud;

  const Inputs(
      {required this.label,
      required this.helper,
      required this.icono,
      required this.iconColor,
      required this.longitud,
      super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        cursorColor: Colors.green[800],
        keyboardType: TextInputType.multiline,
        maxLength: widget.longitud,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide()),
            labelText: widget.label,
            helperText: widget.helper,
            icon: Icon(
              widget.icono,
              size: 40,
              color: widget.iconColor,
            )),
      ),
    );
  }
}
