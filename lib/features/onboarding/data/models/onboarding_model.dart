import 'package:flutter_application_1/core/utils/app_assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subtitle;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    image: Assets.imagesOnboardingOne,
    title: 'Explore The history with \n Dalel in a smart way',
    subtitle:
        'Using our app’s history libraries \n you can find many historical periods',
  ),
  OnboardingModel(
    image: Assets.imagesOnboardingTwo,
    title: 'From every place \n on earth',
    subtitle: 'A big variety of ancient places \n from all over the world',
  ),
  OnboardingModel(
    image: Assets.imagesOnboadingThree,
    title: 'Using modern AI technology for better user experience',
    subtitle:
        'AI provide recommendations and helps you to continue the search journey',
  ),
];
