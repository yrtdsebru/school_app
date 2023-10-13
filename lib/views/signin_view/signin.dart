import 'package:flutter/material.dart';
import 'package:schoolapp/constants/colors.dart';

class SignView extends StatefulWidget {
  const SignView({super.key});

  @override
  State<SignView> createState() => _SignViewState();
}

class _SignViewState extends State<SignView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: tertiaryColor,
      child: buildSignBody(),
    );
  }

  Widget buildSignBody() {
    return const SingleChildScrollView(
      // bir alandaki içeriği tek bir yönde kaydırmak için ve klavye açıldığında sayfa içeriyini kaydırmak
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // colomn ve rowları hizalar.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
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
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Text(
                    // Childrenın içerisinde text veriyoruz.
                    "Sign in to continue!",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
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
}
