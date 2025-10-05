import 'package:flutter/material.dart';
import 'package:login/screens/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),

      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                Text("Welcome to our App", style: TextStyle(
                color: Color(0xFF00695C),
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),),

              SizedBox(height: 50,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    label: Text("Email", style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF00695C),),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    icon: Icon(Icons.email)
                ),


              ),
              SizedBox(height: 50,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Passward", style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF00695C),),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  icon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: () {


                /// if u won't use . text it will print the datatype and how it be saved in the storage
              },
                child: Text(
                  "login", style: TextStyle(color: Color(0xFF00695C),),),),
              SizedBox(height: 50,),
              Row(
                  children: [

                  Text("Don't have an account?"),


              TextButton(onPressed: ()
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUp(),));
          },
          child: Text("Signup", style: TextStyle(color: Color(0xFF00695C),),)
      )


      ],
    )


    ],

    ),

    ),
    ),


    );
    }
}
