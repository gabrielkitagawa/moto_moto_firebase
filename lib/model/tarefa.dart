class Tarefa{

  // ESPECIFICACAO DAS 'CHAVE' DO DOCUMENTO
  final String uid;
  final String titulo;
  final String descricao;

  // CONSTRUTOR
  Tarefa (this.uid, this.titulo, this.descricao);

  // 'tojson' CONVERSAO DE OBJETO EM dart PARA json
  Map<String,dynamic> toJson(){
    return <String,dynamic>{
      'uid'        : uid,
      'titulo'     : titulo,
      'descricao'  : descricao,
    };
  }

  // 'fromJson' CONVERSAO DE UM json PARA UM ONJETO EM dart
  factory Tarefa.fromJson(Map<String,dynamic> dados){
    return Tarefa(
      dados ['uid'],
      dados ['titulo'],
      dados ['descricao'],
    );
  }

}