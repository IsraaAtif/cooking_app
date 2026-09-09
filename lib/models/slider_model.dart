class SliderModel {
  final String image;
  final String title;
  final String description;

  SliderModel({
    required this.image,
    required this.title,
    required this.description,
  });

  List<SliderModel> get sliders => [
    SliderModel(
      image: 'assets/images/S1.png',
      title: 'Personalized meal planning',
      description:
          'Pick your week\'s meals in minutes. With over 200 personalization options, eat exactly how you want to eat.',
    ),
    SliderModel(
      image: 'assets/images/S2.png',
      title: 'Personalized meal planning',
      description:
          'Pick your week\'s meals in minutes. With over 200 personalization options, eat exactly how you want to eat.',
    ),
    SliderModel(
      image: 'assets/images/S3.png',
      title: 'Personalized meal planning',
      description:
          'Pick your week\'s meals in minutes. With over 200 personalization options, eat exactly how you want to eat.',
    ),
  ];
}
