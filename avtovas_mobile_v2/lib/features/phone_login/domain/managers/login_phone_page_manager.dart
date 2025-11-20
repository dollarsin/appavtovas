import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/navigation/navigation_manager.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../../../shared/ui/ui_kit/widgets/phone_input_fild/models/country_code_model.dart';
import '../../../../shared/ui/ui_kit/widgets/phone_input_fild/models/formatter_model.dart';
import '../../../auth/data/models/request_code/request_code_method.dart';
import '../../../auth/domain/interactors/phone_opt_auth_interactor.dart';
import '../models/data/login_code_body_data.dart';
import '../models/states/login_phone_body_state.dart';

const _countryCodes = [
  CountryCodeModel(
    name: 'Россия',
    code: 'RU',
    dialCode: '+7',
    phoneHint: '(XXX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XXX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Белару́сь',
    code: 'BY',
    dialCode: '+375',
    phoneHint: ' (XX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Қазақстан',
    code: 'KZ',
    dialCode: '+7',
    phoneHint: '(XXX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XXX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'O‘zbekiston',
    code: 'UZ',
    dialCode: '+998',
    phoneHint: ' (XX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Türkiye',
    code: 'TR',
    dialCode: '+90',
    phoneHint: ' (XXX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XXX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Türkmenistan',
    code: 'TM',
    dialCode: '+993',
    phoneHint: ' (XX) XX-XX-XX',
    formatter: FormatterModel(mask: '(XX) XX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Україна',
    code: 'UA',
    dialCode: '+380',
    phoneHint: ' (XXX) XXXXXX',
    formatter: FormatterModel(mask: '(XXX) XXXXXX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Кыргызстан',
    code: 'KG',
    dialCode: '+996',
    phoneHint: ' (XXX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XXX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'საქართველო',
    code: 'GE',
    dialCode: '+995',
    phoneHint: ' (XX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Тоҷикистон',
    code: 'TJ',
    dialCode: '+992',
    phoneHint: ' (XX) XXX-XX-XX',
    formatter: FormatterModel(mask: '(XX) XXX-XX-XX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Հայաստան',
    code: 'AM',
    dialCode: '+374',
    phoneHint: ' (XX) XXX-XXX',
    formatter: FormatterModel(mask: '(XX) XXX-XXX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Azərbaycan',
    code: 'AZ',
    dialCode: '+994',
    phoneHint: ' (XX) XX-XX-XX',
    formatter: FormatterModel(mask: '(XX) XXX-XXX', filters: {'X': r'\d'}),
  ),
  CountryCodeModel(
    name: 'Moldova',
    code: 'MD',
    dialCode: '+373',
    phoneHint: ' XXXXXXXXXX',
    formatter: FormatterModel(mask: 'XXXXXXXXXX', filters: {'X': r'\d'}),
  ),
];

class LoginPhonePageManager extends BasePageManager<LoginPhoneBodyState>
    implements AsyncLifecycle {
  LoginPhonePageManager({
    required PhoneOptAuthInteractor phoneOptAuthInteractor,
    required NavigationManager navigationManager,
  }) : _phoneOptAuthInteractor = phoneOptAuthInteractor,
       _navigationManager = navigationManager,
       super(
         initialState: BasePageDataState(
           data: LoginPhoneBodyState(
             countryCodes: _countryCodes,
             selectedCountryCode: _countryCodes.first,
           ),
         ),
       );

  final PhoneOptAuthInteractor _phoneOptAuthInteractor;

  final NavigationManager _navigationManager;

  @override
  Future<void> onInit() async {}

  @override
  Future<void> onDispose() async {}

  Future<void> onPhoneSubmit() async {
    final data = state.data;
    if (data == null) {
      return;
    }

    await sendData(
      () async => _requestCallCodeVerification(data),
      _handleErrorCallback,
    );
  }

  void onCountryCodeUpdated(CountryCodeModel selectedCountryCode) {
    final data = state.data;
    if (data == null) {
      return;
    }

    state = BasePageDataState(
      data: data.copyWith(selectedCountryCode: selectedCountryCode),
    );
  }

  Future<void> onPhoneUpdated({required String phone}) async {
    final data = state.data;
    if (data == null) {
      return;
    }

    state = BasePageDataState(data: data.copyWith(phone: phone));
  }

  Future<void> onTermsAcceptChanged({required bool accepted}) async {
    final data = state.data;
    if (data == null) {
      return;
    }

    state = BasePageDataState(data: data.copyWith(isTermsConfirmed: accepted));
  }

  Future<void> onPrivacyPolicyConfirmChanged({required bool confirmed}) async {
    final data = state.data;
    if (data == null) {
      return;
    }

    state = BasePageDataState(
      data: data.copyWith(isPrivacyPolicyConfirmed: confirmed),
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

  Future<LoginPhoneBodyState> _requestCallCodeVerification(
    LoginPhoneBodyState currentData,
  ) async {
    final result = await _phoneOptAuthInteractor.sendCode(
      phone: '${currentData.selectedCountryCode.dialCode}${currentData.phone}',
      method: RequestCodeMethod.phoneCall,
    );

    _navigationManager.goRelative(
      AppRoutesPaths.code,
      extra: LoginCodeBodyData(
        phone: result.phone,
        requestAbleAt: DateTime.now().add(result.requestAfter),
      ),
    );

    return currentData.copyWith(
      requestAbleAt: DateTime.now().add(result.requestAfter),
    );
  }

  BasePageState<LoginPhoneBodyState> _handleErrorCallback(
    BasePageState<LoginPhoneBodyState> state,
    Object error,
  ) {
    return BasePageState.error(data: state.data, error: error);
  }
}
