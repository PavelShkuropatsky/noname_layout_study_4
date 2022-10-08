part of wizard_page_item;

class _Description extends StatelessWidget {
  const _Description({
    super.key,
    required this.pageData,
  });

  final WizardPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        pageData.description,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
