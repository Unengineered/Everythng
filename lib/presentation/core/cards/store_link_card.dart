import 'package:everythng/core/constants/shadows.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreLinkCard extends StatelessWidget {
  const StoreLinkCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xFF222222),
        boxShadow: everythng6LayerComponentShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/logo_1.png',
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Text(
                'nefsfinds',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 25,
                  letterSpacing: -1.5,
                ),
              ),
            ],
          ),
          IconButton(
            // padding: const EdgeInsets.only(right: 24),
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
