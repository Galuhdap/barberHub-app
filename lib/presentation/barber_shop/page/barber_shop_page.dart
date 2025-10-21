import 'package:barberhub_app/presentation/barber_shop/bloc/bloc/barber_shop_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BarberShopPage extends StatefulWidget {
  const BarberShopPage({super.key});

  @override
  State<BarberShopPage> createState() => _BarberShopPageState();
}

class _BarberShopPageState extends State<BarberShopPage> {
  @override
  void initState() {
    context.read<BarberShopBloc>().add(const BarberShopEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              'Auth Page',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          BlocBuilder<BarberShopBloc, BarberShopState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox();
                },
                loading: () => const CircularProgressIndicator(),
                succes: (getBarberShopResponse) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: getBarberShopResponse.data.length,
                      itemBuilder: (context, index) {
                        final barberShop = getBarberShopResponse.data[index];
                        return ListTile(
                          title: Text(barberShop.name),
                          subtitle: Text(barberShop.address),
                        );
                      },
                    ),
                  );
                },
                error: (message) => Text('Error: $message'),
              );
              // return Container(width: 200, height: 200, color: Colors.red);
            },
          ),
        ],
      ),
    );
  }
}
