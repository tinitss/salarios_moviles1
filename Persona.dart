import 'dart:io';

class Persona {
  String nombre;
  String apellido;
  String rol;
  String fechaNacimiento;
  int horas;
  int horasExtras;
  double valorHora;
  double valorHoraExtra;

  Persona({
    required this.nombre,
    required this.apellido,
    required this.rol,
    required this.fechaNacimiento,
    required this.horas,
    required this.horasExtras,
    required this.valorHora,
    required this.valorHoraExtra,
  });

  double calcularSalarioMensual() {
    double salarioMensual = horas * valorHora;
    double salarioMensualConExtras = salarioMensual + (horasExtras * valorHoraExtra);
    return salarioMensualConExtras;
  }

  double calcularPension() {
    double pension = calcularSalarioMensual() * 0.04;
    return pension;
  }

  double calcularSalud() {
    double salud = calcularSalarioMensual() * 0.04;
    return salud;
  }

  double calcularARL() {
    double arl = calcularSalarioMensual() * 0.04;
    return arl;
  }



  void mostrarInformacionSalario() {
    print("Nombre: $nombre");
    print("Apellido: $apellido");
    print("Rol: $rol");
    print("Fecha de Nacimiento: $fechaNacimiento");
    print("Aporte de salud: \$${calcularSalud()}");
    print("Aporte de pension: \$${calcularPension()}");
    print("Salario mensual: \$${calcularSalarioMensual()}");
  }
}