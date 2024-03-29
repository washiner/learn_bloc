import 'package:bloc_stream/client.dart';
//estrutura principal o contrato 
abstract class ClientEvent {} // se tivesse uma estrutura padrao para todos eventos poderia usar aqui

class LoadClientEvent extends ClientEvent {}

class AddClientEvent extends ClientEvent {
  Client? client;

  AddClientEvent({required this.client});
}

class RemoveClientEvent extends ClientEvent {
  Client? client;

  RemoveClientEvent({required this.client});
}
