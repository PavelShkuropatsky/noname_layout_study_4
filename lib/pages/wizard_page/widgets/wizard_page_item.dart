library wizard_page_item;

import 'package:flutter/material.dart';
import 'package:noname_layout_study_4/model/wizard_page_model.dart';

part '_description.dart';
part '_image.dart';
part '_navigate_button.dart';
part '_navigate_button_bar.dart';
part '_page_number_dot.dart';
part '_page_numbers_by_dots.dart';
part '_title.dart';

class WizardPageItem extends StatelessWidget {
  final int pageNum;
  final WizardPageModel pageData;
  final void Function() onPrevPress;
  final void Function() onNextPress;
  final void Function() onStartPress;

  const WizardPageItem({
    super.key,
    required this.pageNum,
    required this.pageData,
    required this.onPrevPress,
    required this.onNextPress,
    required this.onStartPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Image(pageData: pageData),
              _Title(pageData: pageData),
              _Description(pageData: pageData),
            ],
          ),
        ),
        _NavigateButtonBar(
          pageNum: pageNum,
          pageData: pageData,
          onNextPress: onNextPress,
          onPrevPress: onPrevPress,
          onStartPress: onStartPress,
        ),
      ],
    );
  }
}
