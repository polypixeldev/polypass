import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';

import '../appwrapper.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _formKey = GlobalKey<_CreateState>();
  String? _name;
  String? _description;
  String? _path;

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFF282c34),
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))
            ),
            child: const Text(
              "Create a database",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              )
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF282c34),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Name (required)",
                        contentPadding: EdgeInsets.all(10),
                        floatingLabelStyle: TextStyle( color: Colors.black ),
                        labelStyle: TextStyle( color: Colors.black ),
                        border: InputBorder.none
                      ),
                      onChanged: (name) {
                        setState(() {
                          _name = name;
                        });
                      },
                      cursorColor: Colors.black,
                    )
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Container(
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Description",
                        contentPadding: EdgeInsets.all(10),
                        floatingLabelStyle: TextStyle( color: Colors.black ),
                        labelStyle: TextStyle( color: Colors.black ),
                        border: InputBorder.none
                      ),
                      onChanged: (description) {
                        setState(() {
                          _description = description;
                        });
                      },
                      cursorColor: Colors.black,
                    )
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Text(
                    "Current path: ${_path ?? 'None'}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    )
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  ElevatedButton(
                    child: const Text(
                      "Set database file location",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      )
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.all(15))
                    ),
                    onPressed: () async {
                      final path = await FilePicker.platform.saveFile(
                        dialogTitle: "Set database file location",
                        fileName: _name == null ? "passwords.ppdb" : "$_name.ppdb",
                        type: FileType.custom,
                        allowedExtensions: ["ppdb"]
                      );

                      setState(() {
                        _path = path;
                      });
                    },
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                  Row(
                    children: [
                      ElevatedButton(
                        child: const Text(
                          "Back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          )
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(const EdgeInsets.all(15))
                        ),
                        onPressed: () {
                        final router = GoRouter.of(context);

                          try {
                            router.pop();
                          } catch (_e) {
                            router.go('/');
                          }
                        }
                      ),
                      const Padding( padding: EdgeInsets.symmetric( horizontal: 5 )),
                      ElevatedButton(
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          )
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(const EdgeInsets.all(15))
                        ),
                        onPressed: () {
                          // TODO: Create the database
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min
                  )
                  
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
              )
            )
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
      ),
      actions: false,
      icon: false
    );
  }
}