import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final _logger = Logger(
  printer: PrettyPrinter(
    stackTraceBeginIndex: 0,
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 70,
    colors: true,
    printEmojis: false,
    dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);

void logReq(String title, [dynamic params, dynamic data]) {
  _logger.d('REQUEST $title');
  if (params != null && params.toString() != '{}') {
    _logger.t('Query - $params');
  }
  if (data != null) {
    if (data is FormData) {
      data = data.fields;
    }
    _logger.t('Data - $data');
  }
}

void logGet(log, [String? title]) {
  _logger.d('RESPONSE GET - $title');
  _logger.i(log);
}

void logPost(log, [String? title]) {
  _logger.d('RESPONSE POST - $title');
  _logger.w(log);
}

void logError(log, [String? title]) {
  _logger.d('RESPONSE Kalepatan - $title');
  _logger.e(log);
}

void log(log) {
  _logger.f(log);
}
