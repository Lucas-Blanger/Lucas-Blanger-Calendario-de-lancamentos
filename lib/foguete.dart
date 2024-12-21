class Foguete {
  int id;
  String nome_foguete;
  String local_lancamento;
  String nome;
  String email;
  String telefone;
  Foguete({
    required this.id,
    required this.nome_foguete,
    required this.local_lancamento,
    required this.nome,
    required this.email,
    required this.telefone,
  });
  factory Foguete.fromJson(Map<String, dynamic> jsonData) {
    return Foguete(
      id: int.parse(jsonData['id']),
      nome_foguete: jsonData['nome_foguete'],
      local_lancamento: jsonData['local_lancamento'],
      nome: jsonData['nome'],
      email: jsonData['email'],
      telefone: jsonData['telefone'],
    );
  }
}
