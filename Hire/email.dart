import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future senEmail(
    {required String email, required String name, required String msg}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(url,
  headers: {'Content-Type': 'application/json'},
   body: json.encode( {
    'service_id': 'service_p5eba19',
    'template_id': 'template_1n82vpl',
    'user_id': 'user_QRzrar2nLlmNOVJceY2RU',
    'template_params':{
      'email': email,
      'message': msg,
      'sender': name,
    }
  }));
}
