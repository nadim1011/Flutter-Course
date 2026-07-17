import 'package:flutter/material.dart';
import 'package:my_testing_app/models/contact_models.dart';

class ContactDetails extends StatefulWidget {
  static const String routeName='/details';
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  bool isFirst=true;
  late ContactModels contact;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencie
    if(isFirst){
      contact= ModalRoute.of(context)!.settings.arguments as ContactModels;
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact details'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Image.asset(contact.image,width: double.infinity, height: 350, fit: BoxFit.cover,),
          // Image.asset('Images/person.jpg'),
          ListTile(

            title: Text(contact.name),
          ),
          ListTile(

            title: Text(contact.phoneNo),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                onPressed: (){},
                    icon: const Icon(Icons.sms),

                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.call),

                )
              ],
            ),

          ),
          ListTile(

            title: Text(contact.mail.isEmpty? 'Not Found' : contact.mail),
             trailing: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.email),

              ),
          ),
          ListTile(

            title: Text(contact.address.isEmpty? 'Not Found' : contact.address),
            trailing: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.location_city),

            ),
          ),
        ],
      ),
    );
  }
}
