import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'NIDHI\'S APP',
      theme: ThemeData(
        
        primarySwatch: Colors.teal,
        
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String name1;
  String name2;
  Color color1;
  Color color2;
  String img_url;
  String img_ref;
  String temp="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQfK-DD31YOEZ3dK4gbJ9ZEPeqEBzfty-zIK-D-5AJzv3IdLXU";
  
  @override
  void initState() {
    name2 = "Batman";
    name1="Creepy guy";
    img_url="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQfK-DD31YOEZ3dK4gbJ9ZEPeqEBzfty-zIK-D-5AJzv3IdLXU";
    img_ref="https://www.dccomics.com/sites/default/files/imce/2019/09-SEP/Infected_Gordon_1_5d79a47e640f69.31221802.jpg";
    super.initState();
  }

  void _changeName() {
    setState(() {
      (name2 == "Batman")?name2="Creepy guy":name2="Batman";
        });

        (img_url==temp)?img_url=img_ref:img_url=temp;
        

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Monkey!", 
        style: TextStyle(
          fontFamily: "Cute_Font",
          fontSize: 38.0,
        )),
        backgroundColor: Colors.grey,
      ),
      
      body: Container(
        decoration: new BoxDecoration(

            // shape: BoxShape.circle,
            image: new DecorationImage(
              
            fit: BoxFit.cover,
            image: new NetworkImage(
                   "$img_url")
                   )
),
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          
              Text("", style:TextStyle(
                fontSize: 24.0,
              )),
              Icon(Icons.error,
              
              color: Colors.red,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$name2',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    
                  )
                ),
              ),
              // ColorBox(color1),
              new Container(
                margin: EdgeInsets.only(top:400.0),
        width: 190.0,
        height: 190.0,
        decoration: new BoxDecoration(

            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(
                   "$img_url")
                   )
                   )
                   ),

// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:   new Container(
//         width: 190.0,
//         height: 190.0,
//         decoration: new BoxDecoration(
//             shape: BoxShape.circle,
//             image: new DecorationImage(
//             fit: BoxFit.fill,
//             image: new NetworkImage(
//                    "https://www.dccomics.com/sites/default/files/imce/2019/09-SEP/Infected_Gordon_1_5d79a47e640f69.31221802.jpg")
//                    )
//   )),
// ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.red,
        onPressed: _changeName,
        tooltip: 'Click to Toggle',
        child: Icon(Icons.swap_horizontal_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




class ColorBox extends StatelessWidget{
  Color color;
  ColorBox(Color color){
  this.color=color;     
  }
   @override
  Widget build(BuildContext context){
    return Container(
      color: color,
      height: 200.0,
      width: 200.0,
    );
  }
}