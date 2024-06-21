abstract class BaseViewModel with BaseViewModelInputs, BaseViewModelOutputs{

}




mixin BaseViewModelInputs{

  void start(){}   // things to do with init
  void dispose(){} // things to do before delete

}




mixin BaseViewModelOutputs{
  void start(){}   // things to do with init

}

