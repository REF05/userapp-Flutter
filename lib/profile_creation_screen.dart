import 'package:flutter/material.dart';
import 'profile_screen.dart';

class ProfileCreationScreen extends StatefulWidget {
  @override
  _ProfileCreationScreenState createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _occupationController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _occupationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange, // Fondo naranja
      appBar: AppBar(
        title: Text('Crear Perfil'),
        backgroundColor: Colors.purple, // Color del AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Centrar contenido verticalmente
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(labelText: 'Edad'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _occupationController,
                decoration: InputDecoration(labelText: 'Ocupación'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, // Botón morado
                  foregroundColor: Colors.white, // Color del texto del botón
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        name: _nameController.text,
                        age: _ageController.text,
                        occupation: _occupationController.text,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Guardar y Ver Perfil',
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
