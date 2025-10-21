part of 'barber_shop_bloc.dart';

@freezed
class BarberShopEvent with _$BarberShopEvent {
  const factory BarberShopEvent.started() = _Started;
  const factory BarberShopEvent.fetch() = _FetchBaberShop;

}
