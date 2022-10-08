import 'package:flutter/material.dart';
import 'package:noname_layout_study_4/model/wizard_page_model.dart';
import 'package:noname_layout_study_4/pages/wizard_page/widgets/wizard_page_item.dart';

import '../start_page/start_page.dart';

class WizardPage extends StatefulWidget {
  const WizardPage({Key? key}) : super(key: key);

  @override
  State<WizardPage> createState() => _WizardPageState();
}

class _WizardPageState extends State<WizardPage> with AutomaticKeepAliveClientMixin {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          3,
          (index) => WizardPageItem(
            pageNum: index + 1,
            pageData: WizardPageModel.dataItems[index],
            onNextPress: () => onNextPress(index),
            onPrevPress: () => onPrevPress(index),
            onStartPress: () => onStartPress(context),
          ),
        ),
      ),
    );
  }

  onNextPress(int index) => _pageController.animateToPage(
        index + 1,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );

  onPrevPress(int index) => _pageController.animateToPage(
        index - 1,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );

  onStartPress(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => const StartPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final index = WizardPageModel.dataItems.length - 1;
          return Stack(
            children: [
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(-1, 0),
                ).animate(animation),
                /// [Scaffold(..)] - is the copy of last page from [PageView] in this [widget]
                child: Scaffold(
                  body: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      WizardPageItem(
                        pageNum: index + 1,
                        pageData: WizardPageModel.dataItems[index],
                        onNextPress: () => onNextPress(index),
                        onPrevPress: () => onPrevPress(index),
                        onStartPress: () => onStartPress(context),
                      ),
                    ],
                  ),
                ),
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            ],
          );
        },
      ),
    );
  }
}
