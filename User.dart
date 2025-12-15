class User {
  String? gender, email, phone, cell, nat;
  Name? name;
  Location? location;
  Login? login;
  Dob? dob;
  Registered? registered;
  Id? id;
  Picture? picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.location,
    required this.login,
    required this.dob,
    required this.registered,
    required this.id,
    required this.picture,
  });

  factory User.from(dynamic data) {
    return User(
      gender: data['gender'],
      email: data['email'],
      phone: data['phone'],
      cell: data['cell'],
      nat: data['nat'],
      name: Name.from(data['name']),
      location: Location.from(data['location']),
      login: Login.from(data['login']),
      dob: Dob.from(data['dob']),
      registered: Registered.from(data['registered']),
      id: Id.from(data['id']),
      picture: Picture.from(data['picture']),
    );
  }
}

class Name {
  String? title, first, last;

  Name({required this.title, required this.first, required this.last});

  factory Name.from(dynamic data) {
    return Name(title: data['title'], first: data['first'], last: data['last']);
  }
}

class Location {
  Street? street;
  String? city, state, country;
  dynamic postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory Location.from(dynamic data) {
    return Location(
      street: Street.from(data['street']),
      city: data['city'],
      state: data['state'],
      country: data['country'],
      postcode: data['postcode'],
      coordinates: Coordinates.from(data['coordinates']),
      timezone: Timezone.from(data['timezone']),
    );
  }
}

class Street {
  int? number;
  String? name;

  Street({required this.number, required this.name});

  factory Street.from(dynamic data) {
    return Street(number: data['number'], name: data['name']);
  }
}

class Coordinates {
  String? latitude, longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.from(dynamic data) {
    return Coordinates(
      latitude: data['latitude'],
      longitude: data['longitude'],
    );
  }
}

class Timezone {
  String? offset, description;

  Timezone({required this.offset, required this.description});

  factory Timezone.from(dynamic data) {
    return Timezone(offset: data['offset'], description: data['description']);
  }
}

class Login {
  String? uuid, username, password, salt, md5, sha1, sha256;

  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
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

class Dob {
  String? date;
  int? age;

  Dob({required this.date, required this.age});

  factory Dob.from(dynamic data) {
    return Dob(date: data['date'], age: data['age']);
  }
}

class Registered {
  String? date;
  int? age;

  Registered({required this.date, required this.age});

  factory Registered.from(dynamic data) {
    return Registered(date: data['date'], age: data['age']);
  }
}

class Id {
  String? name, value;

  Id({required this.name, required this.value});

  factory Id.from(dynamic data) {
    return Id(name: data['name'], value: data['value']);
  }
}

class Picture {
  String? large, medium, thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.from(dynamic data) {
    return Picture(
      large: data['large'],
      medium: data['medium'],
      thumbnail: data['thumbnail'],
    );
  }
}

/*
   
*/
