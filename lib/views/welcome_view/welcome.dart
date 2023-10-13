import 'package:flutter/material.dart';
import 'package:schoolapp/constants/colors.dart';
import 'package:schoolapp/constants/images.dart';
import 'package:schoolapp/views/signin_view/signin.dart';

class WelcomeView extends StatelessWidget {
  // bir ker kez oluşturduktan sonra içeriği ve durumu güncellenmeyen widgetlar
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      //Bu widget en dıştan sarmayalacak olan yapı.
      color: tertiaryColor,
      child: Column(
        // child : içerisine tanımlanan nesnenin otomatik algılar ve  width ve height verebiliyoruz
        // colomn : diket konumlandıran widget sutun da diyebilirimz
        children: [
          // birden fazla widget alır.
          Expanded(
              // genişletmek veya daraltmak için kullanılır row ve colomnda kullanılır. eşit bir şekilde boyutlandırır.
              child: Container(
            // istediğimiz gibi konumlandırdığımız şekillendireceğimiz nesne yerleştirebileceğimiz bir kutucuk.
            width: double
                .infinity, // boyutunu telefona göre alıyorlar maksimum boyut diyebiliriz.
            decoration: const BoxDecoration(
                // Containerları şekillednrimeye ve boyamaya yarayan dekarasyon aracı.
                color: primaryColor, // renk veriyoruz
                borderRadius: BorderRadius.only(
                    // kenarları ovelleştirme

                    bottomRight: Radius.circular(
                        50.0))), // köşelerin yuvarlığını oluşturuyor.
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(welcomeImage), //  resim getiriyoruz.
                )
              ],
            ),
          )),
          Expanded(
            child: Container(
              color: primaryColor,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: tertiaryColor,
                    borderRadius: BorderRadius.only(
                      // belirli köşeye ovellik sağlar
                      topLeft: Radius.circular(30), // sol üstten ovellik
                    )),
                child: Padding(
                  // child widgeti ile arasındaki uzakığı belirleriz
                  padding: const EdgeInsets.all(
                      15.0), // margin ve paddingleri aynı uzaklık verme
                  child: Column(
                    children: [
                      const Spacer(), // ayalarlanabilir boş bir alan yaratmak için
                      const Text(
                        "Learning is Fun",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text(
                        "Learn with pleasure with \nus where ever you are!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          height: 1.5,
                          wordSpacing: 2.5,
                        ),
                      ),
                      const Spacer(
                        flex: 3, //oran veriyoruz
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            padding: const EdgeInsets.symmetric(
                                // simetrik olarak yatay dikey veriyoruz.
                                horizontal: 30,
                                vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // buton kenarlarını yuvarlak hale getiriyor.
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => (const SignView()),
                            ),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // yatay dizin oluşturuyor childirenın hizalamasını veriyor.
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                                width: 5.0), // boş bir kutu boşluk sağlıyoruz
                            Icon(Icons.chevron_right_rounded,
                                color: Colors.white, size: 20.0),
                          ],
                        ),
                      )
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
