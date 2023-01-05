import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemons/src/routes/app_pages.dart';
import 'package:pokemons/src/theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffEFF4FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 49, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/capa.png', width: size.width),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Explore o mundo\ndos',
                    style: GoogleFonts.nunito(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: darkBlue),
                  ),
                  TextSpan(
                    text: ' Pokémons',
                    style: GoogleFonts.nunito(
                        fontSize: 35, fontWeight: FontWeight.w600, color: red),
                  ),
                ]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Descubra todas as espécies de Pokémons',
                style: GoogleFonts.nunito(
                    fontSize: 16, fontWeight: FontWeight.w400, color: darkBlue),
              ),
              const SizedBox(
                height: 19,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0XFFEA686D).withOpacity(0.9),
                      spreadRadius: 0,
                      blurRadius: 15,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: red, foregroundColor: white),
                    onPressed: () {
                      Get.toNamed(Routes.home);
                    },
                    child: SizedBox(
                      width: 226,
                      height: 43,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Começar',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
