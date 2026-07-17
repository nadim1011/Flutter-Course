import 'package:flutter/material.dart';
import 'package:my_testing_app/db/temp_db.dart';
import 'package:my_testing_app/models/contact_models.dart';

class ContactForm extends StatefulWidget {
  static const String routeName='/contact_form';
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneNoController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact From'),
        actions: [
          IconButton(
            onPressed: _saveContact,
            icon: const Icon(Icons.save),
          )
        ],
        backgroundColor: Colors.blue,
      ),

      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Contact Name',
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Name is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10 ,),


            TextFormField(
              controller: phoneNoController,
              decoration: InputDecoration(
                labelText: 'Contact Name',
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Phone number is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10 ,),



            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Contact Email',
              ),

            ),
            const SizedBox(height: 10 ,),




            TextFormField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Contact Address',
              ),

            ),
            const SizedBox(height: 10 ,),


          ],
        ),
      ),
    );
  }
    @override
    void dispose() {
      nameController.dispose();
      phoneNoController.dispose();
      emailController.dispose();
      addressController.dispose();
      super.dispose();
    }
    void _saveContact(){
      if(formKey.currentState!.validate()){
        final contact= ContactModels(
            id: contactList.length+1,
            name: nameController.text,
            phoneNo: phoneNoController.text,
            address: addressController.text,
            mail : emailController.text,
        );
        contactList.add(contact);
        Navigator.pop(context);
      }
    }

}
