import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: myController,
            decoration: const InputDecoration(
                hintText: "Enter Text", border: InputBorder.none),
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(colors: [
                  Colors.teal,
                  Colors.green,
                ]),
              ),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecondPage(title: myController.text)));
                  },
                  child: const Text(
                    'Send',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  )))
        ],
      ),
    );
  }
}

//Andro Edsarev S. Villariez
