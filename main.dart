import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:SocialApp() ,
));

class SocialApp extends StatelessWidget {
  const SocialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        title: Text('Social App'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
                Icons.search
            ),
          ),
        ],

      ),
      body:Column(
        children: [
          Container(
            height: 45,
            color: Colors.blue,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Icon(Icons.home,
                      size: 30,
                      color:Colors.white ,),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Icon(Icons.person_add,
                        size: 30,
                        color:Colors.white ),
                  ),
                ),
                Expanded(
                  child:Container(
                    child: Icon(Icons.group,
                        size: 30,
                        color:Colors.white ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Icon(Icons.notifications_active,
                      size: 30,
                        color:Colors.white),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children:[
                CircleAvatar(
                  radius:25,
                  backgroundImage: AssetImage('assets/images/images.jpg'),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Text('Amir Nazeh',
                          style:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      Text('10:00 am')
                    ],
                  ),
                ),
                Icon(

                    Icons.more_vert
                ),

              ],
            ),
          ),

          Container(
            width: double.infinity,
            height: 300,
            child: Image(
              image: AssetImage('assets/images/sports.png'),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[400],
          ),
          Container(
            //color: Colors.grey,
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Icon(
                          Icons.thumb_up_alt_outlined
                      ),
                      Text('Like'),
                    ],
                  ),
                ),
                Expanded(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.center ,

                    children: [
                      Icon(
                          Icons.mode_comment_outlined
                      ),
                      Text('Comment'),
                    ],
                  ),
                ),
                Expanded(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.center ,

                    children: [
                      Icon(
                          Icons.reply
                      ),
                      Text('Share'),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
