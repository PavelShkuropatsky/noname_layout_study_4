part of start_page_widgets;

class _Image extends StatelessWidget {
  const _Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.network(
        "https://i.pinimg.com/736x/d8/02/6c/d8026c50ba408e9867c0f4da74aa745f--white-bows-gift-boxes.jpg",
        loadingBuilder: _loadingBuilder,
      ),
    );
  }

  Widget _loadingBuilder(BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) return child;

    final expectedTotalBytes = loadingProgress.expectedTotalBytes;
    return CircularProgressIndicator(
        value: expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / expectedTotalBytes : null);
  }
}
