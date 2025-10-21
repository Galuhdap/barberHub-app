import 'package:barberhub_app/data/datasource/barber_shop/barber_shop_remote_datasource.dart';
import 'package:barberhub_app/data/model/get_barber_shop_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'barber_shop_event.dart';
part 'barber_shop_state.dart';
part 'barber_shop_bloc.freezed.dart';

class BarberShopBloc extends Bloc<BarberShopEvent, BarberShopState> {
  final BarberShopRemoteDatasource barberShopRemoteDatasource;

  BarberShopBloc(this.barberShopRemoteDatasource) : super(_Initial()) {
    on<_FetchBaberShop>((event, emit) async {
      // TODO: implement event handler
      emit(BarberShopState.loading());
      final result = await barberShopRemoteDatasource.getBarberShop();
      result.fold(
        (failure) => emit(BarberShopState.error(failure)),
        (data) => emit(BarberShopState.succes(data)),
      );
    });
  }
}
