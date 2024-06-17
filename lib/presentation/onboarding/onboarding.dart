import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_project/presentation/resources/assets_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/color_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/strings_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  List<SliderObject> _getSliderData() => [
    SliderObject(AppStrings.onboardingTitle1, AppStrings.onboardingSubTitle1, ImageAssets.onboardingLogo1),
    SliderObject(AppStrings.onboardingTitle2, AppStrings.onboardingSubTitle2, ImageAssets.onboardingLogo2),
    SliderObject(AppStrings.onboardingTitle3, AppStrings.onboardingSubTitle3, ImageAssets.onboardingLogo3),
    SliderObject(AppStrings.onboardingTitle4, AppStrings.onboardingSubTitle4, ImageAssets.onboardingLogo4),
  ];

  late final List<SliderObject> _list = _getSliderData();

  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      // appBar: AppBar(
      //   backgroundColor: ColorManager.white,
      //   elevation: AppSize.s1_5,
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarColor: ColorManager.white,
      //     statusBarBrightness: Brightness.dark,
      //     statusBarIconBrightness: Brightness.dark
      //   ),
      //
      // ),
      body: PageView.builder(
        controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index){
          setState(() {
            _currentIndex = index;
          });
          },
          itemBuilder: (context, index){




          })
      );
  }
}


class OnboardingPage extends StatelessWidget {
  SliderObject _sliderObject;
  OnboardingPage(this._sliderObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s40,),

        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(
            AppStrings.onboardingTitle1,
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(
            AppStrings.onboardingSubTitle1,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),

        const SizedBox(height: AppSize.s60,),


      ],
    );
  }
}






class SliderObject{
  String title;
  String subtitle;
  String image;

  SliderObject(this.title, this.subtitle, this.image);
}
