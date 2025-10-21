part of 'barber_shop_bloc.dart';

@freezed
class BarberShopState with _$BarberShopState {
  const factory BarberShopState.initial() = _Initial;
  const factory BarberShopState.loading() = _Loading;
  const factory BarberShopState.succes(GetBarberShopResponse getBarberShopResponse) = _Succes;
  const factory BarberShopState.error(String message) = _Error;

}
