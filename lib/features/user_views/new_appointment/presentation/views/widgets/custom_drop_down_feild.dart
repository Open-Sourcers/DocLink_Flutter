import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDownFeild extends StatefulWidget {
  const CustomDropDownFeild({super.key});

  @override
  State<CustomDropDownFeild> createState() => _CustomDropDownFeildState();
}

class _CustomDropDownFeildState extends State<CustomDropDownFeild> {
  final List<String> items = [
    'Jule , 2022',
    'Mar , 2022',
    'Nov , 2022',
    'Dec , 2022',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: const Text(
          'Select Item',
          style: Styless.textRegular14,
        ),
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: Styless.textSemiBold15),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          elevation: 1,
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(width: 1, color: AppColors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          width: 140,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
      ),
    );
  }
}
