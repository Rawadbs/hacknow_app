import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/styles.dart';
import 'package:hacknow_app/pages/admin/hackthonevents.dart';
import 'package:hacknow_app/pages/shared/auth/sign_up_screen_admin.dart';

class LoginScreenAdmin extends StatefulWidget {
  const LoginScreenAdmin({super.key});

  @override
  LoginScreenAdminState createState() => LoginScreenAdminState();
}

class LoginScreenAdminState extends State<LoginScreenAdmin> {
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
                'تسجيل دخول',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
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
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HackathonEventsPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'تسجيل دخول',
                    style: TextStyles.font16BoldWhite,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreenAdmin()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'لا يوجد لديك حساب؟ ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'تسجيل ',
                          style: TextStyle(color: Colors.blue),
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
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
              hintText: hint,
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
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          obscureText: !obscureText,
          decoration: InputDecoration(
            hintText: hint,
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
