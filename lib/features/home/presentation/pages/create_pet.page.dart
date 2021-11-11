import 'package:flutter/material.dart';
import 'package:my_pet/features/home/presentation/widgets/photo_selected.widget.dart';

class CreatePetPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  CreatePetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registra tu mascota'),
        ),
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const PhotoSelectedWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (String? value) {
                        if((value == null) || (value.isEmpty)) {
                          return 'Por favor ingresa el nombre de la mascota';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        label: Text('Nombre de la mascota'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Edad de la mascota'),
                      ),
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if((value == null) || (value.isEmpty)) {
                          return 'Por favor ingresa la especie de la mascota';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        label: Text('Epecie'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('Raza')),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _formKey.currentState!.validate();
              },
              child: const Text(
                'Registrar',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(const Size(150, 54)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
