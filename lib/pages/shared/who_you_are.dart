import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/helpers/styles.dart';
import 'package:hacknow_app/pages/shared/auth/sign_up_screen.dart';
import 'package:hacknow_app/pages/shared/auth/sign_up_screen_admin.dart';
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
              Text('من أنت؟', style: TextStyles.font20BoldBlack),
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
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreenAdmin()),
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
          backgroundColor: const Color(0xFFF3F0FF),
          child: Icon(icon, color: ColorsManger.primaryColor),
        ),
        title: Text(title, style: TextStyles.font16MediumBlack),
        subtitle: Text(
          subtitle,
          style: TextStyles.font14BoldDarkBlue,
        ),
        onTap: onTap,
      ),
    );
  }
}
