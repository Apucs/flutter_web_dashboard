import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/layout.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png",),
                  ),
                  Expanded(child: Container(),),
                ],
              ),
    
              SizedBox(height: 20,),
    
              Row(
                children: [
                  Text("Login", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 10,),
    
              Row(
                children: [
                  CustomText(
                    text: "Welcome back to the admin panel", 
                    size: 16, 
                    color: lightGrey, 
                    weight: FontWeight.bold,)
                ],
              ),
    
              SizedBox(height: 15,),
    
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  // suffixIcon: Icon(Icons.email_outlined),
                ),
              ),
    
              SizedBox(height: 15,),
    
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password",
                  hintText: "123",
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  // suffixIcon: Icon(Icons.email_outlined),
                ),
              ),
    
              SizedBox(height: 15,),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value){},
                      ),
    
                      CustomText(
                        text: "Remember me", 
                        size: 16, 
                        color: lightGrey, 
                        weight: FontWeight.bold,)
                    ],
                  ),
    
                  CustomText(
                    text: "Forgot password?", 
                    size: 16, 
                    color: active, 
                    weight: FontWeight.bold,)
                ],
    
              ),
    
              SizedBox(height: 15,),
    
              InkWell(
                onTap: (){
                  Get.offAllNamed(RootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: "Login", 
                    size: 16, 
                    color: Colors.white, 
                    weight: FontWeight.bold,),
                ),
              ),
    
              SizedBox(height: 15,),
    
              RichText(text: TextSpan(children: [
                TextSpan(text: "Do not have admin credintials? "),
                TextSpan(text: "Request credintials!", style: TextStyle(color: active)),
              ],
    
              ),),
    
    
    
            ],
          ),
        ),
      ),
    );
  }
}