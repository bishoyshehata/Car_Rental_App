import 'dart:convert';
import 'package:car_rental/theme/strings.dart';
import 'package:http/http.dart'as http;
import '../../models/register_owner_model.dart';
class RegisterOwnerService {

 static Future<RegisterOwnerModel> RegistService(Map<String, String> bodyData)async{
    
   var response = await http.post(Uri.parse("$baseUrl/register"),headers: {
     "Accept":"application/json"} ,  body: bodyData);
   if(response.statusCode ==200){
     print(jsonDecode(response.body));
     return RegisterOwnerModel.fromJson(jsonDecode(response.body));
   }else{
     return throw Exception("Error 500");
   }


 }

}