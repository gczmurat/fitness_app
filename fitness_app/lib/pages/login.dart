import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/global/common/navbar_screen.dart';
import 'package:fitness_app/hessap%20detail/login_button.dart';
import 'package:fitness_app/hessap%20detail/login_text_field.dart';
import 'package:fitness_app/hessap%20detail/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUser(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NavbarScreen()),
      );
    }).catchError((error) {
      Navigator.pop(context);
      print("Error: $error");
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found"){
        wrongEmail();
      }

      else if (e.code == "wrong-password") {
        wrongPassword();
      }
    }
  }

  void wrongEmail(){
  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Center(child: Text("Hatalı E-posta",style: Sabitler.yaziStyle,)),
      );
    },
  );
}

  void wrongPassword(){
  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Center(child: Text("Hatalı Şifre",style: Sabitler.yaziStyle2,)),
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "images/logo2.png",
                  height: 100,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "HOŞGELDİNİZ",
                  style: Sabitler.yaziStyle11,
                ),
                const SizedBox(
                  height: 20,
                ),
                LoginText(
                  controller: emailController,
                  hintText: 'e-mail',
                  obscureText: false,
                ),
                SizedBox(
                  height: 13,
                ),
                LoginText(
                  controller: passwordController,
                  hintText: 'şifre',
                  obscureText: true,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Şifremi Unuttum",
                        style: Sabitler.yaziStyle2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                LoginButton(
                  text: "Giriş Yap",
                  onTap: () => signUser(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.black,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Veya Bunlarla Giriş Yap",
                      style: Sabitler.yaziStyle2,
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.black,
                  ))
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagePath: "images/google.png"),
                      const SizedBox(height: 20),
                      SquareTile(imagePath: "images/facebook.png"),
                      const SizedBox(height: 20),
                      SquareTile(imagePath: "images/apple.png")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Hesabın yok mu ? ",
                        style: Sabitler.yaziStyle2,
                      ),
                      InkWell(
                        onTap: widget.onTap,
                        child: Text(
                          "Şimdi Kayıt Ol",
                          style: Sabitler.yaziStyle12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
