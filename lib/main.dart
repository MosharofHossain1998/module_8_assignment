import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> DSLRicon = [
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://i.pinimg.com/originals/a6/ba/40/a6ba4097decff11819c5235628194eaf.jpg',
    'https://cdn.pixabay.com/photo/2017/12/28/22/03/lens-3046269_640.jpg',
    'https://cdn.vox-cdn.com/thumbor/JH2wyRauqPM16zCoLM_jwB5deS8=/0x0:2040x1360/2000x1333/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/19938420/DSCF8146.jpg',
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://www.findingtheuniverse.com/wp-content/uploads/2017/01/Best-Travel-Camera.jpg',
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://i.pinimg.com/originals/a6/ba/40/a6ba4097decff11819c5235628194eaf.jpg',
    'https://cdn.pixabay.com/photo/2017/12/28/22/03/lens-3046269_640.jpg',
    'https://cdn.vox-cdn.com/thumbor/JH2wyRauqPM16zCoLM_jwB5deS8=/0x0:2040x1360/2000x1333/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/19938420/DSCF8146.jpg',
    'https://i.pinimg.com/1200x/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg',
    'https://www.findingtheuniverse.com/wp-content/uploads/2017/01/Best-Travel-Camera.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Center(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return orientation == Orientation.portrait? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                ClipOval(
                    child: Image.network("https://i.pinimg.com/originals/a6/ba/40/a6ba4097decff11819c5235628194eaf.jpg",
                      height: screenWidth*.7,
                      width: screenWidth*.7,
                      fit: BoxFit.cover,
                    )
                ),

                const SizedBox(height: 20,),
                const Text("John Doe",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),

                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("DSLR photography, short for Digital Single-Lens Reflex photography, is a popular and advanced form of digital photography. It involves the use of a DSLR camera, which is characterized by its interchangeable lenses and the ability to capture high-quality images with various manual settings.",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                ),

                Expanded(
                  child: GridView.builder(
                      itemCount: DSLRicon.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
                      ),
                      itemBuilder: (context,index){
                        return Container(
                            height: screenWidth*.7,
                            width: screenWidth*.7,
                            margin: EdgeInsets.all(5),
                            child : Image.network(
                              DSLRicon[index],
                              fit: BoxFit.cover,
                            )
                        );
                      }
                  ),
                )

              ],
            ): Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                ClipOval(
                    child: Image.network("https://i.pinimg.com/originals/a6/ba/40/a6ba4097decff11819c5235628194eaf.jpg",
                      height: screenWidth*.37,
                      width: screenWidth*.37,
                      fit: BoxFit.cover,
                    )
                ),

                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("John Doe",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left:5,top: 10,bottom: 10,right: 10),
                        child: Text("DSLR photography, short for Digital Single-Lens Reflex photography, is a popular and advanced form of digital photography. It involves the use of a DSLR camera, which is characterized by its interchangeable lenses and the ability to capture high-quality images with various manual settings.",
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      ),
                      Expanded(
                        child: GridView.builder(
                            itemCount: DSLRicon.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemBuilder: (context,index){
                              return Container(
                                  height: screenWidth*.5,
                                  width: screenWidth*.5,
                                  margin: EdgeInsets.all(5),
                                  child : Image.network(
                                    DSLRicon[index],
                                    fit: BoxFit.cover,
                                  )
                              );
                            }
                        ),
                      )
                    ],
                  ),
                ),


              ],
            );

          },

        ),

      ),
    );
  }
}

