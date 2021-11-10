import 'package:flutter/material.dart';

class PhotoSelectedWidget extends StatelessWidget {
  const PhotoSelectedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Positioned(
          top: 150,
          left: 150,
          child: InkWell(
            onTap: () => showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (_) {
                return SizedBox(
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: _width * 0.8,
                          padding: const EdgeInsets.only(left: 12),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.camera_alt_rounded),
                              Spacer(),
                              Text(
                                'Tomar foto',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: _width * 0.8,
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.photo_album_rounded),
                              Spacer(),
                              Text(
                                'Seleccionar foto',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            child: Container(
              height: 45,
              width: 45,
              child: const Icon(Icons.camera_alt_outlined),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    offset: Offset(0, 4),
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
