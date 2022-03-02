import 'package:everythng/core/constants/shadows.dart';
import 'package:everythng/presentation/product/widgets/size_chart.dart';
import 'package:everythng/presentation/product/widgets/size_information_element.dart';
import 'package:flutter/material.dart';

class SizeDescriptionCard extends StatelessWidget {

  final List<Map<String, String>> sizeChart;

  const SizeDescriptionCard({
    Key? key,
    required this.sizeChart
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
        children: [
          //SizeInformationElement(),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Size chart',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              letterSpacing: -1.3,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizeChart(sizeChart: sizeChart),
        ],
      ),
    );
  }
}