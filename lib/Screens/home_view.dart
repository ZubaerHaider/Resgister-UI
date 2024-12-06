
import 'package:flutter/material.dart';
import 'package:login_ui/Screens/auth_view.dart';
import 'package:login_ui/Screens/login_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text('Home',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Column(
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      // Rounded corners
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>LoginView()
                        )
                    );
                  },
                  child: const Text('   Login  ',
                      style: TextStyle(
                        color: Colors.white
                      ),
                  ),
                ),


              ),
              SizedBox(height: 10,),
              Center(

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      // Rounded corners
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),

                  ),


                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => AuthView()
                        )
                    );
                  },
                  child: const Text('Register',
                    style: TextStyle(
                      color: Colors.white
                    ),

                  ),
                ),

              )
            ],

          ),
        ],
      ),
    );
  }
}
