part of start_page_widgets;

class _NavigateButton extends StatelessWidget {
  const _NavigateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pop(context),
        style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: Colors.redAccent.shade400,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: const Text("Back", style: TextStyle(color: Colors.white)));
  }
}
