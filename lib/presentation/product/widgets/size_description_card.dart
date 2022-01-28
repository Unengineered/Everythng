import 'package:everythng/core/constants/shadows.dart';
import 'package:everythng/presentation/product/widgets/size_chart.dart';
import 'package:everythng/presentation/product/widgets/size_information_element.dart';
import 'package:flutter/material.dart';

class SizeDescriptionCard extends StatelessWidget {
  const SizeDescriptionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 18, 38, 18),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: everythng6LayerComponentShadow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizeInformationElement(),
          SizedBox(
            height: 12,
          ),
          Text(
            'Size Chart',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              letterSpacing: -1.3,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SizeChart(),
        ],
      ),
    );
  }
}