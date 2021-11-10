import 'package:flutter/material.dart';
import 'package:my_pet/features/home/presentation/pages/create_pet.page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              child: IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CreatePetPage(),
                  ),
                ),
                icon: const Icon(Icons.add),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
