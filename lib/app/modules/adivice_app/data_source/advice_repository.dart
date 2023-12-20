import 'package:proj3/app/modules/adivice_app/models/advice_model.dart';

abstract class AdviceRepository {
  Future<AdviceModel?> fetchAdvice();
}
