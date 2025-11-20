void main() {
  second("Andrew", 30);
  third("Mg Mg");
}

void second(name, age, [city]) // => city -> optional
{
  print('Name is $name & Age is $age & city is $city');
}

void third(name, {age, city}) // => usage of optional {} and non-optional().
{
  print("Name is $name & Age is $age & City is $city");
}
