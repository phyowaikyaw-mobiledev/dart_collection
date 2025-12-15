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
    required this.picture
  });
}

class Name {
  String title, first, last;

  Name({
    required this.title,
    required this.first,
    required this.last
  });
}

class Location {
  Street street;
  String city, state, country, postcode;
  Coordinates coordinated;
  Timezone timezone;
  
  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinated,
    required this.timezone
  });
}

class Street {
  String number, name;

  Street({
    required this.number,
    required this.name
  });
}

class Coordinates {
  String latitude, longitude;

  Coordinates({
    required this.latitude,
    required this.longitude
  });
}

class Timezone {
  String offset, description;

  Timezone ({
    required this.offset,
    required this.description
  })
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
    required this.sha256
  });
}

class DOB {
  String date, age;

  DOB({
    required this.date,
    required this.age
  });
  
}

class Registered {
  String date, age;

  Registered ({
    required this.date,
    required this.age
  });
}

class Id {
  String name, value;
  
  Id({
    required this.name, 
    required this.value
  });
}

class Picture {
  String large, medium, thumbnail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail
  });
}

/*
   
        
*/
