void main() {
  // Original list with 4 names
  var names = ["Mg Mg", "Aung Aung", "Tun Tun", "Su Su"];
  var cars = ["Toyota", "LandCruiser", ...names];
  // var cars = ["Toyota", "LandCruiser", ...?names]; =>
  // ...? safety operator ->if you don't want to add null value, you should use ...?
  print(cars);

  // replaceRange(start, end, replacement)
  // - start: index 1 (where to start replacing)
  // - end: index 3 (where to stop, NOT included)
  // - replacement: ["One", "Two", "Three"] (new items to insert)

  // This REMOVES items from index 1 to 3 (not including 3)
  // and REPLACES them with ["One", "Two", "Three"]
  names.replaceRange(1, 3, ["One", "Two", "Three"]);

  // Print the modified list
  print(names);
}

/*
## **Step-by-Step Breakdown:**

### **Before:**
```
Index:  0         1            2          3
       ["Mg Mg", "Aung Aung", "Tun Tun", "Su Su"]
```

### **What `replaceRange(1, 3, [...])` Does:**
1. **Removes** items from index **1** to **3** (NOT including 3)
   - Removes: `"Aung Aung"` (index 1) and `"Tun Tun"` (index 2)
2. **Inserts** new items: `["One", "Two", "Three"]` at index 1

### **After:**
```
Index:  0         1      2      3        4
       ["Mg Mg", "One", "Two", "Three", "Su Su"]
```

---

## **Output:**
```
[Mg Mg, One, Two, Three, Su Su]
-------------------------------------------
  var names = ["Mg Mg", "Aung Aung"];
  
  // Using ... (normal spread)
  var cars = ["Toyota", "LandCruiser", ...names];
  print(cars);  // [Toyota, LandCruiser, Mg Mg, Aung Aung]
  
  // ---
  
  // If names is NULL - using ...? (safe spread)
  List<String>? nullNames = null;
  
  var safeCars = ["Toyota", "LandCruiser", ...?nullNames];
  print(safeCars);  // [Toyota, LandCruiser] - no error!
  
  // If you used ... instead of ...? with null - ERROR!
  // var errorCars = ["Toyota", ...nullNames];  // ❌ ERROR!
---------------------------------------------------------------------------
*/
