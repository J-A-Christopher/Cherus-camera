import 'package:flutter/material.dart';
import '../models/data_retrieval_model.dart';

class ImageDisplay extends StatefulWidget {
  const ImageDisplay({super.key});

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  bool almStatus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SwitchListTile(
          value: almStatus,
          onChanged: (bool value) {
            setState(() {
              almStatus = value;
            });
          },
          title: const Text('Toggle Alarm Status'),
        ),
        FutureBuilder(
          future: FireStoreDataBase().getImageUrls('images'),
          builder: (context, AsyncSnapshot<List<String>> snapshot) {
            if (snapshot.hasData) {
              List<String> urls = snapshot.data!;
              return Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return Image.network(urls[index]);
                  }),
                  itemCount: urls.length,
                ),
              );
            } else if (snapshot.hasError) {
              return Text('Error:${snapshot.error}');
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },

          // FireStoreDataBase().getData(),
          // builder: (context, snapshot) {
          //   if (snapshot.hasError) {
          //     return const Text('Something went Wrong');
          //   }
          //   if (snapshot.connectionState == ConnectionState.done) {
          //     return Container(
          //         margin: const EdgeInsets.only(top: 80),
          //         height: 400,
          //         width: 400,
          //         child: Image.network(snapshot.data.toString()));
          //   }
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
        )

        // Center(
        //   child: SizedBox(
        //     height: 200,
        //     width: 200,
        //     child: Image.asset('assets/internet.png'),
        //   ),
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        // ElevatedButton(
        //     onPressed: () {}, child: const Text('Get Latest Image !'))
      ],
    );
  }
}
