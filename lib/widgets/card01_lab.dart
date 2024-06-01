import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class Card01Lab extends StatelessWidget {
  const Card01Lab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(              
        children: [
            const ListTile(                  
              leading: Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.car_crash, size: 30,  color:  Color.fromARGB(255, 112, 112, 112),),
              ),
              title: Text('Titulo de la tarjeta', style: TextStyle(fontSize: 21) ),
              subtitle: Text('Este es un subtitulo de la tarjeta creada, para poder probarla en Flutter' , style: TextStyle(fontSize: 17),),
            ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(                 
                  onPressed: (){},                  
                  child: const Text('Procesar', style: TextStyle(fontSize: 20)),
                  ),
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancelar', style: TextStyle(fontSize: 20))
                  )  
              ],
            ),
          )
        ],
      ),
    );
  }
}