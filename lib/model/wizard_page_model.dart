class WizardPageModel {
  String title;
  String description;
  String imageUrl;

  bool isFirst;
  bool isLast;

  WizardPageModel(
      {required this.title,
      required this.description,
      required this.imageUrl,
      this.isFirst = false,
      this.isLast = false});

  static List<WizardPageModel> dataItems = [
    WizardPageModel(
        title: "Welcome",
        description: "Welcome to best online grocery store. Here you will find all the groceries at one place.",
        imageUrl: "https://raw.githubusercontent.com/ritsat/onboarding_screens/master/assets/images/all_grocery.png",
        isFirst: true),
    WizardPageModel(
        title: "Fresh Fruits & Vegetables",
        description: "Buy farm fresh fruits & vegetables online at the best & affordable process.",
        imageUrl: "https://raw.githubusercontent.com/ritsat/onboarding_screens/master/assets/images/grocery.png"),
    WizardPageModel(
        title: "Quick & Fast Delivery",
        description: "We offers speedy delivery of your groceries, bathroom supplies, baby care products, "
            "pet care items, stationary, etc within 30 minutes at your doorstep.",
        imageUrl: "https://raw.githubusercontent.com/ritsat/onboarding_screens/master/assets/images/delivery.png",
        isLast: true),
  ];
}
