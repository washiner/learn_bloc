import 'dart:async';

import 'package:bloc_stream/client.dart';
import 'package:bloc_stream/client_repositorie.dart';
import 'package:bloc_stream/clients_events.dart';
import 'package:bloc_stream/clients_states.dart';

class ClientBloc {
  final _clientRepo = ClientRepositories(); //recupera os dados da classe repository

//DOIS STREAMS UM PRA IMPUT OUTRO PRA OUTPUT
  final StreamController<ClientEvent> _imputClientController =
      StreamController<ClientEvent>();
  final StreamController<ClientState> _outputClientController =
      StreamController<ClientState>();

  Sink<ClientEvent> get imputClient => _imputClientController.sink;//ENTRADA
  Stream<ClientState> get stream => _outputClientController.stream;//SAIDA


//DENTRO DO METODO CONSTRUTOR QUE FAZEMOS O MAPEAMENTO

  ClientBloc() {                   //METODO LISTEN PASSA UM FUNCAO ANOMINA
    _imputClientController.stream.listen(_mapEventToState);
  }
                   //RECEBE UM CLIENTEVENT DE NOME event
  _mapEventToState(ClientEvent event) {
    List<Client>? clients = []; //declara uma lista vazia
    if (event is LoadClientEvent) {
      clients = _clientRepo.loadClients();
    } else if (event is AddClientEvent) {
      clients = _clientRepo.addClient(event.client!);
    } else if (event is RemoveClientEvent) {
      clients = _clientRepo.removeClient(event.client!);
    }
    _outputClientController.add(ClientSuccessState(clients: clients));
  }
}
