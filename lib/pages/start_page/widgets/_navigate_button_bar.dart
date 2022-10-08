part of start_page_widgets;

class _NavigateButtonBar extends StatelessWidget {
  const _NavigateButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              _NavigateButton(),
            ],
          ),
          const _PageNumberByDots(),
        ],
      ),
    );
  }
}
