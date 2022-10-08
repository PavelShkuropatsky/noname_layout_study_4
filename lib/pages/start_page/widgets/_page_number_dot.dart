part of start_page_widgets;

class _PageNumberDot extends StatelessWidget {
  const _PageNumberDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.redAccent.shade400,
      ),
    );
  }
}
