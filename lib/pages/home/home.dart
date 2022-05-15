import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/db_bloc.dart';

import '../../components/appwrapper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return AppWrapper(
      actions: false,
      icon: false,
      child: Center(
        child: Column(
          children: [
            const Icon(
              Icons.key,
              size: 200,
              color: Colors.green
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5)
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: BlocBuilder<DatabaseBloc, DatabaseState>(
                builder: ((context, state) {
                  return Column(
                    children: [
                      const Text(
                        'Welcome to PolyPass',
                        style: TextStyle( fontSize: 30, color: Colors.white )
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5)
                      ),
                      ElevatedButton(
                        child: const Padding(
                          child: Text('Create a database', style: TextStyle( fontSize: 25 )),
                          padding: EdgeInsets.all(5)
                        ),
                        onPressed: state.status == DatabaseStatus.opening ? null : () {
                          router.go('/create');
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5)
                      ),
                      ElevatedButton(
                        child: const Padding(
                          child: Text('Open a database', style: TextStyle( fontSize: 25 )),
                          padding: EdgeInsets.all(5)
                        ),
                        onPressed: state.status == DatabaseStatus.opening ? null : () async {
                          final result = await FilePicker.platform.pickFiles(
                            dialogTitle: 'Open database',
                            type: FileType.custom,
                            allowedExtensions: ['ppdb.json']
                          );
                    
                          final path = result?.paths.first;
                          
                          if(path != null) {
                            context.read<DatabaseBloc>().add(DatabaseOpened(path: path));
                            
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Opening database...'),
                              duration: Duration( days: 365 )
                            ));
                          }
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  );
                })
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      )
    );
  }
}