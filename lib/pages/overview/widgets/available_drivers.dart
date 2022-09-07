import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

/// Example without datasource
class AvailableDrivers extends StatelessWidget {
  const AvailableDrivers({super.key});

  @override
  Widget build(BuildContext context) {
    //setColumnSizeRatios(1, 2);
    return Container(
        height: 400,
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12,
            ),
          ],
          border: Border.all(color: lightGrey, width: 0.5)
        ),
        padding: const EdgeInsets.all(16),

        
        child: Container(
          // height: 400,
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),

                  CustomText(
                    text: "Available Drivers", 
                    size: 16, 
                    color: lightGrey, 
                    weight: FontWeight.bold,
                  ),
                ],
              ),

              Expanded(
                child: DataTable2(
                    columnSpacing: 12,
                    horizontalMargin: 12,
                    minWidth: 600,
                    smRatio: 0.75,
                    lmRatio: 1.5,
                    columns: const [
                      DataColumn2(
                        size: ColumnSize.S,
                        label: Text('Name'),
                      ),
                      DataColumn(
                        label: Text('Location'),
                      ),
                      DataColumn(
                        label: Text('Rating'),
                      ),
                      DataColumn(
                        label: Text('Action'),
                      ),

                    ],
                    rows: List<DataRow>.generate(
                        7,
                        (index) => DataRow(cells: [
                              DataCell(CustomText(text: "Apu Chandraw")),
                              DataCell(CustomText(text: "New York City")),
                              DataCell(Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 18,
                                    ),
                                    SizedBox(width: 5,),
                                    CustomText(text: "4.$index"),
                                ],
                                )),

                                DataCell(Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: active, width: 0.5),
                                    color: light,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),

                                  child: CustomText(
                                    text: "Assign Delivery",
                                    color: active.withOpacity(0.7),
                                    weight: FontWeight.bold,
                                  )
                                )),
                              // DataCell(Text('C' * (15 - (index + 5) % 10))),
                              // DataCell(Text('D' * (15 - (index + 10) % 10))),
                            ]))),
              ),
            ],
          ),
        ),
      );
  }
}