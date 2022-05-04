import 'package:flutter/material.dart';

import '../../../components/appwrapper.dart';

class DbHome extends StatelessWidget {
  const DbHome({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: Row(
        children: const [
          TreeColumn(),
          VerticalDivider(
            width: 20,
            thickness: 1,
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          PasswordsColumn()
        ]
      )
    );
  }
}

class TreeColumn extends StatelessWidget {
  const TreeColumn({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width * .25) - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF373b42)
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: []
      ),
    );
  }
}

class PasswordsColumn extends StatelessWidget {
  const PasswordsColumn({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width * .75) - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF373b42)
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: []
      ),
    );
  }
}