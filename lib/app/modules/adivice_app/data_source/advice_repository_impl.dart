import 'package:dio/dio.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository.dart';

class AdviceRepositoryImpl implements AdviceRepository {
  @override
  Future<List<String>> fetchAdvice() async {
    Dio dio = Dio();

    List<String> responseList = [];

    var response = await dio.get("https://api.adviceslip.com/advice");

    print(response.data);
    
    
    return responseList;


  }

}