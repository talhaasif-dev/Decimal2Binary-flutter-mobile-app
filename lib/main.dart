import "package:flutter/material.dart";

int input = 0;
num output = 0;

int dtb(int input){
	
	int num1 = 0, num2 = 0, num3 = 0, num4 = 0, num5 = 0, num6 = 0, num7 = 0, num8 = 0, num9 = 0;
	num n = 0, j = 0, k = 0, z = 0, f = 0, g = 0, h = 0, o = 0, q = 0;
	if(input < 512){
	num i = 0;
	if(input >= 0){ 
        while(true){
            num a = pow(2, i);
            i++;
            if(a>input){
                break;
            }
            num1 = a as int; 
        }
        n = input - num1;
    } else { 
        n = 0;
    }


if(n > 0){
	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>n){
			break;
		}
		
		num2 = a as int; 
	}
	j = n - num2;
}
else{
	j = 0;
}
if(j > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>j){
			break;
		}
		
		num3 = a as int;
	}
	k = j - num3;
}
else{
	k = 0;
}
if(k > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>k){
			break;
		}
		
		num4 = a as int; 
	}
	z = k - num4;
}
else{
	z = 0;
}
if(z > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>z){
			break;
		}
		
		num5 = a as int; // Convert to int
	}
	f = z - num5;
}
else{
	f = 0;
}
if(f > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>f){
			break;
		}
		
		num6 = a as int; // Convert to int
	}
	g = f - num6;
}
else{
	g = 0;
}
if(g > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>g){
			break;
		}
		
		num7 = a as int; // Convert to int
	}
	h = g - num7;
}
else{
	h = 0;
}
if(h > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>h){
			break;
		}
		
		num8 = a as int; // Convert to int
	}
	o = h - num8;
}
else{
	o = 0;
}
if(o > 0){

	i = 0;
	while(true){
		num a = pow(2, i);
		i++;
		if(a>o){
			break;
		}
		
		num9 = a as int; // Convert to int
	}
	q = o - num9;
}
else{
	q = 0;
}
i = 0;
String c;
String binary = "";
	if(input > 0){
	while(true){
		num a = pow(2, i);
		i++;
		if(a>input){
			break;
		}
	
		if(a==num9 || a==num8 || a==num7 || a==num6 || a==num5 || a==num4 || a==num3 || a==num2 || a==num1){
			c = '1';
		}
		else{
			c = '0';
		}
		binary = binary + c;
	}
    String out = reverseString(binary);
    int no = int.parse(out); 
    print(no);
    return no; 
    
	} else {
        
        return 1; 
    }
}
else{
	
	print("INPUT NUMBER IS TOO BIG, THIS PROGRAM USE TRADITIONAL SQUARING MATHEMATIC TECHNIQUE TO CONVERT DECIMAL INTO BINARY");
    return 2; 
}
}

String reverseString(String input) {
  return input.split('').reversed.join('');
}

num pow(num basee, num exponent) {
  
  num result = 1;

  for (int i = 0; i < exponent; i++) {
    result *= basee;
  }

  return result;
}

void main() {
  runApp(app());
  
}
class app extends StatefulWidget {
  const app({super.key});
  
  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("decimal to binary converter"),
          backgroundColor: Colors.red
          ),
          body: Column(
            children: [
              Image.asset("img/main.png"),
          TextField(
           keyboardType: TextInputType.numberWithOptions(),
            controller: _number,
            decoration: InputDecoration(
              labelText: "Enter a number < 500",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(onPressed: (){
          //String _input = _number.text;
           setState(() {
            int _input = int.tryParse(_number.text)??0;
            print("$_input meaw");
            output = dtb(_input);
           });
            
          }, child: Text("Convert")),
          Text("$output")
            ]
          )
        ),
      );
    
  }
}

