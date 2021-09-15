import 'package:flutter/material.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository_impl.dart';
import 'package:proj3/app/modules/adivice_app/models/advice_model.dart';

class AdviceController {
  final repository = AdviceRepositoryImpl();
  final state = ValueNotifier<HomeState>(HomeState.start);

  Future start() async {
  }

   Future<AdviceModel>fetchAdvice()async {
    var data = await repository.fetchAdvice();
    return data;
  }

}
enum HomeState {start}