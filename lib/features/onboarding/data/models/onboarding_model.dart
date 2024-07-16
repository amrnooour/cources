import 'package:cources/core/utils/app_assets.dart';

class OnboardingModel {
  final String image;
  final String title;

  OnboardingModel({required this.image, required this.title});
}

List<OnboardingModel> onboardingItem = [
  OnboardingModel(image: AppAssets.image1, title: AppAssets.title1),
  OnboardingModel(image: AppAssets.image2, title: AppAssets.title2),
  OnboardingModel(image: AppAssets.image3, title: AppAssets.title3),

];
