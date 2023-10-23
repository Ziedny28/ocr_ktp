import 'package:flutter/material.dart';
import 'package:ocr_ktp/components/components.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return SafeArea(
      child: Material(
        child: Container(
          color: const Color(0xefefefef),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/login_decoration.png"),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/images/logo_jti_baru.png",
                      width: 75,
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    MainTextField(
                        iconData: Icons.person, controller: usernameController),
                    const SizedBox(
                      height: 30,
                    ),
                    MainTextField(
                        iconData: Icons.lock, controller: passwordController),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Buat akun",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MainButton(buttonText: "Masuk", function: () {})
                  ],
                ),
              ),
              const Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Divider(color: Color.fromRGBO(161, 156, 156, 1)),
                  ),
                  Center(
                    child: Text(
                      "Atau",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          backgroundColor: Color(0xefefefef),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(161, 156, 156, 1),
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              const Text("Lanjutkan Dengan")
            ],
          ),
        ),
      ),
    );
  }
}
