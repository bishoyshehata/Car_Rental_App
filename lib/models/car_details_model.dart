class CarDetailsModel {
  CarDetailsModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final List<Data> data;

  CarDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.ownerId,
    required this.name,
    required this.model,
    required this.grade,
    required this.color,
    required this.plateNo,
    required this.kilometer,
    required this.chassisNo,
    required this.motorNo,
    required this.licenseEnd,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.contracts,
  });
  late final int id;
  late final int ownerId;
  late final String name;
  late final String model;
  late final String grade;
  late final String color;
  late final String plateNo;
  late final String kilometer;
  late final String chassisNo;
  late final String motorNo;
  late final String licenseEnd;
  late final dynamic deletedAt;
  late final String createdAt;
  late final String updatedAt;
  late final List<Contracts> contracts;

  Data.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    ownerId = json['owner_id'];
    name = json['name'];
    model = json['model'];
    grade = json['grade'];
    color = json['color'];
    plateNo = json['plate_no'];
    kilometer = json['kilometer'];
    chassisNo = json['chassis_no'];
    motorNo = json['motor_no'];
    licenseEnd = json['license_end'];
    deletedAt = "";
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    contracts =
        List.from(json['contracts']).map((e) => Contracts.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['owner_id'] = ownerId;
    _data['name'] = name;
    _data['model'] = model;
    _data['grade'] = grade;
    _data['color'] = color;
    _data['plate_no'] = plateNo;
    _data['kilometer'] = kilometer;
    _data['chassis_no'] = chassisNo;
    _data['motor_no'] = motorNo;
    _data['license_end'] = licenseEnd;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['contracts'] = contracts.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Contracts {
  Contracts({
    required this.id,
    required this.carId,
    required this.customerId,
    required this.status,
    this.fromDate,
    this.toDate,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.customer,
    required this.logs,
    required this.assign,
  });
  late final int id;
  late final int carId;
  late final int customerId;
  late final String status;
  late final String? fromDate;
  late final String? toDate;
  late final dynamic deletedAt;
  late final String createdAt;
  late final String updatedAt;
  late final Customer customer;
  late final List<Logs> logs;
  late final List<Assign> assign;

  Contracts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    carId = json['car_id'];
    customerId = json['customer_id'];
    status = json['status'];
    fromDate = "";
    toDate = "";
    deletedAt = "";
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    customer = Customer.fromJson(json['customer']);
    logs = List.from(json['logs']).map((e) => Logs.fromJson(e)).toList();
    assign = List.from(json['assign']).map((e) => Assign.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['car_id'] = carId;
    _data['customer_id'] = customerId;
    _data['status'] = status;
    _data['fromDate'] = fromDate;
    _data['toDate'] = toDate;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['customer'] = customer.toJson();
    _data['logs'] = logs.map((e) => e.toJson()).toList();
    _data['assign'] = assign.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Customer {
  Customer({
    required this.id,
    required this.name,
    required this.mobile,
    this.password,
    this.accessToken,
    required this.address,
    required this.nid,
    this.deletedAt,
  });
  late final int id;
  late final String name;
  late final String mobile;
  late final dynamic password;
  late final dynamic accessToken;
  late final String address;
  late final String nid;
  late final String? deletedAt;

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    password = "";
    accessToken = "";
    address = json['address'];
    nid = json['nid'];
    deletedAt = "";
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
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}

class Logs {
  Logs({
    required this.id,
    required this.operationContractId,
    required this.userId,
    this.lat,
    this.lang,
    required this.kilometerIn,
    required this.kilometerOut,
    this.area,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });
  late final int id;
  late final int operationContractId;
  late final int userId;
  late final double? lat;
  late final double? lang;
  late final String kilometerIn;
  late final String kilometerOut;
  late final String? area;
  late final dynamic deletedAt;
  late final String createdAt;
  late final String updatedAt;
  late final User user;

  Logs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    operationContractId = json['operation_contract_id'];
    userId = json['user_id'];
    lat = 0.0;
    lang = 0.0;
    kilometerIn = json['kilometer_in'];
    kilometerOut = json['kilometer_out'];
    area = "";
    deletedAt = "";
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['operation_contract_id'] = operationContractId;
    _data['user_id'] = userId;
    _data['lat'] = lat;
    _data['lang'] = lang;
    _data['kilometer_in'] = kilometerIn;
    _data['kilometer_out'] = kilometerOut;
    _data['area'] = area;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['user'] = user.toJson();
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    this.emailVerifiedAt,
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
  late final dynamic emailVerifiedAt;
  late final String accessToken;
  late final String createdAt;
  late final String updatedAt;
  late final List<dynamic> myPermissions;
  late final String myRole;
  late final List<Permissions> permissions;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    emailVerifiedAt = "";
    accessToken = json['access_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];

    myPermissions = List.castFrom<dynamic, dynamic>(json['my_permissions']);
    myRole = json['my_role'];
    permissions = List.from(json['permissions'])
        .map((e) => Permissions.fromJson(e))
        .toList();
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
    _data['permissions'] = permissions.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Permissions {
  Permissions({
    required this.id,
    required this.name,
    required this.displayName,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });
  late final int id;
  late final String name;
  late final String displayName;
  late final String description;
  late final String createdAt;
  late final String updatedAt;
  late final Pivot pivot;

  Permissions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    displayName = json['display_name'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = Pivot.fromJson(json['pivot']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['display_name'] = displayName;
    _data['description'] = description;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['pivot'] = pivot.toJson();
    return _data;
  }
}

class Pivot {
  Pivot({
    required this.userId,
    required this.permissionId,
    required this.userType,
  });
  late final int userId;
  late final int permissionId;
  late final String userType;

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    permissionId = json['permission_id'];
    userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['permission_id'] = permissionId;
    _data['user_type'] = userType;
    return _data;
  }
}

class Assign {
  Assign({
    required this.id,
    required this.operationContractId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });
  late final int id;
  late final int operationContractId;
  late final int userId;
  late final String createdAt;
  late final String updatedAt;
  late final User user;

  Assign.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    operationContractId = json['operation_contract_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['operation_contract_id'] = operationContractId;
    _data['user_id'] = userId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['user'] = user.toJson();
    return _data;
  }
}
