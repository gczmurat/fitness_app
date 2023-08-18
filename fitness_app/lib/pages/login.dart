import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/hessap%20detail/login_button.dart';
import 'package:fitness_app/hessap%20detail/login_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "images/logo2.png",
                height: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "HOŞGELDİNİZ",
                style: Sabitler.yaziStyle11,
              ),
              const SizedBox(
                height: 25,
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
                hintText: 'password',
                obscureText: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Şifremi Unuttum",style: Sabitler.yaziStyle2,),
                  ],
                ),
              ),
              SizedBox(height: 25),
              LoginButton(onTap: signUser,),
            ],
          ),
        ),
      ),
    );
  }
}
