// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

ProductM userModelFromJson(String str) => ProductM.fromJson(json.decode(str));

String userModelToJson(ProductM data) => json.encode(data.toJson());

class ProductM {
    ProductM({
        this.productId,
        this.name,
        this.code,
        this.code2,
        this.code3,
        this.supplierCode,
        this.groupId,
        this.price,
        this.active,
        this.displayedInWebshop,
        this.seriesId,
        this.supplierId,
        this.unitId,
        this.vatrateId,
        this.hasQuickSelectButton,
        this.isGiftCard,
        this.nonDiscountable,
        this.nonRefundable,
        this.manufacturerName,
        this.priorityGroupId,
        this.countryOfOriginId,
        this.brandId,
        this.length,
        this.width,
        this.height,
        this.netWeight,
        this.grossWeight,
        this.volume,
        this.locationInWarehouseId,
        this.locationInWarehouseName,
        this.locationInWarehouseText,
        this.description,
        this.longdesc,
        this.descriptionEng,
        this.longdescEng,
        this.descriptionRus,
        this.longdescRus,
        this.descriptionFin,
        this.longdescFin,
        this.containerId,
        this.cost,
        this.added,
        this.addedByUsername,
        this.lastModified,
        this.lastModifiedByUsername,
        this.vatrate,
        this.priceWithVat,
        this.unitName,
        this.brandName,
        this.seriesName,
        this.groupName,
        this.supplierName,
        this.categoryId,
        this.categoryName,
        this.status,
        this.taxFree,
        this.isRegularGiftCard,
        this.nonStockProduct,
        this.cashierMustEnterPrice,
        this.rewardPointsNotAllowed,
        this.reorderMultiple,
        this.packagingType,
        this.backbarCharges,
        this.lengthInMinutes,
        this.setupTimeInMinutes,
        this.cleanupTimeInMinutes,
        this.walkInService,
        this.longAttributes,
        this.type,
        this.registryNumber,
        this.alcoholPercentage,
        this.batches,
        this.exciseDeclaration,
        this.exciseFermentedProductUnder6,
        this.exciseWineOver6,
        this.exciseFermentedProductOver6,
        this.exciseIntermediateProduct,
        this.exciseOtherAlcohol,
        this.excisePackaging,
    });

    int productId;
    String name;
    String code;
    String code2;
    dynamic code3;
    dynamic supplierCode;
    int groupId;
    int price;
    int active;
    int displayedInWebshop;
    int seriesId;
    int supplierId;
    int unitId;
    int vatrateId;
    int hasQuickSelectButton;
    int isGiftCard;
    int nonDiscountable;
    int nonRefundable;
    String manufacturerName;
    String priorityGroupId;
    String countryOfOriginId;
    int brandId;
    String length;
    String width;
    String height;
    String netWeight;
    String grossWeight;
    String volume;
    String locationInWarehouseId;
    String locationInWarehouseName;
    String locationInWarehouseText;
    String description;
    String longdesc;
    String descriptionEng;
    String longdescEng;
    String descriptionRus;
    String longdescRus;
    String descriptionFin;
    String longdescFin;
    int containerId;
    int cost;
    int added;
    String addedByUsername;
    int lastModified;
    String lastModifiedByUsername;
    int vatrate;
    int priceWithVat;
    String unitName;
    dynamic brandName;
    dynamic seriesName;
    String groupName;
    dynamic supplierName;
    int categoryId;
    dynamic categoryName;
    String status;
    int taxFree;
    int isRegularGiftCard;
    int nonStockProduct;
    int cashierMustEnterPrice;
    int rewardPointsNotAllowed;
    int reorderMultiple;
    String packagingType;
    int backbarCharges;
    int lengthInMinutes;
    int setupTimeInMinutes;
    int cleanupTimeInMinutes;
    int walkInService;
    List<dynamic> longAttributes;
    String type;
    String registryNumber;
    String alcoholPercentage;
    String batches;
    String exciseDeclaration;
    String exciseFermentedProductUnder6;
    String exciseWineOver6;
    String exciseFermentedProductOver6;
    String exciseIntermediateProduct;
    String exciseOtherAlcohol;
    String excisePackaging;

