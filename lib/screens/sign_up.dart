import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController confirmController=TextEditingController();
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("login",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xFF00695C),

      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text("Welcome to our App",style: TextStyle(
                color: Color(0xFF00695C),fontSize: 25,fontWeight: FontWeight.w600,
              ),),

          Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF00695C).withOpacity(0.1),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xFF00695C),
                    ),
                  ),
              SizedBox(height: 40),
              TextField(
                controller:emailController ,
                decoration: InputDecoration(
                    label: Text("Email",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFF00695C), ),),
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)) ,
                    icon: Icon(Icons.email)
                ),


              ),
              SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Passward",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF00695C),),),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  icon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 50,), TextField(
                controller:nameController ,
                decoration: InputDecoration(
                    label: Text("Email",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFF00695C), ),),
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)) ,
                    icon: Icon(Icons.email)
                ),


              ),
              SizedBox(height: 20,),
              TextField(
                controller: confirmController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("confirm password",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF00695C),),),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  icon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                print("email is:${emailController.text}");
                print("password is:${passwordController.text}");/// if u won't use . text it will print the datatype and how it be saved in the storage
              }, child: Text("login",style: TextStyle(color: Color(0xFF00695C),),),),
              SizedBox(height: 50,),
              Row(
                children: [

                  Text("Already have an account?"),

                 
                  TextButton(onPressed: (){
                   /// Navigator.pushReplacement(
                       /// context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    Navigator.pop(context);
                  }, child: Text( "login",style: TextStyle(color: Color(0xFF00695C),),)
                  )


                ],
              )


            ],

          ),

        ),
      ),

    ],
        ),

        ),
      ),
    );
  }
}
