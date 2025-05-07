import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/styles.dart';

class ParticipantsPage extends StatelessWidget {
  const ParticipantsPage({super.key});

  final List<Map<String, String>> participants = const [
    {'name': 'رواد بن صديق', 'university': 'جامعة أم القرى'},
    {'name': 'خالد الغامدي', 'university': 'جامعة الملك عبد العزيز'},
    {'name': 'سارا اللهيبي', 'university': 'جامعة أم القرى'},
    {'name': 'سعد صالح', 'university': 'جامعة الباحة'},
    {'name': 'محمد علي', 'university': 'جامعة الإمام'},
    {'name': 'نورا فهد', 'university': 'جامعة الملك سعود'},
    {'name': 'يزيد سعد', 'university': 'جامعة الملك خالد'},
    {'name': 'اروى يحيى', 'university': 'جامعة تبوك'},
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'المشاركون',
            style: TextStyles.font20BoldBlack,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '٨ طالب مسجلين',
                  style: TextStyles.font14MediumGray,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: participants.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final participant = participants[index];
                  final initials = _getInitials(participant['name']!);
                  return ListTile(
                    trailing: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: Text(
                        initials,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    title: Text(
                      participant['name']!,
                      style: TextStyles.font14RegularBlack,
                    ),
                    subtitle: Text(
                      participant['university']!,
                      style: TextStyles.font14MediumGray,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.split(' ');
    if (parts.length >= 2) {
      return parts[0][0] + parts[1][0];
    } else if (parts.isNotEmpty) {
      return parts[0][0];
    }
    return '';
  }
}
