import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
                padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
                ),
                child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: inkWell(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Make it work, make it right, make it fast',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,),
                    TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                  prefixIcon: Icon(
                    Icons.fingerprint
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                  color: Colors.blue,
                ))
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,),
              ElevatedButton(
                onPressed: (){},
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      ' Login',
                    ),
                  ],
                  
                ), 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                          MediaQuery.of(context).size.height * 0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                )
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,),
              ElevatedButton(
                onPressed: (){},
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/googlelogo.png',
                    width: 20.0,),
                    Text(
                      '  Sign in with Google',
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                 fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                          MediaQuery.of(context).size.height * 0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                      ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have account'),
                  Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'SignUp',
                  style: TextStyle(
                  color: Colors.blue,
                ))
              ),
              ]
             )
            ],
          ),
                ),
              ),
        ));
  }
}
