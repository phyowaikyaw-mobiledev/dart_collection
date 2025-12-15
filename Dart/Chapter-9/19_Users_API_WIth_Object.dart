import 'dart:convert';

import 'package:http/http.dart' as http; // aliancing

const API_URL = "https://jsonplaceholder.typicode.com/users";

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((response) {
        var rawData = response.body;
        List decodedData = jsonDecode(rawData) as List;
        List<Users> users = decodedData.map((u) => Users.from(u)).toList();

        print(users.length);
        print(users.runtimeType);

        print('Total users: ${users.length}');
        print('First user: ${users[0].name}');
        print('First user city: ${users[0].address.city}');
        print('First user company: ${users[0].company.name}');
        print('Second user city: ${users[1].address.city}');
      })
      .catchError((e) => print(e));
}

class Users {
  int id;
  String name, username, email, phone, website;
  Address address;
  Company company;

  Users({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory Users.from(data) {
    return Users(
      id: data['id'],
      name: data['name'],
      username: data['username'],
      email: data['email'],
      phone: data['phone'],
      website: data['website'],
      address: Address.from(data['address']),
      company: Company.from(data['company']),
    );
  }
}

class Address {
  String street, suite, city, zipcode;
  Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.from(data) {
    return Address(
      street: data['street'],
      suite: data['suite'],
      city: data['city'],
      zipcode: data['zipcode'],
      geo: Geo.from(data['geo']),
    );
  }
}

class Geo {
  String lat, lng;

  Geo({required this.lat, required this.lng});

  factory Geo.from(data) {
    return Geo(lat: data['lat'], lng: data['lng']);
  }
}

class Company {
  String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.from(data) {
    return Company(
      name: data['name'],
      catchPhrase: data['catchPhrase'],
      bs: data['bs'],
    );
  }
}
