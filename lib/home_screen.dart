import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/text_provider.dart';
import 'package:provider_example/provider/user_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final obj = Provider.of<TextProvider>(context);
    final ageObj = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<TextProvider>(builder: (context, text, child) {
            return Text(text.text);
          }),
          ElevatedButton(
              onPressed: () {
                obj.textOne();
              },
              child: const Text("Change Text 1")),
          ElevatedButton(
              onPressed: () {
                obj.textTwo();
              },
              child: const Text("Change Text 2")),
          ElevatedButton(
              onPressed: () {
                obj.defaultText();
              },
              child: const Text("Change Default")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Consumer<UserProvider>(builder: (context, user, child) {
                return Text("${user.age}");
              }),
              OutlinedButton(
                  onPressed: () {
                    ageObj.incre();
                  },
                  child: const Text('Increase Age')),
              OutlinedButton(
                  onPressed: () {
                    ageObj.incre();
                  },
                  child: const Text('Decrease Age'))
            ],
          )
        ],
      ),
    );
  }
}
