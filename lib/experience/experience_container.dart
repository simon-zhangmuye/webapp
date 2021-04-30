import 'package:flutter/material.dart';
import 'package:webapp/utils/colour_assets.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    Key key,
    @required this.experience,
    @required this.index,
  }) : super(key: key);

  final ExperienceInfo experience;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colors = ColourAssets.all;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: colors.elementAt(index % colors.length),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.company,
            style: textStyle(isBold: true),
          ),
          SizedBox(height: 10),
          Text(
            experience.timeline,
            style: textStyle(isGrey: true),
          ),
          SizedBox(height: 10),
          for (final item in experience.descriptions)
            Text(
              item,
              style: textStyle(),
            )
        ],
      ),
    );
  }
}

TextStyle textStyle({bool isBold, bool isGrey}) {
  return TextStyle(
    fontSize: 20,
    height: 1.3,
    fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
    color: isGrey ?? false ? Colors.grey : Colors.black,
  );
}

class ExperienceInfo {
  final String company;
  final String timeline;
  final List<String> descriptions;
  ExperienceInfo({
    @required this.company,
    @required this.timeline,
    @required this.descriptions,
  });
}

final experiences = [
  ExperienceInfo(
    company: 'Experience A',
    timeline: 'Time period 1 to 2',
    descriptions: [
      '- Work A',
      '- Work B',
    ],
  ),
  ExperienceInfo(
    company: 'Experience A',
    timeline: 'Time period 1 to 2',
    descriptions: [
      '- Work A',
      '- Work B',
    ],
  ),
  ExperienceInfo(
    company: 'Experience A',
    timeline: 'Time period 1 to 2',
    descriptions: [
      '- Work A',
      '- Work B',
    ],
  ),
  ExperienceInfo(
    company: 'Experience A',
    timeline: 'Time period 1 to 2',
    descriptions: [
      '- Work A',
      '- Work B',
    ],
  ),
];
