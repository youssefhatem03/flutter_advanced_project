import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_project/presentation/resources/assets_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/color_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/strings_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/values_manager.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onboardingTitle1,
            AppStrings.onboardingSubTitle1, ImageAssets.onboardingLogo1),
        SliderObject(AppStrings.onboardingTitle2,
            AppStrings.onboardingSubTitle2, ImageAssets.onboardingLogo2),
        SliderObject(AppStrings.onboardingTitle3,
            AppStrings.onboardingSubTitle3, ImageAssets.onboardingLogo3),
        SliderObject(AppStrings.onboardingTitle4,
            AppStrings.onboardingSubTitle4, ImageAssets.onboardingLogo4),
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
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnboardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.skip,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.displayLarge,

                ),
              ),
            ),

            _getBottomSheetWidget()

          ],
        ),
      ),
    );
  }


  
  
  Widget _getBottomSheetWidget(){
    return Container(
      color: ColorManager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // Left Arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.leftArrowIc),
              ),
              onTap: (){
                _pageController.animateToPage(
                    _getPreviousIndex(),
                    duration: const Duration(microseconds: DurationConstants.d300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),


          // Circles
          Row(
            children: [
              for (int i = 0; i < _list.length; i ++)
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: _createCircleBar(i),
                )
            ],
          ),


          // Right Arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.leftArrowIc),
              ),
              onTap: (){
                _pageController.animateToPage(
                    _getNextIndex(),
                    duration: const Duration(microseconds: DurationConstants.d300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),

        ],
      ),
    );
  }  
  
  
  Widget _createCircleBar(int index){
    if (index == _currentIndex){
      return SvgPicture.asset(ImageAssets.hollowCircleIc);
    } else {
      return SvgPicture.asset(ImageAssets.SelectedCircleIc);
    }
  }
  
  _getPreviousIndex(){
    int _previousIndex = _currentIndex--;
    if (_previousIndex == -1) {
      _currentIndex = _list.length-1;
    }
    return _currentIndex;
  }

  _getNextIndex(){
    int _nextIndex = _currentIndex++;
    if (_nextIndex >= _list.length) {
      _currentIndex = 0;
    }
    return _currentIndex;
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
        const SizedBox(
          height: AppSize.s100,
        ),
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
        const SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(_sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subtitle;
  String image;

  SliderObject(this.title, this.subtitle, this.image);
}


