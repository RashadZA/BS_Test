part of 'design_utils.dart';

class CustomHW {
  static double getWidth({required double width, double padding = defaultLeftRightPadding}){
    RxDouble i = 0.0.obs;
    RxDouble w = 0.0.obs;
    i.value = Get.width - padding;
    w.value = width*i.value/100;
    // print("Device width: ${Get.height} After Padding: $w");
    return w.value;
  }
  static double getHeight({required double height, double padding = defaultLeftRightPadding}){
    RxDouble i = 0.0.obs;
    RxDouble h = 0.0.obs;
    i.value = Get.height - padding;
    h.value = height*i.value/100;
    // print("Device height: ${Get.height} After Padding: $h");
    return h.value;
  }
  static double getWidthWithoutPaddingAndValue({required double width, double padding = defaultLeftRightPadding}){
    RxDouble w = 0.0.obs;
    w.value = Get.width - width - padding;
    // print("Device width: ${Get.height} Without Padding And Value: $w");
    return w.value;
  }
  static double getHeightWithoutPaddingAndValue({required double height, double padding = defaultLeftRightPadding}){
    RxDouble h = 0.0.obs;
    h.value = Get.height - height - padding;
    print("Device height: ${Get.height} Without Padding And Value: $h");
    return h.value;
  }
}