
class MultDiv {
  static int multiplicar(int a, int b) {
    return a * b;
  }

  static double dividir(int a, int b) {
    
    if (b == 0) {

      throw ArgumentError('No se puede dividir entre cero.');
    }
    return a / b;
  }
}