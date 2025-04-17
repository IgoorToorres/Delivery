import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/_core/widgets/appbar.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        context: context,
        title: 'Perfil',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(
              children: [
                Icon(Icons.person, size: 200),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Alterar Foto',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nome',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(137, 255, 255, 255),
                    ),
                  ),
                  Text(
                    'João da Silva',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'email',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(137, 255, 255, 255),
                    ),
                  ),
                  Text(
                    'joao@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Senha',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(137, 255, 255, 255),
                    ),
                  ),
                  Text(
                    '*******',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Column(
              spacing: 12,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.cardColor, // cor de fundo
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(6), // borda menos arredondada
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Excluir Conta',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.cardColor, // cor de fundo
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(6), // borda menos arredondada
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Excluir Conta',
                        style:
                            TextStyle(color: AppColors.mainColor, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
