import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  final String hardCodePassword ="123456@";

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //logo
              Icon(
                Icons.flutter_dash_outlined,
                color: Colors.blue,
                size: 300,
              ),

              Text(
                "VAULTANA",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue
                ),
              ),

              SizedBox(height: 24.0,),

              //pasword

              TextFormField(
                controller: passwordController,
                obscureText: !_isPasswordVisible,
                decoration:  InputDecoration(
                    labelText: "password",
                    border:OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon:  Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: (){
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please Enter Password";
                  }
                  /* if(value.length<6){
                    return" Passowrd must be at least 6 char";
                  }*/

                  return null;
                },
              ),

              const SizedBox(height: 24,),

              //Login Button

              ElevatedButton(
                onPressed: () {
                  if(passwordController.text == hardCodePassword){
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login Succesful"))
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Wrong Password!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.pinkAccent,


                        )
                    );
                  }
                },
                child: const Text("Login"),
              ),



            ],
          ),

        ),
      ),
    );
  }
}
