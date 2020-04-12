import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://as.com/meristation/imagenes/2018/11/12/noticia/1542053880_906934_1542962110_sumario_normal.jpeg'),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.orange[200],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.tn.com.ar/sites/default/files/styles/720x720/public/2018/11/12/stanlee.jpg'),
          placeholder: AssetImage('assets/original.gif')
        ),
      )
    );
  }
}