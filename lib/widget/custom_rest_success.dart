import 'package:flutter/material.dart';
import 'package:cooking_app/widget/custom_button.dart';

class CustomRestSuccess extends StatelessWidget {
  const CustomRestSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 45),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 310,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close, size: 24),
                ),
              ),
              Image.asset('assets/images/V.png'),
              SizedBox(height: 12),
              Text(
                'Password Changed!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1A1A),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Your can now use your new password to login.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff666666),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Login',
                ontap: () {
                  Navigator.pop(context);
                },
                color: Color(0xffF58700),
                textcolor: Color(0xff1A1A1A),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
