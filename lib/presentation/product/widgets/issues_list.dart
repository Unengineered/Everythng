import 'package:everythng/core/constants/shadows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IssuesList extends StatelessWidget {
  const IssuesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Implement this with api by providing a list of issues
    return SizedBox(
      height: 200,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: everythng6LayerComponentShadow,
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/placeholder_3.png',
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      12, 13, 18, 13),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Read More',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.9,
                          color: Color(0xff7c7c7c),
                        ),
                      ),
                      Icon(CupertinoIcons.chevron_forward)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 18,
          );
        },
        itemCount: 10,
      ),
    );
  }
}