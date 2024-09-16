import 'package:flutter/material.dart';
import 'package:meal_mentor/Login/login.dart';
import 'package:meal_mentor/style/color.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
            Image.asset(
              'assets/Wellcome1.png',
              width: double.infinity,
            ),
            SizedBox(height: 30),
            Text(
              'Balance diet, Balance life',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, _createRoute());
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.buttonColor,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 60),
                ),
                child: Text(
                  'Đăng nhập ngay',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var fadedAnimation = animation.drive(tween);

        return FadeTransition(
          opacity: fadedAnimation,
          child: child,
        );
      },
    );
  }
}
