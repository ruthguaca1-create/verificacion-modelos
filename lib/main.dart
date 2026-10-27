import 'package:flutter/material.dart';

import 'datos/repositorio_verificaciones.dart';
import 'pantallas/pantalla_inicio.dart';

void main() {
  runApp(const VerificacionModelosApp());
}

class VerificacionModelosApp extends StatefulWidget {
  const VerificacionModelosApp({super.key});

  @override
  State<VerificacionModelosApp> createState() =>
      _VerificacionModelosAppState();
}

class _VerificacionModelosAppState
    extends State<VerificacionModelosApp> {
  late final RepositorioVerificaciones _repositorio;

  @override
  void initState() {
    super.initState();
    _repositorio = RepositorioVerificaciones();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Verificación de modelos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF39A900),
        ),
        useMaterial3: true,
      ),
      home: PantallaInicio(
        repositorio: _repositorio,
      ),
    );
  }
}