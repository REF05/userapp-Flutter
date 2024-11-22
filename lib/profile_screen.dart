import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  ProfileScreen({
    required this.name,
    required this.age,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange, // Fondo naranja
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Colors.purple, // Color del AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Centrar contenido verticalmente
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Nombre: $name', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text('Edad: $age', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text('Ocupación: $occupation', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, // Botón morado
                  foregroundColor: Colors.white, // Color del texto del botón
                ),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  'Regresar a Inicio',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
