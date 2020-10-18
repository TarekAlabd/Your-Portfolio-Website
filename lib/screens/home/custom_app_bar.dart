import 'package:flutter/material.dart';
import 'package:gdg_web/screens/about/about_screen.dart';
import 'package:gdg_web/widgets/bordered_flat_button.dart';

class CustomAppBar extends StatelessWidget {
  Widget _appBarButton(String title, VoidCallback onTap) {
    return FlatButton(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png'),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _appBarButton(
                  'About',
                  () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => AboutScreen(),
                    ),
                  ),
                ),
                _appBarButton('Portfolio', () {}),
                _appBarButton('Contact', () {}),
                BorderedFlatButton(
                    title: 'Get Started', onTap: () {}, width: 150, height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
