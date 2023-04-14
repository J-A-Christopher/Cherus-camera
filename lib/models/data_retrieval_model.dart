import 'package:firebase_storage/firebase_storage.dart';

class FireStoreDataBase {
  String? downloadUrl;

  Future getData() async {
    try {
      await downloadUrlExample();
      return downloadUrl;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> downloadUrlExample() async {
    downloadUrl = await FirebaseStorage.instance
        .ref()
        .child('images/Home.png')
        .getDownloadURL();
    print(downloadUrl.toString());
  }
}
