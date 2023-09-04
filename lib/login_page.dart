import 'package:flutter/material.dart';
//import 'package:flutter_myapp_first/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "asset/images/login_page.png",
              fit: BoxFit.cover,
            ),
            const Text(
              "welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "userpassword",
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? const Icon(Icons.done, color: Colors.white)
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape:changeButton ?
                          // //BoxShape.circle :
                          // BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  ),

                  //ElevatedButton(
                  //child: Text("login"),
                  //style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //onPressed: () {
                  //Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //},
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
