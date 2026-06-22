import 'package:flutter/material.dart';
int count =0;
const imgul='https://images.pexels.com/photos/30693845/pexels-photo-30693845.jpeg';

Color bg=Colors.white;
Color orn=Colors.deepOrange;
Color whi=Colors.white;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home:homePage(),
  )
  );
}

class homePage extends StatefulWidget {
  const homePage({
    super.key,
  });

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  incCnt(){
    setState(() {
      count++;
      if((count&1)==0){
        bg=orn;
      }
      else{
        bg=whi;
      }
    });

    //print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Nadim Mahmud'),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              children: [
                Text('total count-', style: TextStyle(fontSize: 30),),
                Text('$count', style: TextStyle(fontSize: 50),),



              ],
            ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
          onPressed: incCnt,
        child: const Icon(Icons.add),
      ),
    );
  }
}
