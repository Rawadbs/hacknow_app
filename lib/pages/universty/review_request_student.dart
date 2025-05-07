import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/styles.dart';

class ReviewStudentActivityPage extends StatelessWidget {
  final TextEditingController _commentController = TextEditingController();

  ReviewStudentActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'مراجعة فعالية الطالب',
            style: TextStyles.font18BoldBlack,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/avatar1.png'),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('رواد بن صديق', style: TextStyles.font16BoldBlack),
                    const SizedBox(height: 4),
                    Text('معرف الطالب: ST2023456',
                        style: TextStyles.font16Mreggray),
                    const SizedBox(height: 4),
                    Text(
                      'علوم الحاسب، السنة الثالثة',
                      style: TextStyles.font16Mreggray,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xffe5e7eb)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'المشاركة في هاكاثون الذكاء الاصطناعي',
                          style: TextStyles.font16MediumBlack,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF7E6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'قيد المراجعة',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                      SizedBox(width: 6),
                      Text(
                        '17-15 ديسمبر 2025',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                      SizedBox(width: 6),
                      Text(
                        'الرياض',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.category, size: 16, color: Colors.grey),
                      SizedBox(width: 6),
                      Text(
                        'نوع الفعالية: هاكاثون',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'مبررات الطالب',
              style: TextStyles.font16MediumBlack,
            ),
            const SizedBox(height: 8),
            Text(
              'أتقدم بطلب الموافقة لحضور المؤتمر الدولي لعلوم الحاسب والذكاء الاصطناعي، حيث سأقدم ورقي البحثية حول "تطبيقات التعلم الآلي في التكنولوجيا التعليمية". ستتيح لي هذه الفرصة تبادل المعرفة مع الباحثين في المجال وتمثيل الجامعة في هذا المحفل الدولي.',
              style: TextStyles.font14MediumGray,
            ),
            const SizedBox(height: 24),
            Text(
              'تعليقات الإدارة',
              style: TextStyles.font16MediumBlack,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _commentController,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'أضف تعليقاتك...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 1,
                      )),
                  filled: true,
                  fillColor: Colors.white),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'موافقة',
                      style: TextStyles.font16BoldWhite,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'رفض',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
