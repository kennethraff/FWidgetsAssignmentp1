import 'package:depd23_first/home.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}
class NumericTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Use a regular expression to remove non-numeric characters from the input.
    final newText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    return TextEditingValue(
      text: newText,
      selection: TextSelection.fromPosition(
        TextPosition(offset: newText.length),
      ),
    );
  }
}

class _BookingPageState extends State<BookingPage> {

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }
  
  final _bookingkey = GlobalKey<FormState>();
  final crtlName = TextEditingController();
  final crtlEmail = TextEditingController();
  final crtlPhone = TextEditingController();
  final crtlCity = TextEditingController();
  bool _isHide = true;




String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }
  if (value.length < 8) {
    return 'Phone number must be at least 8 digits';
  } else if (value.length > 13) {
    return 'Phone number must be less than 15 digits';
  }
  return null;
}





  void showInformationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Booking Confirmation"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Full Name: ${crtlName.text}"),
              Text("Email: ${crtlEmail.text}"),
              Text("Phone Number: ${crtlPhone.text}"),
              Text("City: ${crtlCity.text}"),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
      child: Container(
        
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _bookingkey,
          child: Column(
            children: [
              TextFormField(
                controller: crtlName,
                keyboardType: TextInputType.name,
                
                decoration: InputDecoration(
                  labelText: "Full Name",
                  hintText: "Masukkan Nama lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.person_4),
                  
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama belum diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: crtlEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Masukkan Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return !EmailValidator.validate(value.toString())
                  ? "Email tidak valid" : null;
                },
              ),
              SizedBox(height: 10.0,),
              TextFormField(
              controller: crtlPhone,
              keyboardType: TextInputType.phone,
              inputFormatters: [NumericTextFormatter()],
              decoration: InputDecoration(
              labelText: "Phone Number",
              hintText: "Enter your phone number",
             border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(12),
             ),
              prefixIcon: Icon(Icons.phone_android),
            ),
              validator: (value) => validatePhoneNumber(value.toString()), // Adjust type to String? Function(String?)?
            ),




              SizedBox(height: 10.0,),
              TextFormField(
                controller: crtlCity,
                keyboardType: TextInputType.streetAddress,
                
                decoration: InputDecoration(
                  labelText: "City",
                  hintText: "Your domicile's city",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.location_city_outlined),
                  
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kota belum diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
               ElevatedButton.icon(
  onPressed: () {
    if (_bookingkey.currentState!.validate()) {
      // All form fields are valid, you can proceed with submission.
      // Show a dialog, send the data, or perform any other actions here.
      showInformationDialog(context);
    } else {
      // Some form fields are not valid.
      // Display an error message or handle it as needed.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Masih ada textformfield tidak valid'),
        ),
      );
    }
  },
  icon: Icon(Icons.check_box),
  label: Text("Submit"),
  style: ElevatedButton.styleFrom(
    elevation: 10.0,
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.white,
    textStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  ),
),

            ],
          ),
        ),
      ),
    ),
    );
  }
}