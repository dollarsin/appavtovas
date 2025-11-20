import '../../data/api/request_code_api.dart';
import '../../data/api/verify_code_api.dart';
import '../../data/models/auth_data.dart';
import '../../data/models/request_code/request_code_method.dart';
import '../../data/models/request_code/request_code_request.dart';
import '../../data/models/verify_code/verify_code_request.dart';
import '../models/send_code_result.dart';
import '../repositories/auth_repository.dart';

class PhoneOptAuthInteractor {
  PhoneOptAuthInteractor({
    required AuthRepository authRepository,
    required RequestCodeApi requestCodeApi,
    required VerifyCodeApi verifyCodeApi,
  }) : _authRepository = authRepository,
       _requestCodeApi = requestCodeApi,
       _verifyCodeApi = verifyCodeApi;

  final AuthRepository _authRepository;
  final RequestCodeApi _requestCodeApi;
  final VerifyCodeApi _verifyCodeApi;

  Future<void> logout() async => _authRepository.clearAuthData();

  Future<SendCodeResult> sendCode({
    required String phone,
    required RequestCodeMethod method,
  }) async {
    final result = await _requestCodeApi.post(
      data: RequestCodeRequest(phone: phone, method: method).toJson(),
    );

    return SendCodeResult(
      phone: result.phoneNumber,
      requestAfter: Duration(seconds: result.requestAfter),
    );
  }

  Future<void> verifyCode({required String phone, required int code}) async {
    final result = await _verifyCodeApi.post(
      data: VerifyCodeRequest(phoneNumber: phone, code: code).toJson(),
    );
    await _authRepository.updateAuthData(
      AuthData(
        accessToken: result.accessToken,
        isNewUser: result.isNewUser,
        expiresAt: DateTime.now().add(Duration(seconds: result.expiresIn)),
      ),
    );
  }
}
