import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ShowModalBottomSheetPage extends StatelessWidget {
  const ShowModalBottomSheetPage({Key? key}) : super(key: key);

  _onItemSelected(BuildContext context, String item) {
    Navigator.of(context).pop();
    EasyLoading.showToast(
      "click ${item}",
      dismissOnTap: true,
      duration: Duration(seconds: 5),
      toastPosition: EasyLoadingToastPosition.center,
      maskType: EasyLoadingMaskType.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowModalBottomSheetPage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    color: Color(0xff737373),
                    height: 180,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.key),
                            title: Text("item1"),
                            onTap: () => _onItemSelected(context, "item1"),
                          ),
                          ListTile(
                            leading: Icon(Icons.key),
                            title: Text("item2"),
                            onTap: () => _onItemSelected(context, "item2"),
                          ),
                          ListTile(
                            leading: Icon(Icons.key),
                            title: Text("item3"),
                            onTap: () => _onItemSelected(context, "item3"),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Text("show modal bottom sheet"),
        ),
      ),
    );
  }
}
