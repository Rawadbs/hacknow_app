import 'package:flutter/material.dart';

class CreateHackathonPage extends StatelessWidget {
  const CreateHackathonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('إنشاء هاكاثون',
              style: TextStyle(color: Colors.black)),
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('هاكاثون جديد',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const Text('املأ التفاصيل أدناه',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                const SizedBox(height: 24),
                _ImageUploader(),
                const SizedBox(height: 20),
                _LabeledTextField(
                  label: 'اسم الهاكاثون',
                  hint: 'أدخل اسم الهاكاثون',
                  required: true,
                ),
                const SizedBox(height: 16),
                _LabeledTextField(
                  label: 'الوصف',
                  hint: 'اكتب وصف الهاكاثون',
                  required: true,
                  maxLines: 3,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _LabeledTextField(
                        label: 'تاريخ النهاية',
                        hint: 'اختر التاريخ',
                        required: true,
                        icon: Icons.calendar_today,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _LabeledTextField(
                        label: 'تاريخ البداية',
                        hint: 'اختر التاريخ',
                        required: true,
                        icon: Icons.calendar_today,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _LabeledTextField(
                  label: 'الموقع',
                  hint: 'أدخل الموقع',
                  required: true,
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 16),
                _LabeledTextField(
                  label: 'رابط التسجيل',
                  hint: 'أدخل رابط التسجيل',
                  icon: Icons.link,
                ),
                const SizedBox(height: 16),
                _LabeledTextField(
                  label: 'البريد الإلكتروني للتواصل',
                  hint: 'أدخل البريد الإلكتروني للتواصل',
                  required: true,
                  icon: Icons.email,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C5DD3),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'إنشاء الهاكاثون',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ImageUploader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade50,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.image_outlined, color: Colors.grey, size: 32),
            SizedBox(height: 8),
            Text('رفع صورة الغلاف', style: TextStyle(color: Colors.black , fontSize: 16)),
            Text('الحد الأقصى للحجم: ٥ ميجابايت',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class _LabeledTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool required;
  final IconData? icon;
  final int maxLines;

  const _LabeledTextField({
    required this.label,
    required this.hint,
    this.required = false,
    this.icon,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: label,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              if (required)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFE5E7EB),
                width: 1,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}