class Mensalidades {
  int saldo;
  String vencimento;
  int id;

  Mensalidades({this.saldo, this.vencimento, this.id});

  Mensalidades.fromJson(Map<String, dynamic> json) {
    saldo = json['Saldo'];
    vencimento = json['Vencimento'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Saldo'] = this.saldo;
    data['Vencimento'] = this.vencimento;
    data['id'] = this.id;
    return data;
  }
}
