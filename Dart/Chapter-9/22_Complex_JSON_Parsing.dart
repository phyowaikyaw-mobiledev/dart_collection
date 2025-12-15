class User {
  String gender, email, phone, cell, nat;
  Name name;
  Location location;
  Login login;
  DOB dob;
  Registered registered;
  Id id;
  Picture picture;

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
      dob: DOB.from(data['dob']),
      registered: Registered.from(data['registered']),
      id: Id.from(data['id']),
      picture: Picture.from(data['picture']),
    );
  }
}

class Name {
  String title, first, last;

  Name({required this.title, required this.first, required this.last});

  factory Name.from(dynamic data) {
    return Name(title: data['title'], first: data['first'], last: data['last']);
  }
}

class Location {
  Street street;
  String city, state, country, postcode;
  Coordinates coordinates;
  Timezone timezone;

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
  String number, name;

  Street({required this.number, required this.name});

  factory Street.from(dynamic data) {
    return Street(number: data['number'], name: data['name']);
  }
}

class Coordinates {
  String latitude, longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.from(dynamic data) {
    return Coordinates(
      latitude: data['latitude'],
      longitude: data['longitude'],
    );
  }
}

class Timezone {
  String offset, description;

  Timezone({required this.offset, required this.description});

  factory Timezone.from(dynamic data) {
    return Timezone(offset: data['offset'], description: data['description']);
  }
}

class Login {
  String uuid, username, password, salt, md5, sha1, sha256;

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

class DOB {
  String date, age;

  DOB({required this.date, required this.age});

  factory DOB.from(dynamic data) {
    return DOB(date: data['date'], age: data['age']);
  }
}

class Registered {
  String date, age;

  Registered({required this.date, required this.age});

  factory Registered.from(dynamic data) {
    return Registered(date: data['date'], age: data['age']);
  }
}

class Id {
  String name, value;

  Id({required this.name, required this.value});

  factory Id.from(dynamic data) {
    return Id(name: data['name'], value: data['value']);
  }
}

class Picture {
  String large, medium, thumbnail;

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
   {
            "gender": "female",
            "name": {
                "title": "Mrs",
                "first": "Ivonne",
                "last": "Luevano"
            },
            "location": {
                "street": {
                    "number": 3135,
                    "name": "Avenida Chihuahua"
                },
                "city": "La Laguna y Monte del Castillo",
                "state": "Oaxaca",
                "country": "Mexico",
                "postcode": 49271,
                "coordinates": {
                    "latitude": "27.7302",
                    "longitude": "176.7086"
                },
                "timezone": {
                    "offset": "+4:00",
                    "description": "Abu Dhabi, Muscat, Baku, Tbilisi"
                }
            },
            "email": "ivonne.luevano@example.com",
            "login": {
                "uuid": "88995169-60d7-4910-9f5e-1c482323abaa",
                "username": "tinybutterfly783",
                "password": "epsilon",
                "salt": "aZDMhch7",
                "md5": "e00023c029595c647a857de9766c467d",
                "sha1": "faf2391b97a1aaa5fc209e9ea925bbeaf44e7d25",
                "sha256": "71c8db4db101690cd90ac61f9abab55dfcdbcc55b87d38e942402b5ed011246a"
            },
            "dob": {
                "date": "1960-01-23T22:24:55.681Z",
                "age": 65
            },
            "registered": {
                "date": "2013-02-27T11:22:23.794Z",
                "age": 12
            },
            "phone": "(621) 267 6649",
            "cell": "(650) 110 4980",
            "id": {
                "name": "NSS",
                "value": "46 28 17 1859 6"
            },
            "picture": {
                "large": "https://randomuser.me/api/portraits/women/14.jpg",
                "medium": "https://randomuser.me/api/portraits/med/women/14.jpg",
                "thumbnail": "https://randomuser.me/api/portraits/thumb/women/14.jpg"
            },
            "nat": "MX"
        },
        
*/
