import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.size = 60});
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Platform.isAndroid
          ? const CircularProgressIndicator(
              color: Colors.blue,
            )
          : const CupertinoActivityIndicator(
              color: Colors.blue,
            ),
    );
  }
}
