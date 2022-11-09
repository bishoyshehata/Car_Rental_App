class CarInfoModel {
  CarInfoModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final List<DataCarInfoModel> data;

  CarInfoModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = List.from(json['data']).isNotEmpty?List.from(json['data']).map((e) => DataCarInfoModel.fromJson(e)).toList() : [];


  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class DataCarInfoModel {
  DataCarInfoModel({
    required this.id,
    required this.carId,
    required this.type,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final int carId;
  late final String type;
  late final String image;
  late final String createdAt;
  late final String updatedAt;

  DataCarInfoModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    carId = json['car_id'];
    type = json['type'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['car_id'] = carId;
    _data['type'] = type;
    _data['image'] = image;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}