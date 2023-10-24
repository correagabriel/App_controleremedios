class tdsRemedios {
  String nomeMedicamento;
  String qtndMedicamento;
  String dscMedicamento;

  tdsRemedios(this.nomeMedicamento, this.qtndMedicamento,this.dscMedicamento);

  static List<tdsRemedios> gerartdsRemedios() {
    List<tdsRemedios> lista = [];
    for (int i = 1; i <= 1; i++) {
      lista.add(
        tdsRemedios(
          'Remédio $i',
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
          '',
        ),
      );
    }
    return lista;
  }
}
