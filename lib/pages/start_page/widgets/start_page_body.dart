library start_page_widgets;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part '_image.dart';

part '_navigate_button.dart';

part '_navigate_button_bar.dart';

part '_page_number_dot.dart';

part '_page_numbers_by_dots.dart';

class StartPageBody extends StatelessWidget {
  const StartPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [_Image()],
              ),
            ),
          ),
        ),
        const _NavigateButtonBar(),
      ],
    );
  }
}
