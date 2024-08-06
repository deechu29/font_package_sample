import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.whatsapp),
            Icon(BoxIcons.bxl_apple),
            Icon(BoxIcons.bx_git_branch),
            Icon(BoxIcons.bxs_cookie),
            SvgPicture.asset(
              "asset/images/suv-svgrepo-com.svg",
              height: 100,
            ),
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/53/fd/4d/53fd4d36f435fd37e24ae2b1c4ef6895.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/0f/d7/ee/0fd7ee24f66c79ada1134923776cc38e.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/736x/93/cd/36/93cd3699e30d96cd3ba1d9db46f82861.jpg"))),
                  )
                ],
                options: CarouselOptions(
                    viewportFraction: 1.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeFactor: .2,
                    autoPlayInterval: Duration(seconds: 1)))
          ],
        ),
      ),
    );
  }
}
