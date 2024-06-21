import 'dart:async';

import 'package:flutter_advanced_project/domain/model.dart';
import 'package:flutter_advanced_project/presentation/base/baseviewmodel.dart';

import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';

class OnboardingViewModel extends BaseViewModel with OnboardingViewmodelInputs, OnboardingViewmodelOutputs{
  final StreamController _streamController = StreamController<SliderViewObject>();

  late final List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void start() {
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  int goNext() {
    int _nextIndex = _currentIndex++;
    if (_nextIndex >= _list.length) {
      _currentIndex = 0;
    }
    return _currentIndex;
  }

  @override
  int goPrevious() {
    int _previousIndex = _currentIndex--;
    if (_previousIndex == -1) {
      _currentIndex = _list.length-1;
    }
    return _currentIndex;
}

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderModelObject) => sliderModelObject);


  // private functions here
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


  _postDataToView(){
    inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }

}


mixin OnboardingViewmodelInputs{

  void goNext();

  void goPrevious();

  void onPageChanged(int index);

  Sink get inputSliderViewObject;
}



mixin OnboardingViewmodelOutputs{

  Stream<SliderViewObject> get outputSliderViewObject;
}


class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}