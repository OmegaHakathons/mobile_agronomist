// To parse this JSON data, do
//
//     final serviceEntity = serviceEntityFromJson(jsonString);

import 'dart:convert';

ServiceEntity serviceEntityFromJson(String str) => ServiceEntity.fromJson(json.decode(str));

String serviceEntityToJson(ServiceEntity data) => json.encode(data.toJson());

class ServiceEntity {
    bool status;
    List<ServiceEntityDatum> data;

    ServiceEntity({
        required this.status,
        required this.data,
    });

    factory ServiceEntity.fromJson(Map<String, dynamic> json) => ServiceEntity(
        status: json["status"],
        data: List<ServiceEntityDatum>.from(json["data"].map((x) => ServiceEntityDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ServiceEntityDatum {
    int? id;
    int? roleId;
    int? companyId;
    String? name;
    String? code;
    int? phone;
    String? email;
    dynamic emailVerifiedAt;
    dynamic photo;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic identify;
    dynamic employeeCard;
    DateTime? birthDate;
    int? currentPage;
    List<DatumDatum>? data;
    String? firstPageUrl;
    int? from;
    int? lastPage;
    String? lastPageUrl;
    List<Link>? links;
    dynamic nextPageUrl;
    String? path;
    int? perPage;
    dynamic prevPageUrl;
    int? to;
    int? total;

    ServiceEntityDatum({
        this.id,
        this.roleId,
        this.companyId,
        this.name,
        this.code,
        this.phone,
        this.email,
        this.emailVerifiedAt,
        this.photo,
        this.createdAt,
        this.updatedAt,
        this.identify,
        this.employeeCard,
        this.birthDate,
        this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total,
    });

    factory ServiceEntityDatum.fromJson(Map<String, dynamic> json) => ServiceEntityDatum(
        id: json["id"],
        roleId: json["role_id"],
        companyId: json["company_id"],
        name: json["name"],
        code: json["code"],
        phone: json["phone"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        photo: json["photo"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        identify: json["identify"],
        employeeCard: json["employee_card"],
        birthDate: json["birth_date"] == null ? null : DateTime.parse(json["birth_date"]),
        currentPage: json["current_page"],
        data: json["data"] == null ? [] : List<DatumDatum>.from(json["data"]!.map((x) => DatumDatum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "role_id": roleId,
        "company_id": companyId,
        "name": name,
        "code": code,
        "phone": phone,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "photo": photo,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "identify": identify,
        "employee_card": employeeCard,
        "birth_date": birthDate?.toIso8601String(),
        "current_page": currentPage,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class DatumDatum {
    int id;
    bool isActive;
    int companyId;
    String name;
    int price;
    dynamic photo;
    DateTime createdAt;
    DateTime updatedAt;
    String description;
    Conditions conditions;
    int createdUserId;

    DatumDatum({
        required this.id,
        required this.isActive,
        required this.companyId,
        required this.name,
        required this.price,
        required this.photo,
        required this.createdAt,
        required this.updatedAt,
        required this.description,
        required this.conditions,
        required this.createdUserId,
    });

    factory DatumDatum.fromJson(Map<String, dynamic> json) => DatumDatum(
        id: json["id"],
        isActive: json["is_active"],
        companyId: json["company_id"],
        name: json["name"],
        price: json["price"],
        photo: json["photo"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        description: json["description"],
        conditions: Conditions.fromJson(json["conditions"]),
        createdUserId: json["created_user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "is_active": isActive,
        "company_id": companyId,
        "name": name,
        "price": price,
        "photo": photo,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "description": description,
        "conditions": conditions.toJson(),
        "created_user_id": createdUserId,
    };
}

class Conditions {
    Age age;

    Conditions({
        required this.age,
    });

    factory Conditions.fromJson(Map<String, dynamic> json) => Conditions(
        age: Age.fromJson(json["age"]),
    );

    Map<String, dynamic> toJson() => {
        "age": age.toJson(),
    };
}

class Age {
    int to;
    int from;

    Age({
        required this.to,
        required this.from,
    });

    factory Age.fromJson(Map<String, dynamic> json) => Age(
        to: json["to"],
        from: json["from"],
    );

    Map<String, dynamic> toJson() => {
        "to": to,
        "from": from,
    };
}

class Link {
    String? url;
    String label;
    bool active;

    Link({
        required this.url,
        required this.label,
        required this.active,
    });

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
    };
}
