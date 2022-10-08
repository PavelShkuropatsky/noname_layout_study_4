part of wizard_page_item;

class _PageNumberByDots extends StatelessWidget {
  final int pageNum;

  const _PageNumberByDots({Key? key, required this.pageNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _PageNumberDot(isCurrent: pageNum == 1),
        _PageNumberDot(isCurrent: pageNum == 2),
        _PageNumberDot(isCurrent: pageNum == 3),
        _PageNumberDot(isCurrent: pageNum == 4),
      ],
    );
  }
}
