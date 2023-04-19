import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {},
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Officia velit laboris pariatur aliquip occaecat aliquip nisi enim in cillum enim ea incididunt adipisicing. Duis minim ipsum mollit incididunt do ea elit magna ea cupidatat adipisicing et. Non voluptate deserunt nulla ullamco consequat eiusmod incididunt minim veniam.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Ad tempor dolore nostrud Lorem mollit duis anim ex ut proident ex nostrud occaecat. Laborum magna nisi voluptate veniam Lorem laboris enim et nisi et voluptate ullamco duis. Officia commodo ullamco ad dolor. Proident officia deserunt do cupidatat aliqua veniam ipsum esse et aliquip excepteur labore fugiat.')
              ]);
            },
            child: const Text('Licencias usadas'),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Mostrar diálogo'),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar snackbar'),
      ),
    );
  }
}
