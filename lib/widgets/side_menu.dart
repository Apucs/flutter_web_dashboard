import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    // print(_width);

    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: _width/48,),
                  Padding(padding: EdgeInsets.only(right: 12),
                    child: Image.asset('assets/icons/logo.png'),
                  ),
                  Flexible(
                    child: CustomText(
                      text: "Dash",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )
                    
                  ),

                  SizedBox(width: _width/48,), 
                ],
              ),
              SizedBox(height: 40,),
            ],
          ),
          

          Divider(color: lightGrey.withOpacity(0.1),),

          Column(
            mainAxisSize: MainAxisSize.min,
            children:
              sideMenuItems.map((item) => 
                SideMenuItem(
                  itemName: item.name,

                  onTap: (){
                    if(item.route==AuthenticationPageRoute){
                      menuController.changeActiveitemTo(OverViewPageDisplayName);
                      Get.offAllNamed(AuthenticationPageRoute);
                      
                    }

                    if(!menuController.isActive(item.name)){
                      menuController.changeActiveitemTo(item.name);
                      if(ResponsiveWidget.isSmallScreen(context)){
                        Get.back();
                      }
                      navigationController.navigateTo(item.route);
                    }
                  }
                )
              ).toList(),
          ),
        ],
      ),
    );
  }
}