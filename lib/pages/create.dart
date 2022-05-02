import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/create_form_bloc.dart';
import '../blocs/db_bloc.dart';

import '../appwrapper.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

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
              'Create a database',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              )
            ),
          ),
          BlocProvider(
            create: (context) => CreateFormBloc(),
            child: MultiBlocListener(
              listeners: [
                BlocListener<CreateFormBloc, CreateFormState>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Creating database...'),
                      duration: Duration( days: 365 )
                    ));
                  },
                  listenWhen: (previous, current) => current.submitted == true,
                ),
                BlocListener<CreateFormBloc, CreateFormState>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    context.read<DatabaseBloc>().add(DatabaseOpened( path: state.path ));
                    
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Opening database...'),
                      duration: Duration( days: 365 )
                    ));
                  },
                  listenWhen: (previous, current) => current.created == true
                ),
                BlocListener<DatabaseBloc, DatabaseBlocState>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    // TODO: Uncomment when /db/home is created
                    // router.go('/db/home');
                  },
                  listenWhen: (previous, current) => current.status == DatabaseStatus.unlocked
                )
              ],
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF282c34),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                padding: const EdgeInsets.all(15),
                child: Form(
                  child: Column(
                    children: [
                      const NameInput(),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const DescriptionInput(),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      BlocBuilder<CreateFormBloc, CreateFormState>(
                        builder: (context, state) {
                          return Text(
                            "Current path: ${state.path != '' ? state.path : 'None'}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            )
                          );
                        }
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const PathInput(),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                      Row(
                        children: [
                          BackButton(router: router),
                          const Padding( padding: EdgeInsets.symmetric( horizontal: 5 )),
                          const SubmitButton()
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  )
                )
              ),
            ),
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

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'Submit',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15))
      ),
      onPressed: () {
        context.read<CreateFormBloc>().add(const FormSubmitted());
      },
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
    required this.router,
  }) : super(key: key);

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'Back',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15))
      ),
      onPressed: () { 
        try {
          router.pop();
        } catch (_e) {
          router.go('/');
        }
      }
    );
  }
}

class PathInput extends StatelessWidget {
  const PathInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'Set database file location',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15))
      ),
      onPressed: () async {
        final bloc = context.read<CreateFormBloc>();
        
        final path = await FilePicker.platform.saveFile(
          dialogTitle: 'Set database file location',
          fileName: bloc.state.name == '' ? 'passwords.ppdb' : '${bloc.state.name}.ppdb',
          type: FileType.custom,
          allowedExtensions: ['ppdb']
        );

        if (path == null) {
          return;
        }
            
        bloc.add(PathChanged(path: path));
      },
    );
  }
}

class DescriptionInput extends StatelessWidget {
  const DescriptionInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5)
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Description',
          contentPadding: EdgeInsets.all(10),
          floatingLabelStyle: TextStyle( color: Colors.black ),
          labelStyle: TextStyle( color: Colors.black ),
          border: InputBorder.none
        ),
        onChanged: (description) {
          context.read<CreateFormBloc>().add(DescriptionChanged(description: description));
        },
        cursorColor: Colors.black,
      )
    );
  }
}

class NameInput extends StatelessWidget {
  const NameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5)
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Name (required)',
          contentPadding: EdgeInsets.all(10),
          floatingLabelStyle: TextStyle( color: Colors.black ),
          labelStyle: TextStyle( color: Colors.black ),
          border: InputBorder.none
        ),
        onChanged: (name) {
          context.read<CreateFormBloc>().add(NameChanged(name: name));
        },
        cursorColor: Colors.black,
      )
    );
  }
}