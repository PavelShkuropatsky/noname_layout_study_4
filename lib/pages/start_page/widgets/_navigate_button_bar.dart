part of start_page_widgets;

class _NavigateButtonBar extends StatelessWidget {
  const _NavigateButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 70,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Align(alignment: Alignment.centerLeft, child: _NavigateButton()),
                _PageNumberByDots(),
                SizedBox(width: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
