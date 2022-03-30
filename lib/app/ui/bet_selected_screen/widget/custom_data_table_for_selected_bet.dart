import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/core/constants/default_values.dart';
import 'package:shwe_luck_win_bet/app/module/controller/lotery/three_d_betting_controller.dart';
List<String> mDataColumnTitleList = [
  "ဂဏန်း","အဆ","ထိုးနှုန်း","ပြင်","ဖျက်"
];

List<Map<String,dynamic>> mBettingData = [

  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
  {"id" : "1","number" : '02',"times" : "700","price" : "900" },
];

class CustomDataTableForSelectedBet extends StatelessWidget {
  const CustomDataTableForSelectedBet({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ThreeDBettingController>();
    return  FittedBox(
      child: Obx(
          () => controller.mSelectedItem.isEmpty? Text("No Data")  : DataTable(
            decoration: BoxDecoration(
            color: Colors.red,
              borderRadius: BorderRadius.circular(20)
        ),
        headingRowColor: MaterialStateColor.resolveWith(
        (states) => Theme.of(context).colorScheme.secondary
        ),
        headingTextStyle:TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: kSmallFontSize12.sp,fontWeight: FontWeight.bold),
        headingRowHeight: 45,
        dividerThickness: 1,
        dataRowHeight: 50.0,
        dataRowColor:MaterialStateColor.resolveWith((states) => Theme.of(context).primaryColor),
        dataTextStyle: const TextStyle(color: Colors.white, fontSize: kMediumFontSize14),
        columnSpacing: 35,
        columns: const [
        DataColumn(label: Text("နံပါတ်")),
        DataColumn(label: Text("အဆ")),
        DataColumn(label: Text("ကြေး")),
        DataColumn(label: Text("ပြင်/ဖျက်")),
        ], rows: controller.mSelectedItem.map((e){
          int index = controller.mSelectedItem.indexOf(e);

          return  DataRow(cells:  [
          DataCell(Text(e.betNumber)),
          DataCell(Text(e.hotAmountLimit,)),
          DataCell(Text(e.defaultAmount)),
          DataCell(Row(
            children: [
              GestureDetector(
                  onTap : ()=> controller.removeSelectedIndex(e,index),
                  child: Icon(Icons.edit,size: 16.sp,color: Theme.of(context).colorScheme.secondary,)),
              SizedBox(
                width: 8.w,
              ),
              GestureDetector(
                  onTap : ()=>controller.removeSelectedIndex(e,index),
                  child: Icon(Icons.delete,size: 16.sp,color: Colors.red)),
            ],
          ))
        ]
        );}
          ).toList()
        ),
      ),
    );
  }
}
