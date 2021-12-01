import 'package:everythng/constants/extensions.dart';
import 'package:flutter/material.dart';

//TODO : Integrate with API
class StoreCard extends StatelessWidget {
  const StoreCard({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    return SizedBox(
      height: 236,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 8,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Unengineered',
                          style: everythngTextTheme.headline3Bold,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'A sustainable fashion brand',
                          style: everythngTextTheme.footerSemiBold,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 42,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black12,
                thickness: 1,
                height: 14,
              ),
              Container(
                height: 140,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        'assets/images/akshi.png',
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 16,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}