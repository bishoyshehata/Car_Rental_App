class AdminLoginModel {
  AdminLoginModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final Data data;

  AdminLoginModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    if(json['data'] != null){
      data =Data.fromJson(json['data']);
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.emailVerifiedAt,
    required this.accessToken,
    required this.createdAt,
    required this.updatedAt,
    required this.myPermissions,
    required this.myRole,
    required this.permissions,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String image;
  late final String emailVerifiedAt;
  late final String accessToken;
  late final String createdAt;
  late final String updatedAt;
  late final List<dynamic> myPermissions;
  late final String myRole;
  late final List<dynamic> permissions;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    emailVerifiedAt = "null";
    accessToken = json['access_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    myPermissions = List.castFrom<dynamic, dynamic>(json['my_permissions']);
    myRole = json['my_role'];
    permissions = List.castFrom<dynamic, dynamic>(json['permissions']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['image'] = image;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['access_token'] = accessToken;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['my_permissions'] = myPermissions;
    _data['my_role'] = myRole;
    _data['permissions'] = permissions;
    return _data;
  }
}