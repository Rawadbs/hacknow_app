import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/helpers/styles.dart';

class SearchTeamPage extends StatelessWidget {
  final List<Map<String, dynamic>> teams = [
    {
      'name': 'فريق المبتكرين التقنيين',
      'description': 'هاكاثون عالمي 2024',
      'members': '3/5 أعضاء',
      'avatars': [
        'assets/images/avatar.png',
        'assets/images/avatar.png',
        'assets/images/avatar.png',
      ],
      'roles': ['مصمم واجهات', 'مطوّر واجهة أمامية'],
      'skills': ['React', 'Figma', 'UI/UX'],
    },
    {
      'name': 'رواد الذكاء الاصطناعي',
      'description': 'هاكاثون القمة للذكاء الاصطناعي',
      'members': '2/4 أعضاء',
      'avatars': [
        'assets/images/avatar.png',
        'assets/images/avatar.png',
      ],
      'roles': ['مهندس تعلم آلي', 'مطوّر خلفية'],
      'skills': ['Python', 'TensorFlow', 'Node.js'],
    },
    {
      'name': 'خبراء التصميم',
      'description': 'هاكاثون أسبوع التصميم',
      'members': '1/3 أعضاء',
      'avatars': [],
      'roles': ['مصمم جرافيك'],
      'skills': ['Photoshop', 'Illustrator'],
    },
  ];

  SearchTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('البحث عن فريق'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ]),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FilterChipWidget(label: 'الذكاء الاصطناعي'),
                  FilterChipWidget(label: 'التطوير'),
                  FilterChipWidget(label: 'التصميم'),
                  FilterChipWidget(label: 'جميع الفرق', selected: true),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ...teams.map((team) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffF3F4F6)),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        team['name'],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        team['description'],
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        team['members'],
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: (team['avatars'] as List).map((avatar) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: AssetImage(avatar),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: (team['roles'] as List).map((role) {
                          return Chip(
                            color:
                                const WidgetStatePropertyAll(Color(0xffF3F4F6)),
                            side: BorderSide.none,
                            label: Text(role),
                            backgroundColor: Colors.indigo.shade50,
                            labelStyle: const TextStyle(color: Colors.indigo),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: (team['skills'] as List).map((skill) {
                          return Chip(
                            color:
                                const WidgetStatePropertyAll(Color(0xffF3F4F6)),
                            side: BorderSide.none,
                            label: Text(skill),
                            backgroundColor: Colors.grey.shade200,
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'طلب الانضمام',
                            style: TextStyles.font16BoldWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  const FilterChipWidget(
      {super.key, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        side: BorderSide(
          color: selected ? ColorsManger.primaryColor : Colors.transparent,
        ),
        onSelected: (_) {},
        selectedColor: ColorsManger.primaryColor,
        labelStyle: TextStyle(
          color: selected ? Colors.white : Colors.black,
        ),
        backgroundColor: const Color(0xffF3F4F6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), side: BorderSide.none),
      ),
    );
  }
}
