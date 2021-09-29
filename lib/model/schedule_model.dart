class Schedule {
  String? status;
  Response? response;
  String? etag;
  String? modified;
  String? datetime;
  String? apiVersion;

  Schedule({status, response, etag, modified, datetime, apiVersion});

  Schedule.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    response =
        json['response'] != null ? Response.fromJson(json['response']) : null;
    etag = json['etag'];
    modified = json['modified'];
    datetime = json['datetime'];
    apiVersion = json['api_version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (response != null) {
      data['response'] = response!.toJson();
    }
    data['etag'] = etag;
    data['modified'] = modified;
    data['datetime'] = datetime;
    data['api_version'] = apiVersion;
    return data;
  }
}

class Response {
  List<Items>? items;
  int? totalItems;
  int? totalPages;

  Response({items, totalItems, totalPages});

  Response.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = List<Items>.empty(growable: true);
      json['items'].forEach((v) => items!.add(Items.fromJson(v)));
      //json['items'].map((list) => Items.fromJson(list));
    }
    totalItems = json['total_items'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['total_items'] = totalItems;
    data['total_pages'] = totalPages;
    return data;
  }
}

class Items {
  String? sid;
  String? name;
  String? competitionsUrl;

  Items({sid, name, competitionsUrl});

  Items.fromJson(Map<String, dynamic> json) {
    sid = json['sid'];
    name = json['name'];
    competitionsUrl = json['competitions_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sid'] = sid;
    data['name'] = name;
    data['competitions_url'] = competitionsUrl;
    return data;
  }
}
