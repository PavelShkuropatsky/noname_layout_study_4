part of start_page_widgets;

class _PageNumberByDots extends StatelessWidget {
  const _PageNumberByDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(width: 20),
        _PageNumberDot(),
        _PageNumberDot(),
        _PageNumberDot(),
        _PageNumberDot(),
      ],
    );
  }
}
