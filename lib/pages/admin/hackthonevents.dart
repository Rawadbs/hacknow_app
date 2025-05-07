import 'package:flutter/material.dart';
import 'package:hacknow_app/pages/admin/createhackthon.dart';
import 'package:hacknow_app/pages/admin/participants.dart';
import 'package:hacknow_app/pages/shared/who_you_are.dart';

class HackathonEventsPage extends StatelessWidget {
  const HackathonEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'فعاليات الهاكاثون',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhoAreYouPage()));
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Cards Row - تقليل المسافات بينهم
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const _StatCard(icon: Icons.bolt, label: 'نشط', count: '3'),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ParticipantsPage()));
                      },
                      child: const _StatCard(
                          icon: Icons.group, label: 'مشارك', count: '479')),
                  const _StatCard(
                      icon: Icons.calendar_month, label: 'قادم', count: '2'),
                ],
              ),
              const SizedBox(height: 20),
              // Add New Event Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add, color: Colors.white),
                  label: const Text(
                    'إضافة فعالية جديدة',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C5DD3),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    // Add new event logic
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateHackathonPage()));
                  },
                ),
              ),
              const SizedBox(height: 20),
              // Table Header
              _TableHeader(),
              const Divider(),
              // Table Rows with dividers
              const _EventRow(
                name: 'ابتكار التقنية 2024',
                date: '25-2-2025',
                users: '152',
              ),
              const Divider(color: Color(0xFFE0E0E0)),
              const _EventRow(
                name: 'هاكثون التسويق',
                date: '22-2-2025',
                users: '89',
              ),
              const Divider(color: Color(0xFFE0E0E0)),
              const _EventRow(
                name: 'هاكثون انفوتيك',
                date: '2-5-2025',
                users: '234',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String count;

  const _StatCard(
      {required this.icon, required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: const Color(0xFFF3F0FF),
          child: Icon(icon, color: const Color(0xFF6C5DD3), size: 28),
        ),
        const SizedBox(height: 6),
        Text(count, style: const TextStyle(fontSize: 18)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class _TableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Center(child: Text('اسم الفعالية'))),
        Expanded(child: Center(child: Text('التاريخ'))),
        Expanded(child: Center(child: Text('المستخدمون'))),
        SizedBox(width: 80, child: Center(child: Text('الإجراءات'))),
      ],
    );
  }
}

class _EventRow extends StatelessWidget {
  final String name;
  final String date;
  final String users;

  const _EventRow(
      {required this.name, required this.date, required this.users});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Center(child: Text(name))),
          Expanded(child: Center(child: Text(date))),
          Expanded(child: Center(child: Text(users))),
          const SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit, color: Color(0xFF6C5DD3), size: 20),
                SizedBox(width: 10),
                Icon(Icons.delete, color: Color(0xFF6C5DD3), size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
