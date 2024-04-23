// Magneto quiere reclutar la mayor cantidad de mutantes para poder luchar contra los X-Men.
// Te ha contratado a ti para que desarrolles un proyecto que detecte si un humano es mutante basándose en su secuencia de ADN.
// Para eso te ha pedido crear un programa con un método o función con la siguiente firma (En alguno de los siguiente lenguajes: Java / Golang / C-C++ / Javascript (node) / Python / Ruby):
// boolean isMutant(String[] dna); 
// En donde recibirás como parámetro un array de Strings que representan cada fila de una tabla de (NxN) con la secuencia del ADN. Las letras de los Strings solo pueden ser: (A,T,C,G), las cuales representa cada base nitrogenada del ADN.

void main() {
  bool existAdn(String value) {
    const accept = ["A", "T", "C", "G"];

    for (var l in accept) {
      if (value.contains("$l$l$l$l")) {
        return true;
      }
    }

    return false;
  }

  bool isMulante(List<String> dna) {
    int count = 0;

    for (int i = 0; i < dna.length; i++) {
      if (existAdn(dna[i])) count++;
    }

    for (int i = 0; i < dna.length; i++) {
      String newString = '';

      for (int e = 0; e < dna.length; e++) {
        newString += '${dna[e].split("")[i]}';
      }

      if (existAdn(newString)) count++;
    }

    int countCruzada(List<String> listDna, bool isReverse) {
      int count = 0;
      for (int i = 0; i < (listDna.length - (isReverse ? 1 : 0)); i++) {
        int current = 0;
        String newString = '';

        if (i < 3) {
          for (int e = i; e < listDna.length; e++) {
            newString += '${listDna[e].split("")[current]}';
            current++;
          }
        } else {
          for (int e = i; e > -1; e--) {
            newString += '${listDna[e].split("")[current]}';
            current++;
          }
        }

        if (existAdn(newString)) count++;
      }

      return count;
    }

    count += countCruzada(dna, false);
    count += countCruzada(dna, true);

    return count > 1;
  }

  print("Is Mulante : ${isMulante([
        "ATGCGA",
        "CAGTGC",
        "TTATGT",
        "AGAAGG",
        "CCCCTA",
        "TCACTG"
      ])}");
  print("Is Mulante : ${isMulante([
        "ATGCGA",
        "CAGTGC",
        "TTATTT",
        "AGACGG",
        "GCGTCA",
        "TCACTG"
      ])}");
}
