import 'package:flutter/material.dart';
import 'package:schoolapp/constants/colors.dart';
import 'package:schoolapp/utils/validate.dart';

class SignView extends StatefulWidget {
  const SignView({super.key});

  @override
  State<SignView> createState() => _SignViewState();
}

class _SignViewState extends State<SignView> {
  // kontrol için tanımlamaları yapıyoruz.
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tertiaryColor,
      child: buildSignBody(),
    );
  }

  Widget buildSignBody() {
    return SingleChildScrollView(
      // bir alandaki içeriği tek bir yönde kaydırmak için ve klavye açıldığında sayfa içeriyini kaydırmak
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // colomn ve rowları hizalar.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Center(
                    // avatarı ortalayıp veriyoruz.
                    child: CircleAvatar(
                  radius: 50,
                  backgroundColor: primaryColor,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                )),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text(
                    // Childrenın içerisinde text veriyoruz.
                    "Sign in to continue!",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                buildInputField("Email Address", emailController),
                const SizedBox(
                  height: 20,
                ),
                buildInputField("Password", passwordController),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: blackColor.withOpacity(0.7),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildInputField(String lable, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: lable == "Email Adress"
                  ? Border.all(
                      width: 0.5,
                      color: controller.text.isEmpty
                          ? Colors.grey
                          : isEmailValid
                              ? Colors.green
                              : Colors.red)
                  : Border.all(
                      width: 1.0,
                      color: Colors.grey,
                    )),
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onChanged: (String value) {
              if (lable == "Email Address") {
                if (value.isEmpty) {
                  setState(() {
                    isEmailValid = true;
                  });
                } else {
                  final bool isValid = validateEmailAddress(value);
                  if (isValid) {
                    setState(() {
                      isEmailValid = false;
                    });
                  }
                }
              }
            },
          ),
        )
      ],
    );
  }
}
