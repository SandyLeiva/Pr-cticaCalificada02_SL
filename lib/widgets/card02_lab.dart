import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class Card02Lab extends StatelessWidget {
  const Card02Lab({
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
        mainAxisSize: MainAxisSize.min,             
        children: [
            const ListTile(                  
              leading: Icon(Icons.car_crash, size: 60, color: Color.fromARGB(255, 133, 133, 133),),
              title: Text('Titulo de la tarjeta', style: TextStyle(fontSize: 21) ),
              subtitle: Text('Este es un texto de ejemplo para poder mostrar una mejor disposición del texto en una tarjeta' , style: TextStyle(fontSize: 17),),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(                 
                  onPressed: (){},                  
                  /*style: TextButton.styleFrom(backgroundColor: AppTheme.primary ),*/
                  child: const Text('Procesar', style: TextStyle(fontSize: 20)),
                  ),
                const SizedBox(width: 70),
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