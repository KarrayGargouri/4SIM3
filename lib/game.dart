class Game{

  final String path;
  final String name;
  final int price;
  final String description;
  final int qte;

  Game(this.path, this.name, this.price, this.description, this.qte);

  @override
  String toString() {
    return 'Game{path: $path, name: $name, price: $price, description: $description, qte: $qte}';
  }
}