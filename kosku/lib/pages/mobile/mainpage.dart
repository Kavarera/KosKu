import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width-100,
            height: MediaQuery.of(context).size.height-250,
            //margin: EdgeInsets.only(top: 150,bottom: 150,left: 50, right: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
            ),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    child: Text("LOGIN",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ), textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        icon: IconButton(onPressed: (){}, icon: Icon(
                          Icons.email
                        ))
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 15.0),
                  child: TextField(
                    obscureText: isObscurePassword,
                    decoration: InputDecoration(
                      hintText: "Password",
                      icon: IconButton(onPressed: (){
                        setState(() {
                          isObscurePassword = isObscurePassword ? false :  true;
                        });
                      },icon: Icon(isObscurePassword ? Icons.visibility_off : Icons.visibility),)
                    ),
                  ),
                  ),
                  Container(
                    child: TextButton(onPressed: (){}, child: Text("Click here to sign up",
                    textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline),)),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 5,left: 30, right: 30),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        child: Text("SIGN IN"),
                      ),
                    ),
                  ),
                  Container(
                    child: Text("--sign in with--"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){},
                         child: Text("Google"),),
                         ElevatedButton(onPressed: (){}, child: Text("Github")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}