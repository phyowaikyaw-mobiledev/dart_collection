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

  factory Users.from(dynamic data) {
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

  factory Address.from(dynamic data) {
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

  factory Geo.from(dynamic data) {
    return Geo(lat: data['lat'], lng: data['lng']);
  }
}

class Company {
  String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.from(dynamic data) {
    return Company(
      name: data['name'],
      catchPhrase: data['catchPhrase'],
      bs: data['bs'],
    );
  }
}
