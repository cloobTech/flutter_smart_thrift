import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroScreen extends StatelessWidget {
  final String svgUrl;
  final String header;
  final String description;
  const IntroScreen(
      {super.key,
      required this.svgUrl,
      required this.header,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: SvgPicture.asset(
            svgUrl,
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            // height: 100,
            width: 300,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(header,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              Text(description),
            ],
          ),
        ),
      ],
    );
  }
}
