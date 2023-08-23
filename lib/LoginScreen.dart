import 'package:flutter/material.dart';
import 'package:task3/startingScreen.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool checkboxvalue=false;
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var namecontroller = TextEditingController();


  final formKey=GlobalKey<FormState>();


  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double screenHeight= MediaQuery.of(context).size.height;
    return Form(

      key: formKey,
      child: Scaffold(
        body: Container(
          height: screenHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child:  SingleChildScrollView(
              child: SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                       width: 250,
                      //  height: 80,
                        child: Text('talabat',style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 80,
                          fontWeight: FontWeight.w800,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 140,
                        child: Text('Sign up for free',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize:18,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: namecontroller,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name';
                              }
                            },
                            onFieldSubmitted: (object) {
                              print(object);
                            },
                            decoration: InputDecoration(
                              hintText: 'Name',
                              prefixIcon: Icon(Icons.person,color: Colors.deepOrange,),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: emailcontroller,
                            validator: (value){
                              if(value!.isEmpty)
                                return 'Please enter your email';
                            },
                            onFieldSubmitted: (object) {
                              print(object);
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email,color: Colors.deepOrange,),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: passcontroller,
                            validator: (value){
                              if(value!.isEmpty)
                                return 'Please enter your password';
                            },
                            onFieldSubmitted: (object) {
                              print(object);
                            },
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIconColor: Colors.grey.shade300,
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock,color: Colors.deepOrange,),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 10,
                        ),
                        child: Row(
                          children: [
                            Checkbox(
                                value: checkboxvalue,
                                onChanged:(newValue)
                                {
                                  setState(() {
                                    checkboxvalue=newValue!;
                                  });
                                },
                            ),
                            Text('Remember me',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          height: 50,
                          width:double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextButton(
                              onPressed: () {
                                print('${namecontroller.text}');
                                print('${emailcontroller.text}');
                                print('${passcontroller.text}');
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                        return StartingScreen();
                                      }));
                                }
                              },
                              child: Text('Create Account',style:TextStyle(
                               color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
