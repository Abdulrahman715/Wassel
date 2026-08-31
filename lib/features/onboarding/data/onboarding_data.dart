import 'package:wassel/core/utils/app_strings.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/features/onboarding/data/models/onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> pages = [
    OnboardingModel(
      imagePath: AssetData.cornImage,
      title: AppStrings.easyShopping,
      description: AppStrings.easyShoppingDescription,
    ),
    OnboardingModel(
      imagePath: AssetData.payImage,
      title: AppStrings.trackPackages,
      description: AppStrings.trackPackagesDescription,
    ),
    OnboardingModel(
      imagePath: AssetData.deliveryImage,
      title: AppStrings.fastAndReliable,
      description: AppStrings.fastAndReliableDescription,
    ),
  ];
}