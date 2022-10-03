import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final testeController = TextEditingController();
  String label = 'Teste';

  void validate() {
    if (testeController.text.isEmpty) {
      label = 'Inválido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: testeController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text(label),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              //const TextField(),

              //TODO: Copiar código abaixo e transferir para o notion na page WorkTools.
              TextButton(
                child: const Text(
                  'Testar',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  validate();
                  print(label);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.blue;
                  },
                ), textStyle: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const TextStyle(fontSize: 40);
                  }
                  return const TextStyle(fontSize: 20);
                })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
