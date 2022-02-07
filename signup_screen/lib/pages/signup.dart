import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "Let's Get Started!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Create an account to Ibook to get all features',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              MyTextField(
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
                hintText: 'Name',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              MyTextField(
                icon: Icon(
                  Icons.email_outlined,
                ),
                hintText: 'Email',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              MyTextField(
                icon: Icon(
                  Icons.phone_android_outlined,
                ),
                hintText: 'Phone',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              MyTextField(
                icon: Icon(
                  Icons.lock_open_outlined,
                ),
                hintText: 'Password',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              MyTextField(
                icon: Icon(
                  Icons.lock_outline,
                ),
                hintText: 'Confirm Password',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xFF0251ca),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .08,
                    vertical: MediaQuery.of(context).size.height * 0.015,
                  ),
                  child: Text(
                    'CREATE',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(color: Colors.black87),
                  children: [
                    TextSpan(
                        text: ' Login here',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final Widget icon;
  final String hintText;

  MyTextField({required this.icon, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07),
            child: icon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
