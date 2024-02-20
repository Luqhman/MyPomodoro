
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro/widgets/home.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Image.network("https://services.garmin.com/appsLibraryBusinessServices_v0/rest/apps/4b11ad8f-3e48-4112-83df-336065c49829/icon/d31ca7be-0497-4370-801f-97a29dc3b584", height: 300, width: 200)),
          Text("MyPomodoro", style: GoogleFonts.abrilFatface(textStyle: TextStyle(color: Colors.red, fontSize: 35)),),
          SizedBox(height: 30,),
          Text("Don't be busy, be productive", style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(color: Colors.cyan[900], fontSize: 24)) ,),
          SizedBox(height: 110,),
          SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[900],
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
                onPressed:(){
                   Navigator.push(context, MaterialPageRoute(builder: (content)=> HomePage()));
                }, child: Text("Enter", style: TextStyle(fontSize: 25, color:Colors.white)),)
          )




        ],
      ),
    );
  }
}
