class Bank {
  final String name;
  final String logoImagePath;

  const Bank({required this.name, required String logoImagePath})
      : logoImagePath = "assets/image$logoImagePath";
}
