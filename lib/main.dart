import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController usernameCtl = TextEditingController();
  TextEditingController passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;

    const snackBarGagal = SnackBar(
      content: Text('Login Gagal!'),
    );

    const snackBarBerhasil = SnackBar(
      content: Text('Login Berhasil!'),
    );

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 8.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Silahkan masuk untuk melanjutkan',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 40.0),
                    child: TextFormField(
                      controller: usernameCtl,
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 40.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordCtl,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          print("Username : " + usernameCtl.text);
                          print("Password : " + passwordCtl.text);
                          if (usernameCtl.text.length != 0) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBarBerhasil);
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBarGagal);
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Belum punya akun? '),
                      TextSpan(
                        text: 'Daftar sekarang',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
