import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {

    Widget logo() {
      return const Padding(
        padding: EdgeInsets.only(top: 70),
        child: Center(
            child: Icon(
          Icons.car_repair_sharp,
          size: 150.0,
        )),
      );
    }

    Widget title() {
      return const Text('Auto Service Notes',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold));
    }

    Widget form() {
      return Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Icon(Icons.email), // myIcon is a 48px-wide widget.
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'User Email',
                  hintText: 'Enter valid mail id as abc@gmail.com'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.0),
                      child: Icon(Icons.lock) // myIcon is a 48px-wide widget.
                      ),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your secure password'),
            ),
          ),
        ],
      );
    }

    Widget loginbutton() {
      return Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text('LOGIN',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
      );
    }

    Widget registrationbutton() {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextButton(
          style: const ButtonStyle(),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text('Not registered yet? Register now!',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
        ),
      );
    }

    return Material(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          logo(),
          title(),
          form(),
          loginbutton(),
          registrationbutton(),
        ],
      ),
    );
  }
}
