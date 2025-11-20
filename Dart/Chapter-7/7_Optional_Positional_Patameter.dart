void main() {
  // Calling function with named parameters
  // Order doesn't matter for named parameters
  callShe(name: "Mg Mg");
  callMe("Drew", 18);
}

// ============================================
// 1. POSITIONAL PARAMETERS (Must follow order)
// ============================================
void callMe([name, age]) {
  // [] means OPTIONAL POSITIONAL parameters
  // Can provide or skip
  // But if provided, MUST follow the order
  print("Name is $name and age is $age");
}

// Usage:
// callMe();                  // OK - can call without arguments
// callMe("John");            // OK - can provide only name
// callMe("John", 25);        // OK - can provide both
// callMe(25, "John");        // WRONG ORDER - age is first, incorrect

// ============================================
// 2. NAMED PARAMETERS (Called by name)
// ============================================
void callShe({name = "Jhon Doe", age = 10}) {
  // {} means NAMED PARAMETERS
  // Must call by parameter name
  // Order doesn't matter
  print("Name is $name and age is $age");
}

// Usage:
// callShe(name: "Ma Ma", age: 20);   // OK - in order
// callShe(age: 20, name: "Ma Ma");   // OK - out of order, still works!
// callShe(name: "Ma Ma");            // OK - age uses default value 10
// callShe();                         // OK - uses all default values

// ============================================
// 3. SIMPLE POSITIONAL (Required positional)
// ============================================
void simpleParamter(name, age) {
  // No [] means REQUIRED POSITIONAL
  // MUST provide arguments in order
}

// Usage:
// simpleParamter("John", 25);  // OK - both required
// simpleParamter("John");      // ERROR - age is missing
// simpleParamter();            // ERROR - both missing

// ============================================
// 4. WITH DATA TYPES (Typed parameters)
// ============================================
void simpleParameterWithDataType(String name, int age) {
  // Types are specified
  // Only accepts String and int
}

// Usage:
// simpleParameterWithDataType("John", 25);  // OK
// simpleParameterWithDataType(25, "John");  // ERROR - wrong types

// ============================================
// 5. NAMED PARAMETERS WITHOUT DEFAULT
// ============================================
void namedParamter({name, age}) {
  // {} used, but no default values
  // Optional named parameters
}

// Usage:
// namedParamter(name: "John", age: 25);  // OK
// namedParamter(age: 25, name: "John");  // OK - order doesn't matter
// namedParamter(name: "John");           // OK - age can be skipped

// ============================================
// 6. NAMED PARAMETERS WITH DEFAULT VALUES
// ============================================
void namedParameterWithDefaultValue({
  name = "Jhon Doe",
  age = 10,
  city = "Hsipaw",
}) {
  // Default values provided
  // If not provided, default values are used
}

// Usage:
// namedParameterWithDefaultValue();                           // OK - uses all defaults
// namedParameterWithDefaultValue(name: "Ma Ma");             // OK - overrides only name
// namedParameterWithDefaultValue(city: "Yangon", age: 25);   // OK - order doesn't matter
