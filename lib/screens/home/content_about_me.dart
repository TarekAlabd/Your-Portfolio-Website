import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdg_web/widgets/bordered_flat_button.dart';

class ContentAboutMe extends StatelessWidget {
  Widget _iconContact(IconData iconData, VoidCallback onTap) {
    return IconButton(
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
      onPressed: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hello, I am',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          'Mark\nReccardo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 100,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Row(
          children: [
            Text(
              'A young ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'UI/UX',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
              ),
            ),
            Text(
              ' designer with crazy for mobile & web design',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Text(
          'Find Me on',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            _iconContact(FontAwesomeIcons.facebookF, () {}),
            _iconContact(FontAwesomeIcons.twitter, () {}),
            _iconContact(FontAwesomeIcons.instagram, () {}),
            _iconContact(FontAwesomeIcons.pinterest, () {}),
            _iconContact(FontAwesomeIcons.patreon, () {}),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 150,
              child: FlatButton(
                child: Text(
                  'Hire Me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                color: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            const SizedBox(width: 16),
            BorderedFlatButton(
              title: 'Portfolio',
              onTap: () {},
              width: 150,
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
