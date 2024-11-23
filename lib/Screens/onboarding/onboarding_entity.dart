class OnboardingEntity {
  final String? image;
  final String? title;
  final String? description;

  OnboardingEntity(
      {required this.image, required this.title, required this.description});
  static List<OnboardingEntity> onBordingData = [
    OnboardingEntity(
      image: "onboarding_1.png",
      title: "On demand & runtime \n location",
      description: "Pick from your location at \n your preference",
    ),
    OnboardingEntity(
      image: "onboarding_2.png",
        title: "Anything, anytime,\nanywhere.",
        description: "Whether it's a parcel, a cheque or\nan important doc, we'll parcel."
    ),
    OnboardingEntity(
      image: "onboarding_3.png",
        title: "Live track\nyour shipments",
        description: "See a realtime view of your courier\non the map on the day of delivery."
    ),
  ];
}
