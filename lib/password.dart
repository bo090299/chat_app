import 'package:flutter/material.dart';
import 'package:news_project/chat.dart';
import 'package:news_project/commponents/my_button.dart';
import 'package:news_project/commponents/my_textfield.dart';

class Password_screen extends StatefulWidget {
  const Password_screen({super.key});

  @override
  State<Password_screen> createState() => _Password_screenState();
}

class _Password_screenState extends State<Password_screen> {
  bool _obscureText = true;
  void login(){}
  var login_s = "Admin";
  var password_s = "Salam@123"; 
  TextEditingController _login = TextEditingController();
  TextEditingController _pass = TextEditingController();
  void dialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Ýalňyşlyk !!!'),
        content: Text('Boşluklary dolduryň !!!'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Ok'))
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login screen !"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
           Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
           ),
            const SizedBox(height: 50,),

            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16
              ),
              ),
              const SizedBox(height: 25,),

              //email text

              MyTextfield(hintText: 'Email',
              obscureText: false,
              controller: _login,),

            const SizedBox(height: 10,),

              MyTextfield(hintText: 'Password',
              obscureText: true,
              controller: _pass,),
              const SizedBox(height: 15,),

              //login button
              MyButton(
                text: 'Login',
                onTap: login,
                ),
                const SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member ?',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    Text('Register now',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),)
                  ],
                )

          ],
        )),
    );
  }

  Null get newMethod => null;
}