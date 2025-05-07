import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/helpers/styles.dart';
import 'package:hacknow_app/pages/shared/who_you_are.dart';
import 'package:hacknow_app/pages/users/hakthon_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> events = [
    {
      'title': 'تحدي الابتكار التقني',
      'date': '25-26 مارس 2025',
      'location': 'جامعة ستانفورد',
      'prize': '10000 ',
      'image': 'assets/images/event1.png',
    },
    {
      'title': 'هاكاثون الحلول الذكية',
      'date': '2-4 إبريل 2025',
      'location': 'فعالية افتراضية',
      'prize': '200000 ',
      'image': 'assets/images/event2.png',
    },
    {
      'title': 'سباق التصميم 2025',
      'date': '15 إبريل 2025',
      'location': 'معهد MIT',
      'prize': '200000 ',
      'image': 'assets/images/event3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhoAreYouPage()));
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 0),
          Container(
            width: 350,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xffF3F4F6),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const SizedBox(width: 150),
                Text(
                  'ابحث عن الهاكاثونات والمسابقات',
                  style: TextStyles.font14MediumLightGray,
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.search,
                    color: Color(0xff9CA3AF),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/featured.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManger.primaryColor,
                  ),
                  onPressed: () {},
                  child:
                      Text('جميع الفعاليات', style: TextStyles.font14regWhite)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF3F4F6),
                  ),
                  onPressed: () {},
                  child:
                      Text('هاكاثونات', style: TextStyles.font14MediumBlack)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF3F4F6),
                  ),
                  onPressed: () {},
                  child: Text('مسابقات البرمجة',
                      style: TextStyles.font14MediumBlack)),
            ],
          ),
          const SizedBox(height: 16),
          ...events.map((event) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xffF3F4F6)),
              ),
              child: ListTile(
                titleTextStyle: TextStyles.font16MediumBlack,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    event['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Transform.translate(
                    offset: const Offset(140, 0), child: Text(event['title']!)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 16,
                          color: Color(0xff4B5563),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          event['date']!,
                          style: TextStyles.font14Mreggray,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: Color(0xff4B5563),
                        ),
                        const SizedBox(width: 4),
                        Text(event['location']!,
                            style: TextStyles.font14Mreggray),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.emoji_events_outlined,
                            size: 16, color: Color(0xff4B5563)),
                        const SizedBox(width: 4),
                        SvgPicture.asset('assets/images/Saudi_Riyal_black.svg'),
                        const SizedBox(width: 4),
                        Text(
                          event['prize']!,
                          style: const TextStyle(
                            color: Color(0xff232020),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Transform.translate(
                  offset: const Offset(0, 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HakthonDetails(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManger.primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('تسجيل', style: TextStyles.font14regWhite),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
