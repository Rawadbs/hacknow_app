import 'package:flutter/material.dart';

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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text(
                'إنشاء حساب جديد',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              _buildTextField('الاسم الكامل', 'أدخل اسمك الكامل', Icons.person),
              const SizedBox(height: 12),
              _buildTextField(
                  'البريد الإلكتروني', 'أدخل بريدك الإلكتروني', Icons.email),
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
                    value: agreeToTerms,
                    onChanged: (value) {
                      setState(() {
                        agreeToTerms = value!;
                      });
                    },
                  ),
                  const Expanded(child: Text('أوافق على الشروط والأحكام')),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // ضع هنا منطق التسجيل
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C63FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('تسجيل',),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // ضع هنا منطق الانتقال لتسجيل الدخول
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'لديك حساب بالفعل؟ ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'تسجيل الدخول',
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
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
             
            ),
          ),
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
            prefixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: toggle,
            ),
            suffixIcon: const Icon(Icons.lock),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
