import 'package:flutter/material.dart';
import 'profile_creation_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange, // Fondo naranja
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.purple, // Color del AppBar
      ),
      body: Center( // Centrar contenido
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple, // Botón morado
            foregroundColor: Colors.white, // Color del texto del botón
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileCreationScreen()),
            );
          },
          child: Text(
            'Crear Perfil',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