    factory ProductM.fromJson(Map<String, dynamic> json) => ProductM(
        productId: json["productID"],
        name: json["name"],
        code: json["code"],
        code2: json["code2"],
        code3: json["code3"],
        supplierCode: json["supplierCode"],
        groupId: json["groupID"],
        price: json["price"],
        active: json["active"],
        displayedInWebshop: json["displayedInWebshop"],
        seriesId: json["seriesID"],
        supplierId: json["supplierID"],
        unitId: json["unitID"],
        vatrateId: json["vatrateID"],
        hasQuickSelectButton: json["hasQuickSelectButton"],
        isGiftCard: json["isGiftCard"],
        nonDiscountable: json["nonDiscountable"],
        nonRefundable: json["nonRefundable"],
        manufacturerName: json["manufacturerName"],
        priorityGroupId: json["priorityGroupID"],
        countryOfOriginId: json["countryOfOriginID"],
        brandId: json["brandID"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        netWeight: json["netWeight"],
        grossWeight: json["grossWeight"],
        volume: json["volume"],
        locationInWarehouseId: json["locationInWarehouseID"],
        locationInWarehouseName: json["locationInWarehouseName"],
        locationInWarehouseText: json["locationInWarehouseText"],
        description: json["description"],
        longdesc: json["longdesc"],
        descriptionEng: json["descriptionENG"],
        longdescEng: json["longdescENG"],
        descriptionRus: json["descriptionRUS"],
        longdescRus: json["longdescRUS"],
        descriptionFin: json["descriptionFIN"],
        longdescFin: json["longdescFIN"],
        containerId: json["containerID"],
        cost: json["cost"],
        added: json["added"],
        addedByUsername: json["addedByUsername"],
        lastModified: json["lastModified"],
        lastModifiedByUsername: json["lastModifiedByUsername"],
        vatrate: json["vatrate"],
        priceWithVat: json["priceWithVat"],
        unitName: json["unitName"],
        brandName: json["brandName"],
        seriesName: json["seriesName"],
        groupName: json["groupName"],
        supplierName: json["supplierName"],
        categoryId: json["categoryID"],
        categoryName: json["categoryName"],
        status: json["status"],
        taxFree: json["taxFree"],
        isRegularGiftCard: json["isRegularGiftCard"],
        nonStockProduct: json["nonStockProduct"],
        cashierMustEnterPrice: json["cashierMustEnterPrice"],
        rewardPointsNotAllowed: json["rewardPointsNotAllowed"],
        reorderMultiple: json["reorderMultiple"],
        packagingType: json["packagingType"],
        backbarCharges: json["backbarCharges"],
        lengthInMinutes: json["lengthInMinutes"],
        setupTimeInMinutes: json["setupTimeInMinutes"],
        cleanupTimeInMinutes: json["cleanupTimeInMinutes"],
        walkInService: json["walkInService"],
        longAttributes: List<dynamic>.from(json["longAttributes"].map((x) => x)),
        type: json["type"],
        registryNumber: json["registryNumber"],
        alcoholPercentage: json["alcoholPercentage"],
        batches: json["batches"],
        exciseDeclaration: json["exciseDeclaration"],
        exciseFermentedProductUnder6: json["exciseFermentedProductUnder6"],
        exciseWineOver6: json["exciseWineOver6"],
        exciseFermentedProductOver6: json["exciseFermentedProductOver6"],
        exciseIntermediateProduct: json["exciseIntermediateProduct"],
        exciseOtherAlcohol: json["exciseOtherAlcohol"],
        excisePackaging: json["excisePackaging"],
    );

    Map<String, dynamic> toJson() => {
        "productID": productId,
        "name": name,
        "code": code,
        "code2": code2,
        "code3": code3,
        "supplierCode": supplierCode,
        "groupID": groupId,
        "price": price,
        "active": active,
        "displayedInWebshop": displayedInWebshop,
        "seriesID": seriesId,
        "supplierID": supplierId,
        "unitID": unitId,
        "vatrateID": vatrateId,
        "hasQuickSelectButton": hasQuickSelectButton,
        "isGiftCard": isGiftCard,
        "nonDiscountable": nonDiscountable,
        "nonRefundable": nonRefundable,
        "manufacturerName": manufacturerName,
        "priorityGroupID": priorityGroupId,
        "countryOfOriginID": countryOfOriginId,
        "brandID": brandId,
        "length": length,
        "width": width,
        "height": height,
        "netWeight": netWeight,
        "grossWeight": grossWeight,
        "volume": volume,
        "locationInWarehouseID": locationInWarehouseId,
        "locationInWarehouseName": locationInWarehouseName,
        "locationInWarehouseText": locationInWarehouseText,
        "description": description,
        "longdesc": longdesc,
        "descriptionENG": descriptionEng,
        "longdescENG": longdescEng,
        "descriptionRUS": descriptionRus,
        "longdescRUS": longdescRus,
        "descriptionFIN": descriptionFin,
        "longdescFIN": longdescFin,
        "containerID": containerId,
        "cost": cost,
        "added": added,
        "addedByUsername": addedByUsername,
        "lastModified": lastModified,
        "lastModifiedByUsername": lastModifiedByUsername,
        "vatrate": vatrate,
        "priceWithVat": priceWithVat,
        "unitName": unitName,
        "brandName": brandName,
        "seriesName": seriesName,
        "groupName": groupName,
        "supplierName": supplierName,
        "categoryID": categoryId,
        "categoryName": categoryName,
        "status": status,
        "taxFree": taxFree,
        "isRegularGiftCard": isRegularGiftCard,
        "nonStockProduct": nonStockProduct,
        "cashierMustEnterPrice": cashierMustEnterPrice,
        "rewardPointsNotAllowed": rewardPointsNotAllowed,
        "reorderMultiple": reorderMultiple,
        "packagingType": packagingType,
        "backbarCharges": backbarCharges,
        "lengthInMinutes": lengthInMinutes,
        "setupTimeInMinutes": setupTimeInMinutes,
        "cleanupTimeInMinutes": cleanupTimeInMinutes,
        "walkInService": walkInService,
        "longAttributes": List<dynamic>.from(longAttributes.map((x) => x)),
        "type": type,
        "registryNumber": registryNumber,
        "alcoholPercentage": alcoholPercentage,
        "batches": batches,
        "exciseDeclaration": exciseDeclaration,
        "exciseFermentedProductUnder6": exciseFermentedProductUnder6,
        "exciseWineOver6": exciseWineOver6,
        "exciseFermentedProductOver6": exciseFermentedProductOver6,
        "exciseIntermediateProduct": exciseIntermediateProduct,
        "exciseOtherAlcohol": exciseOtherAlcohol,
        "excisePackaging": excisePackaging,
    };
}
