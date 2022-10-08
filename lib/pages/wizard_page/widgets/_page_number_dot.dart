part of wizard_page_item;

class _PageNumberDot extends StatelessWidget {
  final bool isCurrent;

  const _PageNumberDot({Key? key, required this.isCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isCurrent ? Colors.green.shade800 : Colors.grey.shade600,
      ),
    );
  }
}
