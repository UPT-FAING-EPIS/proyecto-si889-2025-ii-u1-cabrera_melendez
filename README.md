[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/0SqZJ8VW)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=20079443)
# proyecto-formatos-01

## Plataforma Móvil de Exámenes de Simulacro de Exámenes de Certificación de Inglés “Simulapp”


Integrantes:

***Cabrera Catari, Camila Fernanda           (2021069824)***

***Melendez Huarachi, Gabriel Fari            (2021070311)***

### Descripción
Simulapp es una aplicación desarrollada en Flutter que permite simular desarrollo de examenes de certificación en inglés.  
El proyecto está diseñado para funcionar en Android, aprovechando la portabilidad de Flutter.

### Características principales
- Registro y autenticación de usuarios usando Firebase.
- Integración con Google Maps para funcionalidades de geolocalización.
- Soporte multiplataforma: Android.
- Gestión de datos en tiempo real con Firestore.


### Tecnologías utilizadas
- Flutter (v3.35.1)  
- Dart (v3.9.0)  
- Firebase: Authentication, Firestore, etc.  
- Google Maps Flutter  
- GitHub Actions para CI/CD  

### Instalación y ejecución

**Pre-requisitos:**
- Flutter instalado: [Flutter Docs](https://flutter.dev/docs/get-started/install)
- Android Studio o VS Code
- Java JDK 17 (para compilación Android)

**Pasos:**
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/UPT-FAING-EPIS/proyecto-si889-2025-ii-u1-cabrera_melendez.git

2. Instalar dependencias
   ```bash
   flutter pub get

3. Ejecutar la app en Android
   ```bash
   flutter run

4. Ejecutar la app en Web
   ```bash
   flutter build web

### Estructura del proyecto

```
simulapp/
├─ android/           # Proyecto Android
├─ ios/               # Proyecto iOS (si aplica)
├─ lib/               # Código fuente Flutter
│  ├─ main.dart       # Punto de entrada
│  └─ services/       # Servicios como Google Auth
├─ pubspec.yaml       # Configuración de dependencias
└─ README.md          # Documentación del proyecto

```
### Roadmap
- Integración con notificaciones push
- Mejoras en la interfaz web
- Agregar más tipos de preguntas


### Video

📎 **Video Explicativo del Proyecto (YouTube)**  
🔗 https://youtu.be/jvmMHFOL8fY  

## Documentación

- Documentos en md [md/](md/)
- Documentos en PDF [pdf/](pdf/)
