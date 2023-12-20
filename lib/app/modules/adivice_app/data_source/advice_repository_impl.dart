import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository.dart';
import 'package:proj3/app/modules/adivice_app/models/advice_model.dart';

class AdviceRepositoryImpl implements AdviceRepository {
  @override
  Future<AdviceModel?> fetchAdvice() async {
    try {
      Dio dio = Dio();
      var response = await dio.get("https://api.adviceslip.com/advice");
      var responseJson = json.decode(response.data);
      var data = AdviceModel.fromJson(responseJson);

      return data;
    } on DioError catch (e) {
      print(e.type);
      throw e.type;
    }
  }
}
