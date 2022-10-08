part of wizard_page_item;

class _Title extends StatelessWidget {
  const _Title({
    super.key,
    required this.pageData,
  });

  final WizardPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        pageData.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          color: Colors.teal.shade800,
        ),
      ),
    );
  }
}
