import 'package:flutter/material.dart';
import 'package:my_testing_app/db/temp_db.dart';
import 'package:my_testing_app/pages/contact_form.dart';

import 'contact_details.dart';

class ContactHomePage extends StatefulWidget {
  static const String routeName='/';
  const ContactHomePage({super.key});

  @override
  State<ContactHomePage> createState() => _ContactHomePageState();
}

class _ContactHomePageState extends State<ContactHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact App'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context,index){
            final contact = contactList[index];
            return ListTile(
              onTap: (){
                Navigator.pushNamed(context,ContactDetails.routeName, arguments: contact);
              },
              title: Text(contact.name),
              trailing: IconButton(
                onPressed: (){

                },
                  icon: Icon(contact.favorite? Icons.favorite : Icons.favorite_border)
              ),

            );
          }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(context, ContactForm.routeName);
            setState(() {

            });
          },
        child: const Icon(Icons.add),
      ),
    );
  }
}
