import 'package:flutter/material.dart';

// Definición de colores de la aplicación (se mantiene aquí por simplicidad al ser un dato estático de la app)
class AppColors {
  static const Color color1 = Color(0xFF377899); // Color 1
  static const Color color2 = Color(0xFF1F4355); // Color 2
  static const Color color3 = Color(0xFF52B6E6); // Color 3 (Celeste)
  static const Color white = Colors.white; // Color blanco
}

// Clase para representar un examen
class Examen {
  final String nombre;
  final String descripcion;
  final String imagen;
  final DateTime
      fecha; // Cambiado a DateTime para mejor integración con el calendario
  final String examenId;

  Examen({
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.fecha,
    required this.examenId,
  });
}

// Datos estáticos de exámenes
final List<Examen> allCambridgeExamenes = [
  Examen(
    nombre: 'C1 Advanced (CAE)',
    descripcion:
        'Este examen está diseñado para estudiantes que pueden comunicarse con confianza en inglés en diversas situaciones académicas y profesionales. Demuestra que tienes un nivel de inglés suficiente para estudiar o trabajar en un entorno de habla inglesa.',
    imagen: 'assets/images/CAE.jpg',
    fecha: DateTime(2025, 9, 15), examenId: 'CAE', // 15 de julio de 2025
  ),
  Examen(
    nombre: 'C2 Proficiency (FCE)',
    descripcion:
        'Es el examen de inglés de más alto nivel, ideal para quienes han alcanzado un dominio excepcional del idioma. Certifica que eres capaz de comunicarte con la fluidez y complejidad de un hablante nativo, incluso en los contextos más exigentes.',
    imagen: 'assets/images/CPE.jpg',
    fecha: DateTime(2025, 9, 20), examenId: 'FCE', // 20 de julio de 2025
  ),
  Examen(
    nombre: 'Pre A1 Starters (Cristo Rey)',
    descripcion:
        'Primer paso en el aprendizaje de inglés para niños, evaluando habilidades básicas en un formato divertido.',
    imagen: 'assets/images/Starters.jpg',
    fecha: DateTime(2025, 12, 13),
    examenId: 'Starters',
  ),
  Examen(
    nombre: 'A1 Movers (Cristo Rey)',
    descripcion:
        'Segundo nivel para niños, diseñado para motivarlos a seguir aprendiendo y demostrar progreso en inglés.',
    imagen: 'assets/images/Movers.jpg',
    fecha: DateTime(2025, 12, 13),
    examenId: 'Movers',
  ),
  Examen(
    nombre: 'A2 Flyers (Cristo Rey)',
    descripcion:
        'Tercer nivel para niños, certifica que pueden manejar inglés cotidiano básico, tanto escrito como hablado (Nivel A2).',
    imagen: 'assets/images/Flyers.jpg',
    fecha: DateTime(2025, 12, 13),
    examenId: 'Flyers',
  ),
  Examen(
    nombre: 'A2 Key for Schools (KET) (Cristo Rey)',
    descripcion:
        'Certifica un nivel básico (A2) de inglés, demostrando la capacidad de usar el idioma en situaciones simples.',
    imagen: 'assets/images/KET_Schools.jpg',
    fecha: DateTime(2025, 12, 13),
    examenId: 'KET_Schools',
  ),
  Examen(
    nombre: 'B1 Preliminary for Schools (PET) (Cristo Rey)',
    descripcion:
        'Certifica un nivel intermedio (B1), demostrando habilidades prácticas del idioma para el uso diario.',
    imagen: 'assets/images/PET_Schools.jpg',
    fecha: DateTime(2025, 12, 13),
    examenId: 'PET_Schools',
  ),
  Examen(
    nombre: 'B2 First for Schools (FCE) (Cristo Rey)',
    descripcion:
        'Certifica un nivel intermedio-alto (B2), demostrando la habilidad de vivir y trabajar independientemente en un país de habla inglesa.',
    imagen: 'assets/images/FCE_Schools.jpg',
    fecha: DateTime(2025, 12, 13),
    examenId: 'FCE_Schools',
  ),
];

final List<Examen> allMichiganExamenes = [
  Examen(
    nombre: 'MET',
    descripcion:
        'Este examen evalúa tu competencia general en inglés en un nivel intermedio-avanzado (B2 del MCER). Es ideal para quienes necesitan certificar su habilidad para comunicarse eficazmente en inglés en situaciones cotidianas y académicas.',
    imagen: 'assets/images/MET.jpg',
    fecha: DateTime(2025, 9, 10), examenId: 'MET', // 10 de julio de 2025
  ),
];

final List<Examen> allToeflExamenes = [
  Examen(
    nombre: 'TOEFL ITP',
    descripcion:
        'Es un examen de inglés basado en papel que se utiliza principalmente para evaluar el progreso del aprendizaje del idioma dentro de instituciones educativas. A diferencia del iBT, no es aceptado generalmente para propósitos de admisión universitaria.',
    imagen: 'assets/images/ITP.jpg',
    fecha: DateTime(2025, 9, 18), examenId: 'TOEFL', // 18 de julio de 2025
  ),
];
