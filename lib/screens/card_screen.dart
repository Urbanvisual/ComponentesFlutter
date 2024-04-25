import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Card Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Una hermosa carretera para correr',
              imageUlr:
                  'https://drscdn.500px.org/photo/43752970/m%3D900_k%3D1_a%3D1/v2?sig=8352321f2ef87e90c21a92bc715349f77f6938beceb58659a065eb426c8a3946',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUlr:
                  'https://th.bing.com/th/id/R.349f176ffd31050136ca38320e172227?rik=Pyhq5tDAmfhTbw&pid=ImgRaw&r=0',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUlr:
                  'https://th.bing.com/th/id/R.144aafed860c3635edad562aa3b1c7cc?rik=%2f3ky%2b%2fN2TBb2Pg&riu=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f170000%2fvelka%2flandschaft-1463581037RbE.jpg&ehk=gDPDMROSAaXRhj7cJHkcB92b7enJIza2NhEwqG0pw9o%3d&risl=&pid=ImgRaw&r=0',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUlr:
                  'https://th.bing.com/th/id/R.5b05df69067e25cf13e25cdc67847799?rik=X8FE%2ffXYElna3Q&riu=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f230000%2fvelka%2fscenic-landscape-1499784730rFj.jpg&ehk=Dahzv53UilGN0li%2fqnLFoK4N9XYqAIT2MO7gKS2Gkp4%3d&risl=&pid=ImgRaw&r=0',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
