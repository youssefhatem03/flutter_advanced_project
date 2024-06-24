
import 'package:flutter_advanced_project/app/extentions.dart';
import 'package:flutter_advanced_project/data/responses/responses.dart';
import 'package:flutter_advanced_project/domain/model.dart';

const String EMPTY = "";
const int ZERO = 0;

extension CustomerResponseMapper on CustomerResponse{
  Customer toDomain(){
    return Customer(id?.orEmpty() ?? EMPTY, name?.orEmpty() ?? EMPTY, numOfNotifications?.orEmpty() ?? ZERO);
  }
}

extension ContactsResponseMapper on ContactsResponse{
  Contacts toDomain(){
    return Contacts(phone?.orEmpty() ?? EMPTY, link?.orEmpty() ?? EMPTY, email?.orEmpty() ?? EMPTY);
  }
}


extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}