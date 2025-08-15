import 'package:flutter/material.dart';

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  State<FormSignup> createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  String firstName = '';
  String lastName = '';
  String Email = '';
  String Password = '';

  trysubmit(){
    final isvalid = _formkey.currentState!.validate();
    if(isvalid){
      Submitform();
      _formkey.currentState!.save();

    }
    else{
      print("error");
    }
  }

  Submitform(){
    print(firstName);
    print(lastName);
    print(Email);
    print(Password);
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up form"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15),
          child: Form(
              key:  _formkey,
              child: Column(
          

            children: [

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter First Name',
                ),
                key: ValueKey('firstName'),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return 'FirstName should not be empty';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  firstName = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Last Name',
                ),
                key: ValueKey('lastName'),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return 'lastName should not be empty';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  lastName = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
                key: ValueKey('Email'),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return 'Email address should not be empty';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  Email = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                ),
                key: ValueKey('Password'),
                validator: (value) {
                  if(value.toString().length<=5 ){
                    return 'Minimum should  be 6 characters';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  Password = value.toString();
                },
              ),
                TextButton(
                    onPressed: (){
                      trysubmit();
                    },
                    child: Text("Submit"))
            ],
          )),
        )
        ),
      );

  }
}
