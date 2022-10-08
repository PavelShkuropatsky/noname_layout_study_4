part of wizard_page_item;

class _Image extends StatelessWidget {
  const _Image({
    super.key,
    required this.pageData,
  });

  final WizardPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
            height: 350,
            child: Image.network(pageData.imageUrl, loadingBuilder: _loadingBuilder),
          ),
        ],
      ),
    );
  }

  Widget _loadingBuilder(BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) return child;

    final expectedTotalBytes = loadingProgress.expectedTotalBytes;
    return Center(
      child: CircularProgressIndicator(
        value: expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / expectedTotalBytes : null,
      ),
    );
  }
}
