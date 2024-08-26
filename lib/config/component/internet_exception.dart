import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  const InternetExceptionWidget({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.cloud_off,
              color: Colors.red,
              size: 50,
            ),
            const SizedBox(height: 20),
            Text(
                'We\'re unable to show reslut.\nPlease check your internet Connectivity ',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: onPressed, child: const Center(child: Text('Retry')))
          ],
        ));
  }
}
