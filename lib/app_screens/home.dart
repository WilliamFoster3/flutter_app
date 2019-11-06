import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(

          children: <Widget>[
            Container (
              color: Colors.grey,
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
//                      Padding(
//                        padding: EdgeInsets.all(10),
//                        child: Words(),
//                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: FlightBookButton(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),

                        child: FlightBookButton(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),

                        child: FlightBookButton(),
                      ),
                    ]),
//                Column (
//                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    children: <Widget>[
//                      Padding(
//                        padding: EdgeInsets.all(10),
//                        child: Words(),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(3),
//                        child: FlightBookButton(),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(3),
//                        child: FlightBookButton(),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(3),
//                        child: FlightBookButton(),
//                      ),
//                    ]),
              ]

            )
            ),

            FlightBookButton(),
            Container(
              color: Colors.cyan,
              child: Text('yo',
                style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
               fontWeight: FontWeight.bold,
                 ),
                   ),

            ),
            Container(
              color: Colors.deepPurple,

            ),
            StarPicture(),

       ],

    );
    //Column works the same way
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
     children: <Widget>[
       Container (
    width: 350,
    height: 150,
    child:new RaisedButton(

          splashColor: Colors.deepPurple,
          color: Colors.white,
          textColor: Colors.black,
          child: Row(
          children: <Widget>[
            Padding (
              padding : EdgeInsets.fromLTRB(1,1,20,1),
            child: Picture(),
            ),
            Padding (
              padding : EdgeInsets.fromLTRB(1,1,20,1),
              child: StarButton(),
            ),
            Column (children: <Widget>[
              Padding (
                padding: EdgeInsets.fromLTRB(1,10,1,6),
                child: Text("Name",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Text("Class in common",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),


            ],)

          ]),


          elevation: 6,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          }
    ),
      ),
       Positioned (
         left: 120,
         top: 0,
       child: Picture()
       ),
       
     ]
    );
  }
}

//class TestGest extends GestureDetector {
//  return onTap:() {
//
//  }
//}
class Words extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

        return new Text('Avaiable Near You:',
          style: TextStyle(
           // height: 7,
            color: Colors.blue,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          )


          );



  }
}
class ActiveWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Text('Active Right Now:',

        style: TextStyle(
          //height: 7,
          color: Colors.blue,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        )


    );



  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('assets/images/download.png');
    var image = new Image(image: assetImage, height: 60.0, width: 60.0);
    return image;



  }
}

class StarPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('assets/images/star.png');
    var image = new Image(image: assetImage, height: 20.0, width: 20.0);
    return image;



  }
}

class StarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('assets/images/star.png');
    var image = new Image(image: assetImage, height: 50, width: 50,);
    return new SizedBox(
      height: image.height,
      width: image.width,
      child: new FlatButton(
        color: Colors.white,
      child: StarPicture(),
      splashColor: Colors.blue,
      onPressed: () {},
      )
    );

  }
}




class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('RETURN TO COOLER PEOPLE'),
        ),
      ),
    );
  }
}
