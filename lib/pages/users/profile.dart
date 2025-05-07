import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0, // بدون AppBar ظاهر
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(height: 12),
                Text(
                  'محمد أحمد',
                  style: TextStyles.font16BoldBlack,
                ),
                const SizedBox(height: 4),
                Text(
                  'mohammed.ahmed@email.com',
                  style: TextStyles.font14BoldDarkBlue,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: Text(
              'المعلومات الشخصية',
              style: TextStyles.font16BoldBlack,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: Text(
              'الإشعارات',
              style: TextStyles.font16BoldBlack,
            ),
            trailing: Switch(
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  notificationsEnabled = value;
                });
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.event_note_outlined),
            title: Text(
              'فعالياتي',
              style: TextStyles.font16BoldBlack,
            ),
            trailing: Text(
              '3 قادمة',
              style: TextStyles.font14BoldDarkBlue,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: Text(
              'حالة الطلبات',
              style: TextStyles.font16BoldBlack,
            ),
            trailing: Text(
              '2 قيد الانتظار',
              style: TextStyles.font14BoldDarkBlue,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.security_outlined),
            title: Text(
              'الخصوصية والأمان',
              style: TextStyles.font16BoldBlack,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: Text(
              'المساعدة والدعم',
              style: TextStyles.font16BoldBlack,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: Text(
              'تسجيل الخروج',
              style: TextStyles.font16Boldred,
            ),
            onTap: () {
              // تنفيذ تسجيل الخروج
            },
          ),
        ],
      ),
    );
  }
}
