part of start_page_widgets;

class _Image extends StatelessWidget {
  const _Image({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: 350,
              height: 350,
              // because in Web-version this image magically refuses to load from the internet
              child: kIsWeb
                  ? Image.asset("assets/images/d8026c50ba408e9867c0f4da74aa745f--white-bows-gift-boxes.jpg")
                  : Image.network(
                      "https://i.pinimg.com/736x/d8/02/6c/d8026c50ba408e9867c0f4da74aa745f--white-bows-gift-boxes.jpg",
                      loadingBuilder: _loadingBuilder,
                    ),
            ),
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
          value: expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / expectedTotalBytes : null),
    );
  }
}
