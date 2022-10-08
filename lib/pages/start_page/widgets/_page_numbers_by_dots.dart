part of start_page_widgets;

class _PageNumberByDots extends StatelessWidget {
  const _PageNumberByDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _PageNumberDot(),
          _PageNumberDot(),
          _PageNumberDot(),
          _PageNumberDot(),
        ],
      ),
    );
  }
}
