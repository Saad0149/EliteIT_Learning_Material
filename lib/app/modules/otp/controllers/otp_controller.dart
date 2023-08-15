import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../location/views/location_view.dart';

class OtpController extends GetxController {
  final List<String> otpValues = ['', '', '', '', '', ''];
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateOtpValue(int index, String value) {
    if (index >= 0 && index < otpValues.length) {
      otpValues[index] = value;
    }
  }

  Future<void> verifyOtp(String verificationId) async {
    String otp = otpValues.join('');
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      UserCredential authResult = await _auth.signInWithCredential(credential);
      User? user = authResult.user;
      if (user != null) {
        //await _auth.signInWithCredential(credential);
        Get.offAll(LocationView());
      }
    } catch (e) {
      Get.snackbar('Error', 'Invalid OTP. Please try again.',
          snackPosition: SnackPosition.BOTTOM);
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
