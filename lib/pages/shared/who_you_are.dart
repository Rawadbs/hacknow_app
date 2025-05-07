import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/pages/shared/auth/sign_up_screen.dart';
import 'package:hacknow_app/pages/shared/auth/sign_up_screen_universty.dart';

class WhoAreYouPage extends StatelessWidget {
  const WhoAreYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text(
                'من أنت؟',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              _buildOption(
                icon: Icons.school,
                title: 'مستخدم',
                subtitle: 'الوصول إلى الهاكاثونات الموجودة',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                ),
              ),
              const SizedBox(height: 12),
              _buildOption(
                icon: Icons.apartment,
                title: 'مسؤول الجامعة',
                subtitle: 'إدارة موارد الجامعة',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreenUniversty()),
                ),
              ),
              const SizedBox(height: 12),
              _buildOption(
                icon: Icons.emoji_events_outlined,
                title: 'منظم هاكاثون',
                subtitle: 'إنشاء وإدارة الفعاليات',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffF3F4F6)),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade50,
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
