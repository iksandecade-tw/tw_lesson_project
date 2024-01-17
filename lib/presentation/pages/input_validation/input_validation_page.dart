import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';

@RoutePage()
class InputValidationPage extends StatefulWidget {
  const InputValidationPage({super.key});

  @override
  State<InputValidationPage> createState() => _InputValidationPageState();
}

class _InputValidationPageState extends State<InputValidationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi There',
              style: TextStyle(
                  fontSize: 16,
                  color: ColorConstant.primary,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Please enter your name and email :D',
              style: TextStyle(fontSize: 14, color: ColorConstant.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _key,
              child: Column(
                children: [
                  TextFormFieldCustom(
                    controller: nameController,
                    title: 'Name',
                    hintText: 'Enter your name...',
                    preffixIcon: const Icon(Icons.person_2_outlined),
                    validator: (text) => (text == null || text.isEmpty)
                        ? 'Name should not empty'
                        : null,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormFieldCustom(
                    controller: emailController,
                    title: 'Email',
                    hintText: 'Enter your email...',
                    preffixIcon: const Icon(Icons.email_outlined),
                    validator: (text) => (text == null || text.isEmpty)
                        ? 'Email should not empty'
                        : null,
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('SUBMIT')))
          ],
        ),
      ),
    );
  }
}
