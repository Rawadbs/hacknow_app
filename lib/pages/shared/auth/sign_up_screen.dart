import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/extencions.dart';
import 'package:hacknow_app/helpers/styles.dart';
import 'package:hacknow_app/pages/shared/auth/login_screen.dart';
import 'package:hacknow_app/pages/users/home.dart';
import 'package:hacknow_app/pages/users/nav_bar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  bool agreeToTerms = false;
  bool showPassword = false;
  bool showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text(
                'إنشاء حساب جديد',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontConstant.fontFamily),
              ),
              const SizedBox(height: 24),
              _buildTextField(
                  'الاسم الكامل', 'أدخل اسمك الكامل', Icons.person_2_outlined),
              const SizedBox(height: 12),
              _buildTextField('البريد الإلكتروني', 'أدخل بريدك الإلكتروني',
                  Icons.email_outlined),
              const SizedBox(height: 12),
              _buildPasswordField(
                'كلمة المرور',
                'أدخل كلمة المرور',
                showPassword,
                () => setState(() => showPassword = !showPassword),
              ),
              const SizedBox(height: 12),
              _buildPasswordField(
                'تأكيد كلمة المرور',
                'أدخل كلمة المرور مرة أخرى',
                showConfirmPassword,
                () =>
                    setState(() => showConfirmPassword = !showConfirmPassword),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0xFF6C63FF),
                    side: const BorderSide(color: Color(0xFF9CA3AF)),
                    value: agreeToTerms,
                    onChanged: (value) {
                      setState(() {
                        agreeToTerms = value!;
                      });
                    },
                  ),
                  Expanded(
                      child: Text(
                    'أوافق على الشروط والأحكام',
                    style: TextStyles.font14RegularBlack,
                  )),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavBar()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'تسجيل',
                    style: TextStyles.font16BoldWhite,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'لديك حساب بالفعل؟ ',
                      style: TextStyles.font14RegularBlack,
                      children:  [
                        TextSpan(
                          text: 'تسجيل الدخول',
                    style: TextStyles.font14BoldPrimaryBlue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontFamily: FontConstant.fontFamily),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyles.font16MediumLightGray,
              prefixIcon: Icon(icon),
              prefixIconColor: const Color(0xFF9CA3AF),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 1,
                  )),
              filled: true,
              fillColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildPasswordField(
      String label, String hint, bool obscureText, VoidCallback toggle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontFamily: FontConstant.fontFamily),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: !obscureText,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyles.font16MediumLightGray,
            suffixIcon: IconButton(
              icon: Icon(obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_off_outlined),
              color: const Color(0xFF9CA3AF),
              onPressed: toggle,
            ),
            prefixIcon: const Icon(Icons.lock_outline),
            prefixIconColor: const Color(0xFF9CA3AF),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFE5E7EB),
                  width: 1,
                )),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
