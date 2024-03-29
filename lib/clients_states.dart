import 'package:bloc_stream/client.dart';

//oque queremos carregar na tela
abstract class ClientState { //Ela possui um atributo clients, que é uma lista de objetos Client
  List<Client>? clients;
  ClientState({required this.clients}); //O construtor exige que seja passada uma lista de clientes
}

//representa o estado inicial 
class ClientInitialState extends ClientState {
  ClientInitialState() : super(clients: []); //chama o construtor da classe pai que inicialmente e vazia
}


class ClientSuccessState extends ClientState {
  ClientSuccessState({required List<Client>? clients}) //Ela recebe a lista de clientes como parâmetro no construtor 
      : super(clients: clients); // e a passa para o construtor da classe pai
}

// aqui poderia criar o ClientErrorState e outros