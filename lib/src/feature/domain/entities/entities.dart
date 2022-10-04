class Response {
  const Response({required this.message});
  final String message;
}

class ResponseModel extends Response {
  const ResponseModel({
    required String message,
    required this.statusCode,
  }) : super(message: message);
  final int statusCode;

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      message: json['message'],
      statusCode: json['statusCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'statusCode': statusCode,
    };
  }
}
