import 'package:flutter/material.dart';
import 'home.dart';
import '';

class albumPage extends StatefulWidget {
  String song;
  String name;
  String image;
  String album;
  String asong;


   albumPage({super.key,
    required this.name,
    required this.song,
    required this.image,
    required this.album,
     required this.asong,
  });

  @override
  State<albumPage> createState() => _albumPageState();
}

class _albumPageState extends State<albumPage>{
  double _currentSliderValue = 20;

  // audio player
  //AudioPlayer advancedPlayer;
  //AudioCache audioCache;
  //bool isPlaying = true;

  @override
 // void initState() {
    // TODO: implement initState
   // super.initState();
   // initPlayer();
  //}
  //initPlayer(){
    //advancedPlayer = new AudioPlayer();
    //audioCache = new AudioCache(fixedPlayer: advancedPlayer);
    //playSound(widget.songUrl);
 // }
 // playSound() async{
  //  await audioCache.play(localPath);
//}
  //stopSound(localPath) async{
    //File audioFile = await audioCache.load(localPath);
    //await advancedPlayer.setUrl(audioFile.path);
    //advancedPlayer.stop();
  //}
 // seekSound() async{
   // File audioFile = await audioCache.load(widget.songUrl);
    //await advancedPlayer.setUrl(audioFile.path);
    //advancedPlayer.seek(Duration(milliseconds: 2000));
  //}
  @override
  //void dispose() {
    // TODO: implement dispose
    //super.dispose();
    //stopSound(widget.songUrl);
  //}

  @override
  Widget build(BuildContext context) {
    var album_song;
    var Feather;
    var AntDesign;
    var Entypo;
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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(onPressed: null,
                    icon: Icon(
                      Icons.more_vert,
                    color: Colors.white,))
              ],
            ),
            backgroundColor: Colors.transparent,
            body: //var size = MediaQuery.of(context.size);
            SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 35,right: 35,top: 50),
                              child: Center(
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(widget.image),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: const EdgeInsets.only(left:10,right: 10),
                        child: Center(
                          child: Container(
                            width: 400,
                            height: 80,
                            child: Row(
                              children: [
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(widget.name,
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,),
                                      ),
                                      Center(
                                        child: Container(
                                          width: 370,
                                          child: Text(widget.song,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                            color: Colors.white.withOpacity(0.5),
                                          ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Slider(
                        activeColor: Colors.white.withOpacity(1),
                        value: _currentSliderValue,
                        min:0,
                        max: 200,
                        onChanged:(value){
                          setState(() {
                            _currentSliderValue = value;
                          });
                         // seekSound();
                        }
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("0:45",style:
                            TextStyle(
                              color: Colors.white.withOpacity(0.6),
                            ),
                            ),
                        Text("3:53",style:
                        TextStyle(
                          color: Colors.white.withOpacity(0.6),
                        ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                          padding: EdgeInsets.only(left: 0,right: 40,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                            icon: Icon(
                              Icons.skip_previous_rounded,
                              color: Colors.white.withOpacity(0.8),
                              size: 70,),
                            onPressed: null),
                            IconButton(
                            icon: Icon(
                           // isPlaying ?
                              Icons.play_circle_fill_sharp, // Icons.stop_circle_sharp,
                              color: Colors.blue.shade100,
                              size: 70,
                            ),
                        onPressed: (){
                           //   if(isPlaying){
                               // stopSound(widget.songUrl);
                                ///setState(() {
                                //  isPlaying = false;
                               // });
                               // else{
                                  //  playSound(widget.songUrl);
                                  //  setState(() {
                                  //  isPlaying = false;
                            //  }
                            //  }
                       }),
                            IconButton(
                                icon: Center(
                                  child: Icon(
                                    Icons.skip_next_rounded,
                                    color: Colors.white.withOpacity(0.8),
                                    size: 70,
                                  ),
                                ),
                                onPressed: null),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 30,top:30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              size: 50,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 30,top:10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Lyrics",
                            style: TextStyle
                              (color: Colors.white54,
                                fontSize: 20),),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
    );
  }
}
class AudioPlayer {
}

mixin AudioCache {
}

