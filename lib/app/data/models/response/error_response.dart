class ErrorResponse {
  // late bool success;
  late int code;
  late String message;
  late dynamic errors;

  ErrorResponse({required this.errors});

  ErrorResponse.fromJson(Map<String, dynamic>? json) {
    message = json == null ? "" : json['message'];
    code = json == null ? "" : json['statusCode'];
    // success = json == null ? "" : json['success'];
    errors = json == null ? "" : json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = this.errors;
    data['statusCode'] = this.code;
    // data['success'] = this.success;
    data['errors'] = this.errors;
    return data;
  }
}
