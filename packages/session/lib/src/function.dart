import 'package:hive/hive.dart';
import 'package:session/src/keys.dart';
import 'package:session/src/models/analysis_answers.dart';
import 'package:session/src/models/sementawis.dart';

class Session {
  Box get _box => Hive.box('theBox');

  /// Setter
  setToken(val) => _box.put(ESession.token.slug, val);

  setTokenRefresh(val) => _box.put(ESession.tokenRefresh.slug, val);

  setFCM(val) => _box.put(ESession.fcm.slug, val);

  setGroupEnabled(val) => _box.put(ESession.enableGroup.slug, val);

  setGroupId(val) => _box.put(ESession.groupId.slug, val);

  setUserGroup(val) => _box.put(ESession.userGroup.slug, val);

  setDeviceId(val) => _box.put(ESession.deviceId.slug, val);

  // setIsProfileCompleted(val) => _box.put(ESession.profileCompleted.slug, val);

  setUserId(val) => _box.put(ESession.userId.slug, val);

  setIsPremium(val) => _box.put(ESession.userPremium.slug, val);

  setIsUserReady(val) => _box.put(ESession.userReady.slug, val);

  setPopupIds(val) => _box.put(ESession.popupIds.slug, val);

  // TRYOUT SIMULATION
  setSmlCategoryId(int val) => _box.put(ESession.smlCategoryId.slug, val);

  setSmlId(int val) => _box.put(ESession.smlId.slug, val);

  setIsRateSmlResult(bool val) => _box.put(ESession.rateSmlResult.slug, val);

  setSmlRateResultId(int val) => _box.put(ESession.rateSmlResultId.slug, val);

  // Voucher
  saveMainVoucher(Sementawis? val) async =>
      await _box.put(ESession.mainVoucher.slug, val);

  saveAffiliateVoucher(Sementawis? val) =>
      _box.put(ESession.affiliateVoucher.slug, val);

  // talent analysis
  saveAnalysisTimer(int? val) =>
      _box.put(ESession.analysisRemainingTime.slug, val);

  saveAnalysisAnswers(List<AnalysisAnswer>? val) =>
      _box.put(ESession.analysisAnswers.slug, val);

  // analytics
  setAnalyticsParams(Map<String, dynamic>? val) =>
      _box.put(ESession.analyticsParam.slug, val);

  setSessionStart(DateTime? val) async =>
      await _box.put(ESession.sessionStart.slug, val.toString());

  setSessionId(String? val) async =>
      await _box.put(ESession.sessionId.slug, val);

  /// Getter
  // COMMON
  String get getToken => _box.get(ESession.token.slug) ?? '';

  String get getTokenRefresh => _box.get(ESession.tokenRefresh.slug) ?? '';

  String get getFCM => _box.get(ESession.fcm.slug) ?? '';

  bool get enableGroup => _box.get(ESession.enableGroup.slug) ?? false;

  int get getGroupId => _box.get(ESession.groupId.slug) ?? 0;

  Map<String, dynamic> get getUserGroup => _box.get(ESession.userGroup.slug);

  // bool get isProfileCompleted =>
  //     _box.get(ESession.profileCompleted.slug) ?? false;

  int get userId => _box.get(ESession.userId.slug) ?? 0;

  bool? get isPremium => _box.get(ESession.userPremium.slug);

  bool get isUserReady => _box.get(ESession.userReady.slug) ?? false;

  String get getPopupIds => _box.get(ESession.popupIds.slug) ?? '';

  // TRYOUT SIMULATION
  int get smlCategoryId => _box.get(ESession.smlCategoryId.slug) ?? 0;

  int get smlId => _box.get(ESession.smlId.slug) ?? 0;

  bool get isSmlRateResult => _box.get(ESession.rateSmlResult.slug) ?? false;

  int get smlRateResultId => _box.get(ESession.rateSmlResultId.slug) ?? 0;

  // Voucher
  Sementawis? get mainVoucher => _box.get(ESession.mainVoucher.slug);

  Sementawis? get affiliateVoucher => _box.get(ESession.affiliateVoucher.slug);

  // talent analysis
  int? get analysisRemainingTime =>
      _box.get(ESession.analysisRemainingTime.slug);

  List<AnalysisAnswer>? get analysisAnswers {
    final result = _box.get(ESession.analysisAnswers.slug);
    if (result == null) return null;
    return (result as List)
        .map((e) => AnalysisAnswer(answer: e.answer, questionId: e.questionId))
        .toList();
  }

  bool get hasAnalysisAnswers =>
      analysisAnswers != null && analysisRemainingTime != null;

  // analytics
  Map<String, dynamic>? get analyticParams =>
      (_box.get(ESession.analyticsParam.slug) as Map?)?.cast<String, dynamic>();

  DateTime? get sessionStart =>
      DateTime.tryParse(_box.get(ESession.sessionStart.slug) ?? '');

  String? get sessionId => _box.get(ESession.sessionId.slug);

  String get deviceId => _box.get(ESession.deviceId.slug) ?? '';
}
