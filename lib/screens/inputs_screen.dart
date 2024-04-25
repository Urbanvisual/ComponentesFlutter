import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'urban@hot.es',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Inputs y Forms',
              style: TextStyle(color: Colors.white),
            )),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormkey,
                child: Column(
                  children: [
                    CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre de usuario',
                      formProperty: 'first_name',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido de usuario',
                      formProperty: 'last_name',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo de usuario',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña del ususario',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(
                              value: 'Admin', child: Text('Admin')),
                          DropdownMenuItem(
                              value: 'SuperUser', child: Text('SuperUser')),
                          DropdownMenuItem(
                              value: 'Developer', child: Text('Developer')),
                          DropdownMenuItem(
                              value: 'Jr. Developer',
                              child: Text('Jr. Developer'))
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Admin';
                        }),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context)
                              .requestFocus(FocusNode()); //oculta el teclado
                          if (!myFormkey.currentState!.validate()) {
                            print('Formulario no valido');
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                            width: double.infinity,
                            child: Text('Guardar',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center)))
                  ],
                ),
              )),
        ));
  }
}
