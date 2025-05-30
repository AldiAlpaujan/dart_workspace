import 'package:hive_flutter/hive_flutter.dart';

import 'models/analysis_answers.dart';
import 'models/sementawis.dart';

void initSession() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SementawisAdapter());
  Hive.registerAdapter(AnalysisAnswerAdapter());
  await Hive.openBox('theBox');
}
