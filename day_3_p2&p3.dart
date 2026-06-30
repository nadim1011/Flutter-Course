import 'package:english_words/english_words.dart';
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
  List<WordPair> names = generateWordPairs().take(100).toList();
  List<WordPair> namesFav=[];
  bool F=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade800,

        title: Text('NameFinder', style: TextStyle(color: Colors.orange),),
          actions: [

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.orange,
              ),
                onPressed: (){
                  setState(() {
                    F=!F;
                  });

                },
                child: Text(F? "Show All":"Show Fav",)
            )
          ],

      ),

      body: ListView.builder(
          itemCount: F? namesFav.length:names.length,
          itemBuilder: (context,index){
            final lastWord = F ? namesFav[index] : names[index];
            return Card(
              margin: const EdgeInsets.all(5),
              child: ListTile(


                title: Text(F? namesFav[index].asPascalCase:names[index].asPascalCase),

                trailing: IconButton(
                    onPressed: (){
                      setState(() {
                        if(namesFav.contains(lastWord)){
                          namesFav.remove(lastWord);
                        }
                        else{
                          namesFav.add(lastWord);
                        }
                      });


                      // print(namesFav);
                    },


                    icon: Icon(namesFav.contains(lastWord)? Icons.favorite : Icons.favorite_border, color: Colors.orange,),
                )

                  ,

              ),

            );
      }),
    );
  }
}
