import 'package:flutter/material.dart';
import 'package:input/input_password.dart';
import 'inputs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Inputs(
                label: 'Nombre usuario',
                helper: 'En este campo escribe tu nombre',
                icono: Icons.people_rounded,
                iconColor: Colors.blue,
                longitud: 30,
              ),
              Inputs(
                label: 'Telefono',
                helper: 'En este campo escribe tu telefono',
                icono: Icons.phone_rounded,
                iconColor: Colors.red,
                longitud: 10,
              ),
              Inputs(
                label: 'Direccion',
                helper: 'En este campo escribe tu direccion',
                icono: Icons.home_rounded,
                iconColor: Colors.amber,
                longitud: 30,
              ),
              Inputs(
                label: 'Correo',
                helper: 'En este campo escribe tu correo',
                icono: Icons.mail_rounded,
                iconColor: Colors.purple,
                longitud: 30,
              ),
              InputPassword(
                label: 'Contraseña',
                helper: 'En este campo escribe tu contraseña',
                icono: Icons.lock_rounded,
                iconColor: Colors.black,
                longitud: 20,
              ),
            ],
          ),
        ));
  }
}
