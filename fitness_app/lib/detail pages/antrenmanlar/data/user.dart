class User{
  final String name, surname, email, password, year, sex;

  User({required this.name,
  required this.surname,
  required this.email,
  required this.password,
  required this.year,
  required this.sex});

  List<User> users = [
    User(name: "Murat", surname: "Güçsüz", email: "muabka1678@gmail.com", password: "123456", year: "22", sex: 'Erkek'),
  ];
}