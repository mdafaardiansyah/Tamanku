import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import './home.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.green,
      pages: [
        PageViewModel(
          title: "Selamat Datang di Tamanku",
          body:
              "Tamanku adalah aplikasi sederhana untuk menyimpan koleksi foto dari Tanamanmu secara online !",
          image: Center(
              child: Container(
                  width: 300,
                  height: 300,
                  child: Lottie.asset("assets/lottie/Welcome.json",
                      fit: BoxFit.contain))),
          decoration: const PageDecoration(
              pageColor: Colors.green,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal)),
        ),
        PageViewModel(
          title: "Cek Cuaca dan Suhu",
          body:
          "Cuaca dan Suhu adalah aspek terpenting untuk merawat tanamanmu !",
          image: Center(
              child: Container(
                  width: 300,
                  height: 300,
                  child: Lottie.asset("assets/lottie/Weather.json",
                      fit: BoxFit.contain))),
          decoration: const PageDecoration(
              pageColor: Colors.green,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal)),
        ),
        PageViewModel(
          title: "Mudah Digunakan",
          body:
              "Tinggal pencet foto atau input foto Tanaman yang sudah ada lalu masukkan nama tanaman dan deskripsi !",
          image: Center(
              child: Container(
                  width: 270,
                  height: 270,
                  child: Lottie.asset("assets/lottie/Photo.json",
                      fit: BoxFit.contain))),
          decoration: const PageDecoration(
              pageColor: Colors.green,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal)),
        ),
        PageViewModel(
          title: "Tadaaa !\n Tanamanmu telah tersimpan Online ",
          body:
              "Tanamanmu akan tersimpan secara Online dan bisa dibuka dibanyak platform ",
          image: Center(
              child: Container(
                  width: 270,
                  height: 270,
                  child: Lottie.asset("assets/lottie/Cloud.json",
                      fit: BoxFit.contain))),
          decoration: const PageDecoration(
              pageColor: Colors.green,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal)),
        ),
      ],
      done: const Text("Mulai",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      doneStyle: TextButton.styleFrom(primary: Colors.white),
      showNextButton: true,
      next: const Icon(
        Icons.arrow_back_rounded,
        color: Colors.white,
        textDirection: TextDirection.rtl,
        size: 34,
      ),
      onDone: () {
        // When done button is press
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
      showBackButton: true,
      back: const Icon(
        Icons.arrow_back_rounded,
        color: Colors.white,
        textDirection: TextDirection.ltr,
        size: 34,
      ),
      showSkipButton: false,
      skipStyle: TextButton.styleFrom(primary: Colors.white),
      skip: const Text("Lewati",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      baseBtnStyle: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(15.0, 15.0),
          activeColor: Colors.white,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
