part of wizard_page_item;

class _NavigateButton extends StatelessWidget {
  final Color color;
  final String text;
  final void Function()? onPress;

  const _NavigateButton({Key? key, required this.color, required this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
