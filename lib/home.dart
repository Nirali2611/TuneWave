import 'package:flutter/material.dart';
import 'albumPage.dart';
class song extends StatefulWidget {
  const song({super.key});
  @override
  State<song> createState() => _songState();
}
class _songState extends State<song> {
  List song_name = [
    'Never say Never',
    'Shivers',
    'Happier',
  ];
  List singer_name= [
    'Justin Bieber',
    'Ed Sheeran',
    'Selena Gomez',
  ];
  List song_Image1 = [
    'assets/justin.jpg',
    'assets/Ed.jpg',
    'assets/selena.jpg',
  ];
  List song_Image2=[
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
  ];
  List album_photos = [
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg'
  ];

  List asong = [
    'Kpop',
    'Pop',
    'Country',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                Color(0xFF303151).withOpacity(0.6),
                Color(0xFF303151).withOpacity(0.9),
            ],),),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top:20,left: 22),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell (
                                    onTap:() {},
                                    child: Icon(
                                      Icons.sort_rounded,
                                      color: Color(0XFF899CCF),
                                      size:30,
                                    ),
                                  ),
                                  Text("Discover",
                                    style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold ),),
                                  Icon(Icons.keyboard_arrow_right_rounded,
                                    color: Colors.white,
                                  ),
                                ],),
                            ),
                            Padding(padding: EdgeInsets.only(top: 15,right: 20,bottom:20),
                            child: Container(
                              height: 50,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Color(0xFF31314F),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 30) ,
                                    height: 50,
                                    width: 200,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Find your favorite song",
                                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                                    child: Icon(Icons.search,size: 30,color: Colors.white.withOpacity(0.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            SizedBox(height: 10,),
                            Padding(padding: EdgeInsets.only(bottom: 15),
                            child: Text("Made for you",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 350,
                                    child: ListView.builder(
                                      itemCount: song_Image1.length,

                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext context,int index){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context,
                                                MaterialPageRoute(builder:(context)=>
                                                    albumPage(name: song_name[index].toString() ,
                                                        song: singer_name[index].toString(),
                                                        image: song_Image1[index].toString(),
                                                        album: album_photos[index].toString(),
                                                      asong:asong[index].toString(),)));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                  height: 130,
                                                  width: 130,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20),
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                        image: AssetImage(song_Image1[index].toString(),)
                                                      )
                                                  ),
                                                child: Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(top:100,left:10),
                                                    child: Text(song_name[index].toString(),
                                                      style: TextStyle(color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 30,),
                                               Text(singer_name[index].toString(),
                                                 textAlign: TextAlign.center,
                                                 style: TextStyle(color: Colors.white,
                                                     fontSize: 15,fontWeight: FontWeight.bold),
                                               ),
                                             // Text(song[index].toString(),
                                               // textAlign: TextAlign.center,
                                               // style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),
                                           //   ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(padding:EdgeInsets.only(bottom: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height: 160,
                                    width: 350,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(9),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('assets/hd.jpeg',)
                                          ),
                                      ),
                                    child: Text(" New Release \n\n\n\n\n Make you mine",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: [
                                  Container(
                                      child:Text("Your Genre",
                                        style: TextStyle(
                                            fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold ),
                                      ),
                                  ),
                                  SizedBox(width: 220,),
                                  Icon(Icons.keyboard_arrow_right_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 350,
                                    child: ListView.builder(
                                      itemCount: album_photos.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext context,int index){
                                        return GestureDetector(
                                              onTap: (){
                                            Navigator.push(context,
                                                MaterialPageRoute(builder:(context)=>
                                                    albumPage(name: song_name[index].toString() ,
                                                        song: singer_name[index].toString(),
                                                        image: song_Image2[index].toString(),
                                                        album: album_photos[index].toString(),
                                                        asong:asong[index].toString(),
                                                    )));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                  height: 130,
                                                  width: 130,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: AssetImage(album_photos[index].toString(),)
                                                      )
                                                  )
                                              ),
                                              SizedBox(width: 30,),
                                              Text(asong[index].toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                              ),
                                              // Text(song[index].toString(),
                                              // textAlign: TextAlign.center,
                                              // style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),
                                              //   ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: [
                                  Container(
                                    child:Text("Top Hits",
                                      style: TextStyle(
                                          fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold ),
                                    ),
                                  ),
                                  SizedBox(width: 240,),
                                  Icon(Icons.keyboard_arrow_right_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 350,
                                    child: ListView.builder(
                                      itemCount: song_Image2.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext context,int index){
                                        return GestureDetector(
                                            onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder:(context)=>
                                                  albumPage(name: song_name[index].toString() ,
                                                      song: singer_name[index].toString(),
                                                      image: song_Image2[index].toString(),
                                                      album: album_photos[index].toString(),
                                                      asong:asong[index].toString(),
                                              )));
                                        },
                                          child: Column(
                                            children: [
                                              Container(
                                                  height: 130,
                                                  width: 130,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: AssetImage(album_photos[index].toString(),)
                                                      )
                                                  )
                                              ),
                                              SizedBox(width: 30,),
                                              Text(asong[index].toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                              ),
                                              // Text(song[index].toString(),
                                              // textAlign: TextAlign.center,
                                              // style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),
                                              //   ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ),
              ),
        );
    }
}


