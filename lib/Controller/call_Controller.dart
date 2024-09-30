import 'dart:convert'; // For json decoding
import 'dart:developer';

import 'package:get/get.dart';
import 'package:whatsapp_clone/models/call_model.dart';

import '../jsonData/call_data.dart';

class CallController extends GetxController {
  CallModel callModel = CallModel();

  loadCalldata() {
    // Parsing the callData string into JSON
    Map<String, dynamic> jsonData = jsonDecode(callData);

    // Loading the data into the model
    callModel = CallModel.fromJson(jsonData.toString());

    // Logging the data
    log(callModel.data.toString());

    return callModel.data;
  }
}
