import 'package:flutter/material.dart';

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 18,
      ),
      padding: const EdgeInsets.fromLTRB(18, 18, 24, 18),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 100,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/placeholder_4.png',
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                'nefsfinds',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1.7,
                    color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'Find new and fashionable clothes for women. Party wear and vacation clothing...',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.9,
                      color: Colors.white),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}