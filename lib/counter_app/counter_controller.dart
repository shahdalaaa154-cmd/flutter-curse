import 'package:get/get.dart';

class CounterController extends GetxController {
RxInt counter = 0.obs;

void add1() {
  counter +=1;
}

void add2() {
  counter +=2;
}
void add3() {
  counter +=3;
}
void reset() {
  counter +=0;
}
}