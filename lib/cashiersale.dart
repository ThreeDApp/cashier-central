import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CashierSale extends StatefulWidget {
  @override
  _CashierSaleState createState() => _CashierSaleState();
}

class _CashierSaleState extends State<CashierSale> {
  final _formKey = GlobalKey<FormState>();
  int _digit;
  String _name;
  int _value;
  int _phone;
  String _village;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ရောင်းမယ်',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 24,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.playlist_add),
                  hintText: 'ထိုးမည့်ဂဏန်းဖြည့်ပါ',
                  labelText: 'ဂဏန်း',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'ကျေးဇူးပြု၍ဂဏန်းတစ်ခုခုရိုက်ထည့်ပါ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.person),
                  hintText: 'ထိုးသားနာမည်ဖြည့်ပါ',
                  labelText: 'အမည်',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'ကျေးဇူးပြု၍ထိုးသားနာမည်ရိုက်ထည့်ပါ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.person),
                  hintText: 'ထိုးငွေရိုက်ထည့်ပါ',
                  labelText: 'ငွေ',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'ကျေးဇူးပြု၍ထိုးငွေပမာဏရိုက်ထည့်ပါ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.phone),
                  hintText: 'ဖုန်းနံပါတ်ရိုက်ထည့်ပါ',
                  labelText: 'ဖုန်း',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'ကျေးဇူးပြု၍ဖုန်းနံပါတ်ရိုက်ထည့်ပါ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.gps_fixed),
                  hintText: 'ရွာနာမည်ရိုက်ထည့်ပါ',
                  labelText: 'လိပ်စာ',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'ကျေးဇူးပြု၍ရွာနာမည်ရိုက်ထည့်ပါ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 24,
              ),
              RaisedButton(
                color: Colors.blue.shade200,
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.

                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text(
                  'သိမ်းမယ်',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
