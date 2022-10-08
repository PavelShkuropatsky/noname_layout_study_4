part of wizard_page_item;

class _NavigateButtonBar extends StatelessWidget {
  const _NavigateButtonBar({
    super.key,
    required this.pageNum,
    required this.pageData,
    required this.onPrevPress,
    required this.onNextPress,
    required this.onStartPress,
  });

  final int pageNum;
  final WizardPageModel pageData;
  final void Function() onPrevPress;
  final void Function() onNextPress;
  final void Function() onStartPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Opacity(
            opacity: pageData.isFirst ? 0 : 1,
            child: _NavigateButton(
              color: Colors.green.shade800,
              text: "Previous",
              onPress: pageData.isFirst ? null : onPrevPress,
            ),
          ),
          _PageNumberByDots(pageNum: pageNum),
          _NavigateButton(
            color: pageData.isLast ? Colors.redAccent.shade400 : Colors.green.shade800,
            text: pageData.isLast ? "Start" : "Next",
            onPress: () => pageData.isLast ? onStartPress() : onNextPress(),
          ),
        ],
      ),
    );
  }
}
