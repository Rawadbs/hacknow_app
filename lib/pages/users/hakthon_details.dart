import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/helpers/styles.dart';
import 'package:hacknow_app/pages/users/support_hackthon.dart';

class HakthonDetails extends StatelessWidget {
  const HakthonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'تفاصيل الفعالية',
            style: TextStyles.font16BoldBlack,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/event_details.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'هاكاثون تك فيوجن 2024',
              style: TextStyles.font20BoldBlack,
            ),
            const SizedBox(height: 4),
            Text(
              'تحدي الابتكار لمدة 48 ساعة',
              style: TextStyles.font16Mreggray,
            ),
            const SizedBox(height: 16),
            Transform.translate(
              offset: const Offset(-250, 0),
              child: const Row(
                children: [
                  Text('15-17 مارس 2024'),
                  SizedBox(width: 8),
                  Icon(Icons.calendar_today, size: 20, color: Colors.indigo),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Transform.translate(
              offset: const Offset(-250, 0),
              child: const Row(
                children: [
                  Text('مركز الابتكار التقني'),
                  SizedBox(width: 15),
                  Icon(Icons.location_on, size: 20, color: Colors.indigo),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'عن الفعالية',
              style: TextStyles.font20BoldBlack,
            ),
            const SizedBox(height: 8),
            Text(
              'انضم إلينا في هاكاثون مثير لمدة 48 ساعة حيث يجتمع الطلاب لحل تحديات العالم الحقيقي من خلال التكنولوجيا والابتكار. اعمل مع أشخاص مشابهين في التفكير واصنع شيئًا مذهلاً!',
              style: TextStyles.font16Mreggray,
            ),
            const SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const InfoItem(
                          icon: Icons.group,
                          label: 'موجودون',
                          subLabel: 'من الصناعة'),
                      Row(
                        children: [
                          Transform.translate(
                            offset: const Offset(-75, 3),
                            child: SvgPicture.asset(
                                'assets/images/Saudi_Riyal_black.svg'),
                          ),
                          const InfoItem(
                              icon: Icons.emoji_events,
                              label: '100000 ',
                              subLabel: 'جوائز'),
                        ],
                      ),
                    ]),
                const SizedBox(height: 16),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Transform.translate(
                        offset: const Offset(-5, 0),
                        child: const InfoItem(
                            icon: Icons.handshake,
                            label: 'فرص',
                            subLabel: 'للتواصل'),
                      ),
                      Transform.translate(
                        offset: const Offset(-10, 0),
                        child: const InfoItem(
                            icon: Icons.fastfood,
                            label: 'وجبات مجانية',
                            subLabel: 'وهدايا'),
                      ),
                    ])
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                'سجل الآن',
                style: TextStyles.font16BoldWhite,
              ),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SupportRequestPage()));
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                side: const BorderSide(color: Colors.indigo),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                'طلب الدعم',
                style: TextStyles.font16BoldPrimaryBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subLabel;

  const InfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.subLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: ColorsManger.primaryColor),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyles.font16BoldBlack,
        ),
        Text(
          subLabel,
          style: TextStyles.font16Mreggray,
        ),
      ],
    );
  }
}
