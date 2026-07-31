import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'dropdown_option.dart';

class LabeledDropdownField extends StatelessWidget {
  final String label;
  final String hint;
  final String? value;
  final List<DropdownOption> options;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;

  const LabeledDropdownField({
    required this.validator,
    super.key,
    required this.label,
    required this.hint,
    required this.value,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.cairo(
            fontSize: 14,
            color: AppColors.textDark,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          validator: validator,
          initialValue: value,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down),
          hint: Text(hint, style: GoogleFonts.cairo(color: AppColors.textGrey)),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.fieldFill,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.borderGrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.borderGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.primaryGreen),
            ),
          ),
          items: options
              .map(
                (option) => DropdownMenuItem<String>(
                  value: option.value,
                  child: Text(
                    option.label,
                    style: GoogleFonts.cairo(fontSize: 12.sp),
                  ),
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
