import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
          color: Color(0xFFbbbbbb),
          width: 2,
        ));

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          )
        ),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              width: 110.2,
              height: 83,
              child: Image(image: AssetImage("assets/dart_bird.png")),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Введите логин в виде 10 цифр номера телефона",
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.6),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 224,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
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
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
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
                child: ElevatedButton(
                    onPressed: () {
                      snackBar(context, "Ща будет");
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    child: const Text("Войти"))),
            // const SizedBox(
            //   height: 62,
            // ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 32, 0, 0),
              child: InkWell(
                onTap: () {
                  snackBar(context, "Регистрация");
                },
                child: const Text(
                  "Регистрация",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: InkWell(
                onTap: () {
                  snackBar(context, "Печально((");
                },
                child: const Text(
                  "Забыли пароль",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  snackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        action: SnackBarAction(
          label: 'Скрыть',
          onPressed: () {
            // Code to execute.
          },
        ),
        content: Text(text),
        duration: const Duration(milliseconds: 1500),
        width: 300,
        // Width of the SnackBar.
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
