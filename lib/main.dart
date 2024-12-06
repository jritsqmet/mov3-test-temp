import 'package:flutter/material.dart';

void main() {
  runApp(Ejercicio());
}

class Ejercicio extends StatelessWidget {
  const Ejercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Cuerpo());
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ejercicio"),
        ),
        body: Column(
          children: [
            Text("Ejericio 07"),
            nombre_input(),
            edad_input(),
            salario_input(),
            calcular_btn(context)
          ],
        ));
  }
}

TextEditingController _nombre = TextEditingController();
Widget nombre_input() {
  return TextField(
    controller: _nombre,
  );
}

TextEditingController _edad = TextEditingController();
Widget edad_input() {
  return TextField(
    controller: _edad,
  );
}

TextEditingController _salario = TextEditingController();
Widget salario_input() {
  return TextField(
    controller: _salario,
  );
}

// BOTON
Widget calcular_btn(context) {
  return FilledButton(
      onPressed: () => salarioAlert(context), child: Text("calcular"));
}

// ALERTA
void salarioAlert(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(_nombre.text),
          content: Text(
            "El salario final es: ${salarioFinal()}",
            style: TextStyle(fontSize: 35),
          ),
        );
      });
}

double salarioFinal() {
  double salario=0;

  if (_edad.text == "" || _salario.text == "") {
    
  } else {
    salario = double.parse(_salario.text);
    int edad = int.parse(_edad.text);

    if (edad > 30 && salario > 3000) {
      salario = salario + (salario * 0.1);
    }
  }

  return salario;
}
