import 'package:flutter/material.dart';
import 'package:proj3/app/modules/adivice_app/controllers/advice_controller.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository.dart';
import 'package:proj3/app/modules/adivice_app/data_source/advice_repository_impl.dart';
import 'package:proj3/app/modules/adivice_app/models/advice_model.dart';

class AdviceAppPage extends StatefulWidget {
  const AdviceAppPage({ Key? key }) : super(key: key);

  @override
  _AdviceAppPageState createState() => _AdviceAppPageState();
}

class _AdviceAppPageState extends State<AdviceAppPage> {
  AdviceModel? model;

  @override
  void initState() { 
    super.initState();
    AdviceController controller = AdviceController();
    controller.fetchAdvice().then((value){
      setState(() {
        model = value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
          Text("Advice Number: ${model == null? "What will be?" : model!.slip!.id!}"),
          SizedBox(height: 300,),
          Center(child: Text(model == null ? "loading..." : model!.slip!.advice!))
        ],
      ),
    );
  }
}