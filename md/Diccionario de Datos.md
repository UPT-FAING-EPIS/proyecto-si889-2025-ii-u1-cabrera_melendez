# UNIVERSIDAD PRIVADA DE TACNA

## FACULTAD DE INGENIERÍA

# Escuela Profesional de Ingeniería de Sistemas

# "SimulApp"

## Curso: Patrones de Software

## Docente: Ing. Patrick Cuadros

## Integrantes:

## Cabrera Catari, Camila Fernanda (2021069824)

## Melendez Huarachi, Gabriel Fari (2021070311)

## Tacna – Perú

## 2025


# Sistema SimulApp

# Diccionario de Datos

## Versión {1.0}


## ÍNDICE GENERAL

- 1. Modelo Entidad / relación
   - 1.1. Diseño lógico
   - 1.2. Diseño Físico
- 2. DICCIONARIO DE DATOS
   - 2.1. Tablas
   - 1.1. Procedimientos Almacenados
   - 1.2. Lenguaje de Definición de Datos (DDL)
   - 1.3. Lenguaje de Manipulación de Datos (DML)


```
Diccionario de Datos
```
## 1. Modelo Entidad / relación

### 1.1. Diseño lógico

```
Figura 01: Diagrama Lógico de Entidad Relación
```
```
Fuente : Elaboración propia
```
```
Este diagrama entidad-relación tiene como fin modelar la gestión de cronogramas de proyectos de
desarrollo, detallando actividades, fases metodológicas, responsables, entregables y elementos de
configuración. Permite estructurar la planificación y seguimiento de proyectos mediante la relación
entre cronogramas, fases, actividades y entregables asociados a elementos técnicos, asegurando
trazabilidad y control en cada etapa del proyecto.
```

### 1.2. Diseño Físico

```
Figura 02 : Diagrama Físico de Entidad Relación
```
```
Fuente : Elaboración Propia
Este diagrama entidad-relación representa un sistema integral de gestión de proyectos de software,
que incluye planificación de actividades, asignación de equipos, control de entregables, gestión de
incidencias, validaciones, órdenes y solicitudes de cambio, así como control de configuración de
software. Su propósito es proporcionar una estructura detallada y trazable que permita coordinar
todas las fases de desarrollo, seguimiento y mantenimiento de proyectos, integrando tanto la gestión
técnica como la colaboración entre usuarios.
```

## 2. DICCIONARIO DE DATOS

### 2.1. Tablas

```
Figura 03 : Tabla Users
```
```
Columna
```
```
Tipo de
Dato Nulo Predeterminado
```
```
Enlaces
a (FK) Comentarios
```
```
userId string No (Auto-gen) -
```
```
(PK) ID único
del Documento
(Authentication
UID).
```
#### CREATEA

```
T timestamp Sí (App Logic) -
```
```
Fecha y hora de
creación de la
cuenta.
```
```
EMAIL string No Ninguno -
```
```
Email de
registro y login.
```
#### USERNAM

```
E string Sí Ninguno -
```
```
Nombre
público o alias
del usuario.
```
```
Fuente : Elaboración propia
```

```
Figura 04 : Tabla Examenes
```
```
Columna
```
```
Tipo de
Dato Nulo Predeterminado
```
```
Enlaces
a (FK) Comentarios
```
```
examenId string No (Auto-gen) -
```
```
(PK) ID único
del Documento
del examen.
```
#### DESCRIPC

```
ION string Sí Ninguno -
```
```
Texto
descriptivo del
contenido del
examen.
```
```
NOMBRE string No Ninguno -
```
```
Título o
nombre
principal del
examen.
```
```
ORIGEN string Sí Ninguno -
```
```
Fuente del
examen (ej:
"Examen
Admisión
2024").
```
```
URLFOTO string Sí Ninguno -
```
```
URL de la
imagen de
portada para el
examen.
```
```
Fuente : Elaboración propia
```

```
Figura 05 : Tabla Preguntas
```
```
Columna
```
```
Tipo de
Dato Nulo Predeterminado
```
```
Enlaces
a (FK) Comentarios
```
```
preguntaId string No (Auto-gen) -
```
```
(PK) ID único
del Documento
de la pregunta.
```
#### ENUNCIA

```
DO string No Ninguno -
```
```
El texto o la
consigna de la
pregunta.
```
OPCIONES map | array No (Vacío) -

```
Opciones de
respuesta (ej:
{"a": "Op1",
"b": "Op2"}).
```
#### RESPUEST

```
A string No Ninguno -
```
```
La clave de la
respuesta
correcta (ej:
"a").
```
```
TIPO string Sí simple' -
```
```
Tipo de
pregunta (ej:
'simple',
'múltiple',
'texto').
```
```
EXAMEN string No Ninguno
```
#### EXAME

```
NES(ex
amenId)
```
```
(FK) ID del
examen al que
pertenece esta
pregunta.
```

```
Figura 06 : Tabla Historial
```
```
Columna
```
```
Tipo de
Dato Nulo
```
```
Predetermin
ado
```
```
Enlaces a
(FK)
```
```
Comentario
s
```
```
historialId string No (Auto-gen) -
```
#### (PK) ID

```
único del
Documento
de este
registro.
```
```
FECHA timestamp No
```
```
(App
Logic) -
```
```
Fecha y hora
en que se
completó el
examen.
```
```
MODO string Sí práctica' -
```
```
Modo de
juego (ej:
'simulacro',
'práctica').
```
#### NOMBREE

```
XAMEN string No Ninguno -
```
```
Nombre del
examen
(denormaliz
ado para
lecturas
rápidas).
```
#### TIPOEXA

```
MEN string Sí Ninguno -
```
```
Tipo de
examen
(denormaliz
ado).
```
#### EXAMENI

```
D string No Ninguno
```
#### EXAMENE

```
S(examenId
)
```
```
(FK) ID del
examen que
se resolvió.
```
```
USERIF string No Ninguno
```
```
USERS(use
rId)
```
```
(FK) ID del
usuario que
resolvió el
examen.
```
```
Fuente : Elaboración propia
```
### 1.2. Lenguaje de Definición de Datos (DDL)

```
(Firebase, al ser una base de datos NoSQL, no utiliza DDL (Lenguaje de Definición de Datos)
como las bases de datos SQL.)
```
### 1.3. Lenguaje de Manipulación de Datos (DML)

```
(Firebase, al ser una base de datos NoSQL, no utiliza DML (Lenguaje de Modelado de Datos)
como las bases de datos SQL.)
```

