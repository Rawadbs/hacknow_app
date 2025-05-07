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
          title: Text(
            'طلب الدعم',
            style: TextStyles.font16BoldBlack,
          ),
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
            Center(
              child: Column(
                children: [
                  const Icon(Icons.school, size: 48, color: Colors.indigo),
                  const SizedBox(height: 16),
                  const Text(
                    'طلب دعم لمشاركة الهاكاثون',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontConstant.fontFamily),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'يرجى ملء التفاصيل أدناه لطلب الدعم لمشاركتك في الهاكاثون',
                    textAlign: TextAlign.center,
                    style: TextStyles.font14BoldDarkBlue,
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
                  const Text(
                    'الاسم الكامل',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: FontConstant.fontFamily),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'أدخل اسمك الكامل',
                        hintStyle: TextStyles.font16MediumLightGray,
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
                  const Text(
                    'رقم الطالب',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: FontConstant.fontFamily),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'أدخل رقم الطالب الخاص بك',
                        hintStyle: TextStyles.font16MediumLightGray,
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
                  const Text(
                    'البريد الجامعي',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: FontConstant.fontFamily),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'your.email@university.edu',
                        hintStyle: TextStyles.font16MediumLightGray,
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
                  const Text(
                    'اختر الهاكاثون',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: FontConstant.fontFamily),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        hintText: 'اختر فعالية الهاكاثون',
                        hintStyle: TextStyles.font16MediumLightGray,
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
                  const Text(
                    'مبررات الطلب',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: FontConstant.fontFamily),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText:
                            'اشرح سبب حاجتك للدعم وكيف سيفيد مسيرتك الأكاديمية',
                        hintStyle: TextStyles.font16MediumLightGray,
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
                  Center(
                    child: Text(
                      'سيتم مراجعة طلبك خلال 3-5 أيام عمل',
                      style: TextStyles.font16MediumLightGray,
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
