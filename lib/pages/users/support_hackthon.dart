import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/styles.dart';

class SupportRequestPage extends StatefulWidget {
  const SupportRequestPage({super.key});

  @override
  SupportRequestPageState createState() => SupportRequestPageState();
}

class SupportRequestPageState extends State<SupportRequestPage> {
  final _formKey = GlobalKey<FormState>();
  String? selectedHackathon;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('طلب الدعم'),
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
            const SizedBox(height: 24),
            const Center(
              child: Column(
                children: [
                  Icon(Icons.school, size: 48, color: Colors.indigo),
                  SizedBox(height: 16),
                  Text(
                    'طلب دعم لمشاركة الهاكاثون',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'يرجى ملء التفاصيل أدناه لطلب الدعم لمشاركتك في الهاكاثون',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff9CA3AF)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('الاسم الكامل'),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'أدخل اسمك الكامل',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFFE5E7EB),
                              width: 1,
                            )),
                        filled: true,
                        fillColor: const Color(0xffF9FAFB)),
                  ),
                  const SizedBox(height: 16),
                  const Text('رقم الطالب'),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'أدخل رقم الطالب الخاص بك',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFFE5E7EB),
                              width: 1,
                            )),
                        filled: true,
                        fillColor: const Color(0xffF9FAFB)),
                  ),
                  const SizedBox(height: 16),
                  const Text('البريد الجامعي'),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'your.email@university.edu',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFFE5E7EB),
                              width: 1,
                            )),
                        filled: true,
                        fillColor: const Color(0xffF9FAFB)),
                  ),
                  const SizedBox(height: 16),
                  const Text('اختر الهاكاثون'),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        hintText: 'اختر فعالية الهاكاثون',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB),
                            width: 1,
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xffF9FAFB)),
                    items: ['هاكاثون الذكاء الاصطناعي', 'هاكاثون الحلول الذكية']
                        .map((hackathon) => DropdownMenuItem(
                              value: hackathon,
                              child: Text(hackathon),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedHackathon = value;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('مبررات الطلب'),
                  const SizedBox(height: 8),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText:
                            'اشرح سبب حاجتك للدعم وكيف سيفيد مسيرتك الأكاديمية',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFFE5E7EB),
                              width: 1,
                            )),
                        filled: true,
                        fillColor: const Color(0xffF9FAFB)),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // تنفيذ إرسال الطلب
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'إرسال الطلب',
                        style: TextStyles.font16BoldWhite,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'سيتم مراجعة طلبك خلال 3-5 أيام عمل',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
