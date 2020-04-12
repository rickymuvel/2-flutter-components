import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_tab),
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      // initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return 
          ListView(
            children: _listaItems(snapshot.data),
          );  
      },
    );
    }
      
  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}