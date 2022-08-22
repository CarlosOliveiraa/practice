import 'package:flutter/material.dart';

import 'imc_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ImcController controller = ImcController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: controller.pesoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: controller.alturaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ValueListenableBuilder<double>(
                valueListenable: controller,
                builder: (context, value, child) {
                  return Text(
                    controller.resultado,
                  );
                }
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.calcImc,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}