import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/theme/app_theme.dart';

class CustomCardtype2Screen extends StatelessWidget {
  final String imageURL;
  final String? name;

  const CustomCardtype2Screen({
    Key? key,
    required this.imageURL,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 400),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name ?? 'No title'),
              ),
            )
        ],
      ),
    );
  }
}

        // FadeInImage(
        //   image: NetworkImage(
        //       'data:image/jpeg;base64,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'),
        //   placeholder: AssetImage('assets/jar-loading.gif'),
        // ),