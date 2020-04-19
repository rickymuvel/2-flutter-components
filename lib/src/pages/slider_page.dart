import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 100.0;
  bool _bloquearCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Divider(),
            _crearCheckbox(),
            _crearSwitch(),
            _showSliderValue(),
            Divider(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquearCheck ? null : (valor) {
        setState(() {
          _sliderValue = valor;
        });
      },
    );

  }

  Widget _showSliderValue() {
    return Text("$_sliderValue");
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/3a/33/c1/3a33c11780a0cc4d69a8ff1f4d1095c4.png'),
      width: _sliderValue,
      fit: BoxFit.contain
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
