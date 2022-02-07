import 'package:flutter/material.dart';
import 'package:bytebank_app/src/page/transferencia/lista.dart';

// CLASSE APP NORMAL UTILIZADA COM O TEMA DO CURSO;
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaTransferencia(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green[900],
          secondary: Colors.blueAccent[700],
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent[700],
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
} 

/*
StreamController<bool> isDarkMode = StreamController();

// CLASSE APP COM TENTATIVA DE TROCA DE TEMA; 
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        initialData: false,
        stream: isDarkMode.stream,
        builder: (context, snapshot) {
          return MaterialApp(
            home: ListaTransferencias(),
            debugShowCheckedModeBanner: false,
            theme: snapshot.data != null
                ? ThemeData.dark()
                : ThemeData(
                    colorScheme: ColorScheme.fromSwatch().copyWith(
                      primary: Colors.green[900],
                      secondary: Colors.blueAccent[700],
                    ),
                    elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent[700],
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
          );
        });
  }
}

changeTheme(bool value) {
  isDarkMode.add(value);
} */
