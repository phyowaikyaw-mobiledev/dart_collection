import 'dart:convert';

import 'package:http/http.dart' as http; // -> aliancing

const API_URL = "https://jsonplaceholder.typicode.com/posts";

// void main() async {
//   await http
//       .get(Uri.parse(API_URL))
//       .then((res) {
//         var rawData = res.body; // String => JSON Encoded String
//         var decodedData = jsonDecode(rawData);
//         // String => Decode => JSON Object
//         print(rawData.runtimeType);
//         print(decodedData.runtimeType);
//       })
//       .catchError((e) => print(e));
// }

void main() async {
  await http
      .get(Uri.parse(API_URL))
      .then((res) {
        var rawData = res.body; // String => jsonEncode String
        var decodedData = jsonDecode(
          rawData,
        ); // String => Decode => JSON Object
        print(rawData.runtimeType);
        print(decodedData.runtimeType);
      })
      .catchError((e) => print(e));
}

/*
  ────────────────────────────────────────────────────────────┐
│                    HTTP REQUEST FLOW                         │
└─────────────────────────────────────────────────────────────┘

     [Your Dart App]                    [JSON API Server]
           │                                    │
           │  1. http.get(API_URL)              │
           │ ──────────────────────────────>    │
           │                                    │
           │  2. JSON String ပြန်ပို့               |
           │ <──────────────────────────────    │
           │   '{"userId":1,"title":"..."}'     │ 
           │                                    │
           ▼
    
    res.body = String (JSON Encoded)
           │
           │ "ဒီ String က text ပဲ၊ object မဟုတ်ဘူး"
           │ ".title လို့ခေါ်လို့မရသေးဘူး"
           │
           ▼
           
    jsonDecode(rawData)  ◄── String ကို Dart Object ပြောင်း
           │
           ▼
           
    decodedData = Map/List (Dart Object)
           │
           │ "အခုမှ data တွေကို access လုပ်လို့ရပြီ"
           │
           ▼
           
    decodedData['title']  ✓
    decodedData['userId'] ✓


┌─────────────────────────────────────────────────────────────┐
│                 OPPOSITE DIRECTION (ပို့တဲ့အခါ)              │
└─────────────────────────────────────────────────────────────┘

    [Your Dart App]                    [JSON API Server]
           │                                    │
    Dart Object                                │
    {'name': 'Ko Ko'}                          │
           │                                    │
           ▼                                    │
    jsonEncode(data)  ◄── Object ကို String ပြောင်း
           │                                    │
           ▼                                    │
    '{"name":"Ko Ko"}'                         │
           │                                    │
           │  http.post(url, body: jsonString) │
           │ ──────────────────────────────>   │
                                                │


    import 'dart:convert';
    import 'package:http/http.dart' as http;

    void main() async {
      // 1. API ကနေ data ယူ
      var response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1')
      );
      
      // 2. res.body က String ပါ
      print('Raw Data Type: ${response.body.runtimeType}'); // String
      print('Raw Data: ${response.body}');
      
      // 3. String ကို Dart Object ပြောင်း
      var decodedData = jsonDecode(response.body);
      print('Decoded Type: ${decodedData.runtimeType}'); // _Map<String, dynamic>
      
      // 4. အခုမှ data တွေကို သုံးလို့ရပြီ
      print('Title: ${decodedData['title']}');
      print('User ID: ${decodedData['userId']}');
      
      
      // 5. Opposite: Dart Object ကို JSON String ပြောင်း
      var myPost = {
        'title': 'မင်္ဂလာပါ',
        'body': 'ဒါက test post ပါ',
        'userId': 1
      };
      
      var jsonString = jsonEncode(myPost);
      print('Encoded: $jsonString'); // String ဖြစ်သွားပြီ
      print('Type: ${jsonString.runtimeType}'); // String
    }

    To understand shortly
    
    Duty              Input             Function              Output              Usage

    Decoded           String            jsonDecode()          Map/List            Get data from API
    Encoded           Map/List          jsonEncode()          String              Send data to API


    HTTP response.body = always String 
    String ကို object အဖြစ်သုံးချင်ရင် jsonDecode() လုပ်ရမယ်
    Object ကို String အဖြစ်ပြောင်းချင်ရင် jsonEncode() လုပ်ရမယ်

*/
