import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: const TextStyle(
                    fontSize: 33,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: const TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
