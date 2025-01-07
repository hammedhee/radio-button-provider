import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radioprvider/controller/radioButtonProvider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Radio button with provider demo'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Your gender ',
                style: TextStyle(fontSize: 20),
              ),
              Consumer<Radiobuttonprovider>(
                builder: (context, Radiobuttonprovider, child) => Column(
                  children: [
                    RadioListTile<String>(
                      title: Text('Other'),
                      value: 'Other',
                      groupValue: Radiobuttonprovider.radioButtonValue,
                      onChanged: (value) {
                        Radiobuttonprovider.selectedButten(value);
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('Mail'),
                      value: 'Mail',
                      groupValue: Radiobuttonprovider.radioButtonValue,
                      onChanged: (value) {
                        Radiobuttonprovider.selectedButten(value);
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('Female'),
                      value: 'Female',
                      groupValue: Radiobuttonprovider.radioButtonValue,
                      onChanged: (value) {
                        Radiobuttonprovider.selectedButten(value);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
