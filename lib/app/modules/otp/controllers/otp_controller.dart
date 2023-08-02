import 'package:get/get.dart';

class OtpController extends GetxController {
  final List<String> otpValues = ['', '', '', ''];

  void updateOtpValue(int index, String value) {
    if (index >= 0 && index < otpValues.length) {
      otpValues[index] = value;
    }
  }

  final RxInt _timerSeconds = 30.obs;
  final RxBool _isTimerActive = false.obs;

  int get timerSeconds => _timerSeconds.value;
  bool get isTimerActive => _isTimerActive.value;

  void startTimer() {
    _isTimerActive.value = true;
    _timerSeconds.value = 30;
    _startCountdown();
  }

  void _startCountdown() {
    Future.delayed(const Duration(seconds: 1), () {
      if (_timerSeconds.value > 0) {
        _timerSeconds.value--;
        _startCountdown();
      } else {
        _isTimerActive.value = false;
      }
    });
  }
}
