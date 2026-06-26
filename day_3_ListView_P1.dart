import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: homePage(),
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
  List<String> names = <String>[
    "Nadim",
    "Anirban",
    "Emon",
    "Tanjil",
    "Rifat",
    "Samiul",
    "Sami",
    "Rahim",
    "Karim",
    "Hasan",
    "Sakib",
    "Rakib",
    "Mahim"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade800,
        title: Text('NameFinder', style: TextStyle(color: Colors.white),),
      ),

      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context,index){
            return Card(
              margin: const EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(names[index][0]),
                ),
                title: Text(names[index]),
                subtitle: Text("Friend"),
                trailing: Icon(Icons.favorite),

              ),

            );
      }),
    );
  }
}
