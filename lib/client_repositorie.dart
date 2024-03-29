import 'package:bloc_stream/client.dart';

class ClientRepositories {

  //cria uma variável privada que armazenará uma lista vazia de objetos do tipo Client, que podem ser acessados e manipulados dentro da classe 
  // Esta linha declara uma variável privada chamada _clients, que é uma lista que armazenará objetos do tipo Client. Inicializa _clients como uma lista vazia.
  final List<Client> _clients = [];

// funcao loadClients que vai adicionar alguns clientes
  List<Client>? loadClients() {
    _clients.addAll([
      Client(nome: "José do Egito"),
      Client(nome: "Abigail Silva"),
      Client(nome: "Josafa Souza"),
      Client(nome: "Natanael Santos")
    ]);
    return _clients;
  }
  // 5 funcao do tipo lista
  List<Client>? addClient(Client client) { //possui um parametro chamado cliente que é um objeto do tipo Cliente
    _clients.add(client);
    return _clients;
  }
 // 6 função de nome removeClient que retorna uma lista de objetos do tipo Client, ou null se necessário.
                             //recebe um objeto do tipo Client como parâmetro.
  List<Client>? removeClient(Client client) {
    _clients.remove(client);
    return _clients;
  }
}

// 2 repositorio de clientes que esta apenas com dados staticos para fins didatico

// 3 lembrando que o repository poderia estar se conectando a um banco de dados externo
