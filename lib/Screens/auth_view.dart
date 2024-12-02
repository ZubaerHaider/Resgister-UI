import 'package:flutter/material.dart';
import 'package:login_ui/Screens/Widgets/field_design.dart';

class AuthView extends StatelessWidget {
   AuthView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Register here',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
          
                  TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Colors.black

                    ),
                ),
              ),
          
              const SizedBox(height: 20,),
          
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.black

                  ),
                ),
              ),
          
              const SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
          
                  prefixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.key,
                      color: Colors.black,
                    ),
                  ),
                  suffixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
          
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black

                  ),
                ),
              ),
              const SizedBox(height: 20,),
              TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: TextStyle(
                    color: Colors.black
                  ),
          
                  prefixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.key,
                      color: Colors.black,
                    ),
                  ),
                  suffixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
          
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                      color: Colors.black

                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(

                  onPressed: () {
                    print(emailController.text +
                        " ---> " +
                        passwordController.text);
                  },
                  child: const Text("Done")
              ),
          
          
              
            ],
          ),
        ),
      ),
    );
  }
}
