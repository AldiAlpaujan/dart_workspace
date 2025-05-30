enum ESession {
  token('token'),
  tokenRefresh('token_refresh'),
  fcm('fcm'),
  profileCompleted('profile_completed'),
  userId('user_id'),
  userPremium('is_user_premium'),
  userReady('is_user_ready'),
  popupIds('popup_ids'),
  smlCategoryId('sml_category_id'),
  smlId('sml_id'),
  rateSmlResult('sml_rate_result'),
  rateSmlResultId('sml_rate_result_id'),
  mainVoucher('main_voucher'),
  affiliateVoucher('affiliate_voucher'),
  analysisRemainingTime('analysis_remaining_time'),
  analysisAnswers('analysis_answers'),
  enableGroup('enable_group_mode'),
  groupId('group_id'),
  userGroup('user_group'),
  analyticsParam('analytics_params'),
  sessionStart('session_start'),
  sessionId('session_id'),
  deviceId('device_id');

  const ESession(this.slug);

  final String slug;
}
