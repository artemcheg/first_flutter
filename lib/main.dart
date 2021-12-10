import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children:  [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              width: 110.2,
              height: 83,
              child: Placeholder(
                strokeWidth: 4,
                fallbackHeight: 200,
                fallbackWidth: 10,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Введите логин в виде 10 цифр номера телефона"),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 224,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFeceff1),
                  labelText: "Телефон",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 224,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFeceff1),
                  labelText: "Пароль",
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(onPressed: (){}, child: const Text("Войти"))),
            const SizedBox(
              height: 62,
            ),
            InkWell(
              onTap:(){},
              child: const Text("Регистрация"),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap:(){},
              child: const Text("Забыли пароль"),
            ),
          ],
        ),
      ),
    );
  }


  void _snackBar(BuildContext context,String text){
    final snackbarr = SnackBar(content: Text(text),
      action: SnackBarAction( label: "Скрыть", onPressed: () { _snackBar(context, text); },),);


  }
}



