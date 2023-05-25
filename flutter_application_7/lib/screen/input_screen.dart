import 'package:flutter/material.dart';
import 'package:flutter_application_7/widget/custom_input_Field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'oscar',
      'last_name': 'laura',
      'email': 'oscar@gmail.com',
      'password': '1234567',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre del Usuario',
                  labelText: 'Nombre',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Email del usuario',
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Password del usuario',
                  labelText: 'Password',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr. Developers', child: Text('Jr. Developer'))
                  ],
                  onChanged: (value) {
                    formValues['roke'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('form no valid');
                      return;
                    }

                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
