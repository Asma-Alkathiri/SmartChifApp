import 'package:final_project/globals.dart';
import 'package:final_project/models/gpt_content.dart';
import 'package:final_project/service/gpt/gpt_service.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:flutter/material.dart';

class ForGpt extends StatefulWidget {
  const ForGpt({super.key});

  @override
  State<ForGpt> createState() => _ForGptState();
}


String prompt = 'i only have $ingredientList.';


class _ForGptState extends State<ForGpt> {
  TextEditingController chatController = TextEditingController();

  @override
  void initState() {
    super.initState();

    chatController = TextEditingController();
  }

  @override
  void dispose() {
    chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: FutureBuilder(
        future: GPTService().getSuggestions(prompt),
        builder: (context, snapshot) {
          final (gptContent, imageUrl) = snapshot.data ?? (GPTContent(), '');
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                const SignInAppbar(),
                const SizedBox(
                  height: 100,
                ),
                TextFieldWidget(
                  controller: chatController,
                  onSubmitted: (String value) {
                    setState(() {
                      prompt = chatController.text;
                    });
                  },
                  hintText: "chat",
                  label: "",
                ),
                const SizedBox(
                  height: 30,
                ),
                OrangeButton(
                  title: "Send text",
                  width: 278,
                  height: 57,
                  onPressed: () async {
                    setState(() {
                      prompt = chatController.text;
                    });
                  },
                ),
                Text('${gptContent.recipeName}'),
                Image.network(imageUrl)
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
