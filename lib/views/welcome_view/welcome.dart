import 'package:flutter/material.dart';
import 'package:schoolapp/constants/colors.dart';
import 'package:schoolapp/constants/images.dart';
import 'package:schoolapp/views/signin_view/signin.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Materyal tasarım widget'ı olan Material oluşturulur ve arka plan rengi belirlenir.
    return Material(
      color: tertiaryColor,
      child: Column(
        children: [
          // Üst kısmı kaplayan Expanded widget oluşturulur.
          Expanded(
            child: Container(
              width: double.infinity,
              // Container'ın arka plan rengi ve köşeleri yuvarlatılır.
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                  )),
              child: Column(
                children: [
                  // Resim göstermek için Image widgetı kullanılır.
                  Expanded(
                    child: Image.asset(welcomeImage),
                  ),
                ],
              ),
            ),
          ),
          // Alt kısmı kaplayan Expanded widget oluşturulur.
          Expanded(
            child: Container(
              color: primaryColor,
              child: Container(
                width: double.infinity,
                // Container'ın arka plan rengi ve köşeleri yuvarlatılır.
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
                      // Metinler arasında boşluk bırakmak için Spacer widget'ı kullanılır.
                      const Spacer(),
                      // Başlık metni görüntülenir.
                      const Text(
                        "Learning is Fun",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      // Açıklama metni görüntülenir.
                      const Text(
                        "Learn with pleasure with\nus, where you are!",
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
                      // "Get Started" düğmesi oluşturulur.
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          // "Get Started" düğmesine tıklandığında SigninView sayfasına yönlendirme yapılır.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SigninView(),
                            ),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Düğme metni ve simgesi yatay olarak hizalanır.
                            Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}