import 'dart:convert';

import 'package:http/http.dart' as http; // aliancing

const USER_API = "https://randomuser.me/api/?results=50";

void main() async {
  await http
      .get(Uri.parse(USER_API))
      .then((response) {
        var rawData = response.body;
        var decodedData = jsonDecode(rawData)['results'];
        List<dynamic> lisy = decodedData as List;
        List<User> users = lisy.map((u) => User.from(u)).toList();
        users.forEach((user) => print(user.picture?.thumbnail));
      })
      .catchError((e) => print(e));
}

class User {
  String? gender, email, phone, cell, nat;
  Name? name;
  Location? location;
  Login? login;
  DOB? dob;
  Registered? registered;
  Id? id;
  Picture? picture;

  User({
    this.gender,
    this.email,
    this.phone,
    this.cell,
    this.nat,
    this.name,
    this.location,
    this.login,
    this.dob,
    this.registered,
    this.id,
    this.picture,
  });

  factory User.from(dynamic data) {
    return User(
      gender: data['gender'],
      email: data['email'],
      phone: data['phone'],
      cell: data['cell'],
      nat: data['nat'],
      name: data['name'] != null ? Name.from(data['name']) : null,
      location: data['location'] != null
          ? Location.from(data['location'])
          : null,
      login: data['login'] != null ? Login.from(data['login']) : null,
      dob: data['dob'] != null ? DOB.from(data['dob']) : null,
      registered: data['registered'] != null
          ? Registered.from(data['registered'])
          : null,
      id: data['id'] != null ? Id.from(data['id']) : null,
      picture: data['picture'] != null ? Picture.from(data['picture']) : null,
    );
  }
}

class Name {
  String? title, first, last;

  Name({this.title, this.first, this.last});

  factory Name.from(dynamic data) {
    return Name(title: data['title'], first: data['first'], last: data['last']);
  }
}

class Location {
  Street? street;
  String? city, state, country;
  Coordinates? coordinates;
  Timezone? timezone;
  dynamic postcode;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory Location.from(dynamic data) {
    return Location(
      street: data['street'] != null ? Street.from(data['street']) : null,
      city: data['city'],
      state: data['state'],
      country: data['country'],
      postcode: data['postcode'],
      coordinates: data['coordinates'] != null
          ? Coordinates.from(data['coordinates'])
          : null,
      timezone: data['timezone'] != null
          ? Timezone.from(data['timezone'])
          : null,
    );
  }
}

class Street {
  String? name;
  int? number;

  Street({this.number, this.name});

  factory Street.from(dynamic data) {
    return Street(number: data['number'], name: data['name']);
  }
}

class Coordinates {
  String? latitude, longitude;

  Coordinates({this.latitude, this.longitude});

  factory Coordinates.from(dynamic data) {
    return Coordinates(
      latitude: data['latitude'],
      longitude: data['longitude'],
    );
  }
}

class Timezone {
  String? offset, description;

  Timezone({this.offset, this.description});

  factory Timezone.from(dynamic data) {
    return Timezone(offset: data['offset'], description: data['description']);
  }
}

class Login {
  String? uuid, username, password, salt, md5, sha1, sha256;

  Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  factory Login.from(dynamic data) {
    return Login(
      uuid: data['uuid'],
      username: data['username'],
      password: data['password'],
      salt: data['salt'],
      md5: data['md5'],
      sha1: data['sha1'],
      sha256: data['sha256'],
    );
  }
}

class DOB {
  String? date;
  int? age;

  DOB({this.date, this.age});

  factory DOB.from(dynamic data) {
    return DOB(date: data['date'], age: data['age']);
  }
}

class Registered {
  String? date;
  int? age;

  Registered({this.date, this.age});

  factory Registered.from(dynamic data) {
    return Registered(date: data['date'], age: data['age']);
  }
}

class Id {
  String? name, value;

  Id({this.name, this.value});

  factory Id.from(dynamic data) {
    return Id(name: data['name'], value: data['value']);
  }
}

class Picture {
  String? large, medium, thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  factory Picture.from(dynamic data) {
    return Picture(
      large: data['large'],
      medium: data['medium'],
      thumbnail: data['thumbnail'],
    );
  }
}
