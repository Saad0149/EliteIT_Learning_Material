import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class PhoneInputController extends GetxController {
  RxString phoneNumber = ''.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updatePhoneNumber(String number) {
    phoneNumber.value = number;
  }

  void sendOtp(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        Get.offAllNamed('/otp', arguments: verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
