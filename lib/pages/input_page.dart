import 'package:flutter/material.dart';


class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
   final _formKey = GlobalKey<FormState>();
   TextEditingController nameController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input 999999"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                usernameText(),
                const SizedBox(height: 16,),
                passwordText(),
                const SizedBox(height: 16,),
                ElevatedButton.icon(
                  onPressed: (){
                    debugPrint("wongsapat");
                    if(_formKey.currentState!.validate()){
                      debugPrint("successful");
                    }

                  }, 
                  icon: const Icon(Icons.login), 
                  label: const Text("เข้าสู่ระบบ")),
              ],
            ),
          ),
        ),
      ),
    );
    
  }

  TextFormField usernameText() {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return "กรุณากรอกฟิลนี้";
        }
        return null;
      },
            controller: nameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: "Username",
              hintText: "ใส่ชื่อผู้ใช้",
              enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 25, 0, 255)
                ),
              ),
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 162, 0, 255)
                ),
              ),


              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
            
            ),
            onChanged: (value){
              setState(() {});
            },
          );
  }
  TextFormField passwordText() {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return "กรุณากรอกฟิลนี้";
        }
        return null;
      },
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "Password",
              hintText: "ใส่รหัสผ่าน",
              enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 25, 0, 255)
                ),
              ),
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 153, 0, 255)
                ),
              ),


              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
            
            ),
            onChanged: (value){
              setState(() {});
            },
          );
  }



}