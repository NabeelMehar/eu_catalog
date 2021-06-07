import 'dart:convert';

GroupM userModelFromJson(String str) => GroupM.fromJson(json.decode(str));

String userModelToJson(GroupM data) => json.encode(data.toJson());

class GroupM {
    GroupM({
        this.id,
        this.productGroupId,
        this.name,
        this.showInWebshop,
        this.nonDiscountable,
        this.positionNo,
        this.added,
        this.lastModified,
        this.parentGroupId,
        this.subGroups,
    });

    String id;
    int productGroupId;
    String name;
    String showInWebshop;
    int nonDiscountable;
    int positionNo;
    int added;
    int lastModified;
    String parentGroupId;
    List<GroupM> subGroups;

    factory GroupM.fromJson(Map<String, dynamic> json) => GroupM(
        id: json["id"],
        productGroupId: json["productGroupID"],
        name: json["name"],
        showInWebshop: json["showInWebshop"],
        nonDiscountable: json["nonDiscountable"],
        positionNo: json["positionNo"],
        added: json["added"],
        lastModified: json["lastModified"],
        parentGroupId: json["parentGroupID"],
        subGroups: List<GroupM>.from(json["subGroups"].map((x) => GroupM.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "productGroupID": productGroupId,
        "name": name,
        "showInWebshop": showInWebshop,
        "nonDiscountable": nonDiscountable,
        "positionNo": positionNo,
        "added": added,
        "lastModified": lastModified,
        "parentGroupID": parentGroupId,
        "subGroups": List<dynamic>.from(subGroups.map((x) => x.toJson())),
    };
}
