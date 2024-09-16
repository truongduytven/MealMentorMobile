import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_mentor/get_start.dart';
import 'package:meal_mentor/style/color.dart';
import 'package:meal_mentor/style/scale_route.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
    
    
  @override
  void initState() {
    super.initState();
    // Set the app to immersive mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    // Navigate to the next screen after a delay
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        ScaleRoute(page: GetStartedPage())
      );
    });
  }

  @override
  void dispose() {
    // Restore the system UI overlays when the splash screen is disposed
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded( // Wrapping Image in an Expanded widget
              child: Image.asset(
                'assets/Wellcome1.png',
                width: double.infinity,
                fit: BoxFit.cover, // Ensures the image covers the widget's area
              ),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
