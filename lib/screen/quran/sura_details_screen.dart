import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app/model/quran/soura_details_model.dart';
import 'package:islam_app/model/quran/soura_name_text_model.dart';
import 'package:islam_app/model/text_content.dart';
import 'package:islam_app/model/theme_model.dart';

class SouraDetails extends StatefulWidget {
static const String routeName='SouraDetails';

  @override
  State<SouraDetails> createState() => _SouraDetailsState();
}

class _SouraDetailsState extends State<SouraDetails> {
List<String>newList=[];

  @override
  Widget build(BuildContext context)

  {
var arg=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgsModel;
var width=MediaQuery.of(context).size.width;
var height=MediaQuery.of(context).size.height;
if(newList.isEmpty){
  loadFile(arg.indx);
}
    return

      Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                '${arg.name}',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          body: Center(
            child: Container(

              decoration: BoxDecoration(
                  color:MyTheme.colorWhiteTransparant,
               borderRadius: BorderRadius.circular(24)
              ),
              margin: EdgeInsets.only(bottom: height*.06,top: height*.04),
              width: width*.9,
              height: height*.8,
              child:newList.isEmpty?CircularProgressIndicator()
                  :ListView.builder(
                itemBuilder:(c,i)=>TextContent(text: newList[i],numerLine:i+1) ,
                itemCount: newList.length,),
            ),
          ),

        ),
      ],
    );
  }

  void loadFile(int index)async{
  String fileContent= await rootBundle.loadString("assets/file/${index+1}.txt");
  List <String> line=fileContent.split('\n');
  newList=line;
  setState(() {

  });
  }
}
