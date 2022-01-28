import 'package:everythng/core/extensions/extension_context.dart';
import 'package:flutter/material.dart';

class SizeChart extends StatelessWidget {
  const SizeChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Integrate with api using list as an input
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 32,
        mainAxisSpacing: 8,
        //
        childAspectRatio: 3.2,
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shoulder',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.5,
                color:
                context.everythngThemeData.textAndIconography.medium,
              ),
            ),
            Text(
              '16 inches',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.7,
                color: context.everythngThemeData.textAndIconography.high,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 1,
              color: Colors.grey.shade300,
            )
          ],
        );
      },
    );
  }
}