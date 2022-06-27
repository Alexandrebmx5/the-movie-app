import 'package:flutter_easyloading/flutter_easyloading.dart';

EasyLoading? easyLoading(){
  EasyLoading.show(
    status: 'Carregando',
    maskType: EasyLoadingMaskType.black,
  );
}

EasyLoading? dismiss(){
  Future.delayed(Duration(seconds: 2), (){
    EasyLoading.dismiss();
  });
}

EasyLoading? toastTop(String msg){
  EasyLoading.showToast(
    msg,
    duration: Duration(seconds: 2),
    toastPosition: EasyLoadingToastPosition.top,
  );
}

EasyLoading? toastBottom(String msg){
  EasyLoading.showToast(
    msg,
    duration: Duration(seconds: 2),
    toastPosition: EasyLoadingToastPosition.bottom,
  );
}
