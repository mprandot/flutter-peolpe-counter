import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    title: "Contador de pessoas",
    home: Container(
      color: const Color(0xff612F74),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pessoas", textDirection: TextDirection.ltr, 
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: 
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                  child: Text("+1", style: TextStyle(color: Colors.white, fontSize: 20)),
                  onPressed: () {
                  },
                ),

                FlatButton(
                  child: Text("-1", style: TextStyle(color: Colors.white, fontSize: 20)),
                  onPressed: () {
                    print("entrou uma pessoa");
                  },
                ),
              ],
            ),
          ),

          Text("Pode entrar", textDirection: TextDirection.ltr, 
            style: TextStyle(
              color: Colors.white, 
              fontStyle: FontStyle.italic,
              fontSize: 30
            ),
          ),

        ],
      ),
    ),
  ));
}