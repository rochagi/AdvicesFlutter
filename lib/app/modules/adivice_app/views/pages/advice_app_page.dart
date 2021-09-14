import 'package:flutter/material.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository_impl.dart';

class AdviceAppPage extends StatefulWidget {
  const AdviceAppPage({ Key? key }) : super(key: key);

  @override
  _AdviceAppPageState createState() => _AdviceAppPageState();
}

class _AdviceAppPageState extends State<AdviceAppPage> {
  @override

  @override
  void initState() { 
    super.initState();
    AdviceRepository adviceRepository = AdviceRepositoryImpl();
    adviceRepository.fetchAdvice();
  }
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}