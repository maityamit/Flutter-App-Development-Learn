import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  final _formkey = GlobalKey<FormState>();
  String f_name = "";
  String l_name = "";
  String email = "";
  String password = "";

  // Function
  trySubmit(){
    final invalid = _formkey.currentState!.validate();
    if(invalid){
      _formkey.currentState!.save();
      submitFormFN();
    }else{
      print("Eroor");
    }
  }

  submitFormFN(){

    print(f_name);
    print(l_name);
    print(email);
    print(password);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter first name"
                    ),
                    key: ValueKey("firstname"),
                    validator: (value){
                      if(value.toString().isEmpty){
                        return "First Name should not be empty";
                      }else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      f_name = value.toString();
                    },

                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter last name"
                    ),
                    key: ValueKey("lastname"),
                    validator: (value){
                      if(value.toString().isEmpty){
                        return "Last Name should not be empty";
                      }else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      l_name = value.toString();
                    },

                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Email name"
                    ),
                    key: ValueKey("email"),
                    validator: (value){
                      if(value.toString().isEmpty){
                        return "Email should not be empty";
                      }else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      email = value.toString();
                    },

                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password"
                    ),
                    key: ValueKey("password"),
                    validator: (value){
                      if(value.toString().length <= 5){
                        return "Password should be minimum length of password 6";
                      }else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      password = value.toString();
                    },

                  ),
                  TextButton(
                      onPressed: trySubmit,
                      child: Text("Submit"))
                ],
              ),

            )
        ),
      ),
    );
  }
}
