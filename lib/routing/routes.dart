import 'package:flutter/material.dart';


const RootRoute = '/';

const OverViewPageDisplayName = "Overview";
const OverViewPageRoute = "/overview";

const DriverPageDisplayName = "Drivers";
const DriverPageRoute = "/drivers";

const ClientsPageDisplayName = "Clients";
const ClientsPageRoute = "/clients";

const AuthenticationPageDisplayName = "Log Out";
const AuthenticationPageRoute = "/auth";

class MenuItem{
  final String name;
  final String route;
  MenuItem(this.name, this.route);
}


List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(DriverPageDisplayName, DriverPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute),
];
