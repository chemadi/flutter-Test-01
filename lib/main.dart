import 'package:flutter/material.dart';
import 'package:practica03/helpers/dialogs.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red[400],
            //backgroundColor: Color.fromRGBO(r, g, b, opacity),
            title: const Text("TITULO"),
          ),
          body: Builder(
            builder: (BuildContext context) => SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(blurRadius: 5, color: Colors.blue)
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "Hola Mundo",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    /*              Image.network(
                      "https://www.freeimages.com/es/photo/windows-5-1564807",
                    ),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/win5.jpg',
                        width: 50,
                        height: 100,
                      ),
                    ),
                    const Text(
                      "Hola Mundo 2",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(70),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => contacto(context),
                        child: const Text('Contacto'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

          /* widget(
          child: const Text(
            "Hola Mundo",
            style: TextStyle(
                color: Colors.blue, 
                fontSize: 28, 
                fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
        ),*/
          ),
    );
  }

  contacto(BuildContext context) {
    infoDialog(
        context: context, title: "Contacto", content: "Contacto Establecido");
  }
}
