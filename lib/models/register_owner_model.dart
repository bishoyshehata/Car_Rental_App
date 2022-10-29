class RegisterOwnerModel {
  RegisterOwnerModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final Data data;

  RegisterOwnerModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
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
    required this.mobile,
    required this.password,
    required this.accessToken,
    required this.address,
    this.nid,
    required this.nationalFrontImage,
    required this.nationalBackImage,
    required this.metaImage,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String mobile;
  late final String password;
  late final String accessToken;
  late final String address;
  late final Null nid;
  late final String nationalFrontImage;
  late final String nationalBackImage;
  late final String metaImage;
  late final Null deletedAt;
  late final String createdAt;
  late final String updatedAt;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    password = json['password'];
    accessToken = json['access_token'];
    address = json['address'];
    nid = null;
    nationalFrontImage = json['national_front_image'];
    nationalBackImage = json['national_back_image'];
    metaImage = json['meta_image'];
    deletedAt = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['mobile'] = mobile;
    _data['password'] = password;
    _data['access_token'] = accessToken;
    _data['address'] = address;
    _data['nid'] = nid;
    _data['national_front_image'] = nationalFrontImage;
    _data['national_back_image'] = nationalBackImage;
    _data['meta_image'] = metaImage;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}