import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    //TODO: Se debe de navegar al formulario de registro de nueva mascota
                  },
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: const CircleAvatar(
                        child: Text("Nombre del Perro"),
                      ),
                      onTap: () {
                        //TODO: Debe de llevar al perfil de la mascota
                      },
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
          //TODO: Se deben de agregar las mascotas que se pueden adoptar
        ],
      ),
    );
  }
}
