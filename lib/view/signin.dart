
import 'package:flutter/material.dart';
import 'package:toke_app1/view/home.dart';


class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool ispassword = true;
   final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
         onPressed: () {
           Navigator.of(context).pop();
          },
         icon: Icon(Icons.arrow_back_ios),
          ),
        
        
        
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(children: [
            
            
          
              SizedBox(
              height: 250,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value == null || value.contains('@gmail.com') ==false){
                      return 'Enter valid Email';
                    }
                  },
                  decoration: InputDecoration(labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
              ),
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordcontroller,
                  obscureText: ispassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value == null || value.length <8){
                      return 'Enter valid password';
                    }
                  },
                  decoration: InputDecoration(labelText: 'password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon:ispassword ? IconButton(icon: Icon(Icons.visibility_off),
                      onPressed:(){
                        setState(() {
                          ispassword = !ispassword;
                        });
                      } ,):IconButton(icon: Icon(Icons.visibility),
                        onPressed:(){
                          setState(() {
                            ispassword = !ispassword;
                          });
                        } ,),
                      border: OutlineInputBorder()),
                ),
              ),
            SizedBox(
              height: 20,
            ),
             
          
                  
            InkWell(
              onTap: () async {
              //  if (_formKey.currentState!.validate()) {
              //  bool result =await firebaselogin (emailcontroller.text,passwordcontroller.text);
              //     if(result ==true){ 

                  //final SharedPreferences prefs = await SharedPreferences.getInstance();
                  // await prefs.setString('email', emailcontroller.text);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
              //     }else{ 
              //    ScaffoldMessenger.of(context).showSnackBar(
              //      const SnackBar(content: Text('login faild')),
              //    );
              //     }
              //  }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: Text("login",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
              ),
            ),
              SizedBox(
              height: 20,
            ),
             
                 
            
             SizedBox(
              height: 40,
            ),
            
          ]
          ),
        ),
      ),
    );
  }
 // Future<bool>firebaselogin(String email,String password)async{
 //  try {
 // UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
 //   email: email,
 //   password: password,
 // );
 //  if(userCredential.user !=null){
 //   return true;
 //  }
//} on FirebaseAuthException catch (e) {
//  if (e.code == 'user-not-found') {
//    print('No user found for that email.');
//  } else if (e.code == 'wrong-password') {
//    print('Wrong password provided for that user.');
//  }
//}
//  return false;
//  }
}