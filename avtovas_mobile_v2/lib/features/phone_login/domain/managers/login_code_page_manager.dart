import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../../auth/data/models/request_code/request_code_method.dart';
import '../../../auth/domain/interactors/phone_opt_auth_interactor.dart';
import '../models/data/login_code_body_data.dart';
import '../models/states/login_code_body_state.dart';

class LoginCodePageManager extends BasePageManager<LoginCodeBodyState>
    implements AsyncLifecycle {
  LoginCodePageManager({
    required PhoneOptAuthInteractor phoneOptAuthInteractor,
    required LoginCodeBodyData data,
  }) : _phoneOptAuthInteractor = phoneOptAuthInteractor,
       super(
         initialState: BasePageDataState(
           data: LoginCodeBodyState(
             requestAbleAt: data.requestAbleAt,
             phone: data.phone,
           ),
         ),
       );

  final PhoneOptAuthInteractor _phoneOptAuthInteractor;

  @override
  Future<void> onInit() async {}

  @override
  Future<void> onDispose() async {}

  Future<void> onCodeSubmit() async {
    final data = state.data;
    if (data == null) {
      assert(false, '[onCodeSubmit] called with data==null');
      return;
    }

    await sendData(
      () async => _verifyCode(phone: data.phone, code: data.enteredCode),
      _handleErrorCallback,
    );
  }

  void onCodeUpdated(String code) {
    final data = state.data;
    if (data == null) {
      assert(false, '[onCodeSubmit] called with data==null');
      return;
    }

    state = BasePageDataState(data: data.copyWith(enteredCode: code));
  }

  Future<void> onRequestSms() async {
    final data = state.data;
    if (data == null) {
      return;
    }

    await sendData(
      () async => _requestCodeVerification(data.phone, RequestCodeMethod.sms),
      _handleErrorCallback,
    );
  }

  Future<void> onRequestCall() async {
    final data = state.data;
    if (data == null) {
      return;
    }

    await sendData(
      () async =>
          _requestCodeVerification(data.phone, RequestCodeMethod.phoneCall),
      _handleErrorCallback,
    );
  }

  Future<void> onTermsTap() async {
    // TODO(lmepol): реализовать переход на условия
    throw UnimplementedError();
  }

  Future<void> onPrivacyPolicyTap() async {
    // TODO(lmepol): реализовать переход на политику
    throw UnimplementedError();
  }

  Future<LoginCodeBodyState> _requestCodeVerification(
    String phone,
    RequestCodeMethod method,
  ) async {
    final result = await _phoneOptAuthInteractor.sendCode(
      phone: phone,
      method: method,
    );
    return LoginCodeBodyState(
      phone: result.phone,
      requestAbleAt: DateTime.now().add(result.requestAfter),
    );
  }

  Future<LoginCodeBodyState> _verifyCode({
    required String phone,
    required String code,
  }) async {
    await _phoneOptAuthInteractor.verifyCode(
      phone: phone,
      code: int.parse(code),
    );
    return LoginCodeBodyState(
      phone: phone,
      enteredCode: code,
      requestAbleAt: DateTime.now(),
    );
  }

  BasePageState<LoginCodeBodyState> _handleErrorCallback(
    BasePageState<LoginCodeBodyState> state,
    Object error,
  ) {
    return BasePageState.error(data: state.data, error: error);
  }
}
