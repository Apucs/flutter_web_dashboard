import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';

import 'package:flutter_web_dashboard/routing/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    
    case OverViewPageRoute:
      // print("Route name is called ${settings.name}");
      return _getPageRoute(OverViewPage());

    case DriverPageRoute:
      // print("Route name is called ${settings.name}");
      return _getPageRoute(DriversPage());

    case ClientsPageRoute:
      // print("Route name is called ${settings.name}");
      return _getPageRoute(ClientsPage());

    default:
      // print("Route name is called ${settings.name}");
      return _getPageRoute(OverViewPage());
  }

}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder:(context)=>child);
}