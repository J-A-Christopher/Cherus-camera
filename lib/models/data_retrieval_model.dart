import 'package:firebase_storage/firebase_storage.dart';

class FireStoreDataBase {
  Future<List<String>> getImageUrls(String folderName) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    final ref = storage.ref().child(folderName);
    ListResult result = await ref.listAll();
    List<Future<String>> futures = [];
    result.items.forEach((Reference ref) {
      futures.add(ref.getDownloadURL());
    });
    return await Future.wait(futures);
  }
  // String? downloadUrl;

  // Future getData() async {
  //   try {
  //     await downloadUrlExample();
  //     return downloadUrl;
  //   } catch (e) {
  //     print(e);
  //     return null;
  //   }
  // }

  // Future<void> downloadUrlExample() async {
  //   downloadUrl = await FirebaseStorage.instance
  //       .ref()
  //       .child('images/Home.png')
  //       .getDownloadURL();
  //   print(downloadUrl.toString());
  // }
}
