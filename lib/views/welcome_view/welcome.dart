import 'package:flutter/material.dart';
import 'package:schoolapp/constants/colors.dart';
import 'package:schoolapp/constants/images.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tertiaryColor,
      child: Column(
        children: [
          //Sayfa alanın nasıl paylaşılacağını belirlemek için kullanılır.
          Expanded(
            //Flex widget'lar, çocuklarını sıralı veya çapraz olarak düzenlemek için kullanılabilir.
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(welcomeImage),
                  )
                ],
              ),
            ),
          ),
          //Creates a widget that expands a child of a [Row], [Column], or [Flex] so that the child fills the available space along the flex widget's main axis.
          Expanded(
            flex: 2,
            child: Container(
              color: primaryColor,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: tertiaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      const Text(
                        "Learning everything",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Learn with pleasure with \n us,where you are!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          wordSpacing: 2.5,
                          height: 1.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const LoginView(),
                          //   ),
                          // );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center, //yatay bir düzelemde kendinden sonra gelen children ı aldığı değere göre hizalar
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
