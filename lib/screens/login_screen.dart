import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final txtUser = TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email text',
        border: OutlineInputBorder(),
        fillColor: Colors.white,
        filled: true
      ),
    );
    final txtPass = TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(),
        fillColor: Colors.white,
        filled: true
      ),
    );
    final conCredentials = Positioned(
      bottom: 120,
      child: Container(
        width: 350,
        height: 200,
        child: ListView(
          children: [
            txtUser,
            SizedBox(height: 10,),
            txtPass
          ],
        ),
        decoration: BoxDecoration(
          //color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
          
        ),
        
      ),
    );

    final imgLogo = Positioned(
      top: 200,
      child: Image.asset('assets/imgJuego.png', height: 150,),
      
    );
    final imgBtn = Positioned(
      bottom: 100,
      child: GestureDetector(
        onTap: (){
          isLoading = true;
          setState(() {});
          Future.delayed(Duration(seconds: 3)).then(
            (value){
              isLoading = false;
              setState(() {});
              Navigator.pushNamed(context, '/dash');
            } 
          );
        },
        child: Image.asset('assets/loginButton.png', height: 75,)
      ),
      
    );

    final progress = Positioned(
      top: 600,
      child: CircularProgressIndicator()
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: .7,
            fit: BoxFit.cover,
            image: AssetImage('assets/fondo_flutter_login.jpg')
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [          
            imgLogo,
            isLoading ? progress : Container(),
            conCredentials,
            imgBtn,
          ],
        ),

      ),
    );
  }
}