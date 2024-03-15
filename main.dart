  import 'Persona.dart';
  import 'dart:io';

void main() {
  stdout.write("Ingrese el nombre: ");
  String nombre = stdin.readLineSync()!;
  stdout.write("Ingrese el apellido: ");
  String apellido = stdin.readLineSync()!;
  stdout.write("Ingrese el rol (1: Empleado, 2: Jefe): ");
  int opcionRol = int.parse(stdin.readLineSync()!);

  String rol;
  switch (opcionRol) {
    case 1:
      rol = "Empleado";
      break;
    case 2:
      rol = "Jefe";
      break;
    default:
      print("Opción de rol no válida");
      return;
  }

  stdout.write("Ingrese la fecha de nacimiento: ");
  String fechaNacimiento = stdin.readLineSync()!;
  stdout.write("Ingrese las horas trabajadas: ");
  int horas = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el valor por hora: ");
  double valorHora = double.parse(stdin.readLineSync()!);

  int horasExtras = 0;
  double valorHoraExtra = 0;

  stdout.write("¿Trabajó horas extras? (1: Sí, 2: No): ");
  int opcionHorasExtras = int.parse(stdin.readLineSync()!);
  switch (opcionHorasExtras) {
    case 1:
      stdout.write("Ingrese las horas extras trabajadas: ");
      horasExtras = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el valor por hora extra: ");
      valorHoraExtra = double.parse(stdin.readLineSync()!);
      break;
    case 2:
      break;
    default:
      print("Opción no válida");
      return;
  }

  print("");
  print("-- DATOS DE LA PERSONA --");

  Persona persona = Persona(
    nombre: nombre,
    apellido: apellido,
    rol: rol,
    fechaNacimiento: fechaNacimiento,
    horas: horas,
    horasExtras: horasExtras,
    valorHora: valorHora,
    valorHoraExtra: valorHoraExtra,
  );

  persona.mostrarInformacionSalario();
}