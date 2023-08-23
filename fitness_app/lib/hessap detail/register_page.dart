import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/hessap%20detail/login_button.dart';
import 'package:fitness_app/hessap%20detail/login_text_field.dart';
import 'package:fitness_app/hessap%20detail/square_tile.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  void signUserUp(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      if(passwordController.text == confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      }else {
        wrongEmail();
      }
        Navigator.pop(context);
    }on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == "user-not-found"){
        wrongEmail();
      }
    }
  }

  void wrongEmail(){
  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Center(child: Text("Şifreler uyuşmuyor!",style: Sabitler.yaziStyle,)),
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
                  height: 70,
                ),
                const SizedBox(
                  height: 20,
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
                LoginText(
                  controller: confirmPasswordController,
                  hintText: 'şifreyi onayla',
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
                  text: "Kayıt Ol",
                  onTap: () => signUserUp(context),
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
                        "Hesabın var mı ?  ",
                        style: Sabitler.yaziStyle2,
                      ),
                      InkWell(
                        onTap: widget.onTap,
                        child: Text(
                          "Giriş yap",
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
