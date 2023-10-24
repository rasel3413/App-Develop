import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController = TextEditingController();
    double result = 0;

  @override
  Widget build(BuildContext context) {

    const bordert = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(40)));
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text(
            'Currency Converter',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.normal),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
             padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'INR ${result!=0? result.toStringAsFixed(2):'0'}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: textEditingController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    hintText: "Please enter the amount in usd",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 48, 47, 47)),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    border: bordert,
                    focusedBorder: bordert,
                  ),
                ),
               const SizedBox(width: 10,height: 18,),
                ElevatedButton(
                  onPressed: () {
                    result = double.parse(textEditingController.text) * 81;
          
                    setState(() {
                      
                    });
                  },
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 50))),
                  child: const Text('Convert'),
                )
              ],
            ),
          ),
        ));
  }
}
