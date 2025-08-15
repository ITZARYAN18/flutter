import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:12,

        initialIndex: 1,

        child: 
        Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: TabBar(
                indicatorColor: Colors.green,
                isScrollable: true,
                tabs: [

              Tab(
                icon: Icon(Icons.chat_bubble),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.view_carousel),
                text: 'Status',
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: 'Calls',
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: 'Video',
              ),
                  Tab(
                    icon: Icon(Icons.chat_bubble),
                    text: 'Chats',
                  ),
                  Tab(
                    icon: Icon(Icons.view_carousel),
                    text: 'Status',
                  ),
                  Tab(
                    icon: Icon(Icons.phone),
                    text: 'Calls',
                  ),
                  Tab(
                    icon: Icon(Icons.camera),
                    text: 'Video',
                  ),
                  Tab(
                    icon: Icon(Icons.chat_bubble),
                    text: 'Chats',
                  ),
                  Tab(
                    icon: Icon(Icons.view_carousel),
                    text: 'Status',
                  ),
                  Tab(
                    icon: Icon(Icons.phone),
                    text: 'Calls',
                  ),
                  Tab(
                    icon: Icon(Icons.camera),
                    text: 'Video',
                  ),
            ]),
          ),
    //       body: TabBarView(children:[
    //
    //       Container(
    //         child: Center(
    //           child: Text("Chats"),
    //         ),
    //       ),
    //           Container(
    //             child: Center(
    //               child: Text("Status",style: TextStyle(fontSize: 40),),
    //             ),
    //           ),
    //           Container(
    //           child: Center(
    //           child: Text("Calls"),
    //     ),
    // ),
    // Container(
    //   child: Center(
    //     child: Text("Video"),
    //   ),
    // )]),
        )
    );
  }
}
