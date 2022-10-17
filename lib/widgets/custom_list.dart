import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

class CustomList extends StatelessWidget {

  final String jobTitle;
  final String companyName;
  final String imageUrl;

  const CustomList({
    Key? key,
    required this.jobTitle,
    required this.companyName,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 26,
      ),
      child: Expanded(
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 44,
              height: 45,
            ),
            const SizedBox(width: 27,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: jobTextStyle,
                ),
                Text(
                  companyName,
                  style: companyTextStyle,
                ),
                //const SizedBox(height: 18,),
                const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );         
  }
}