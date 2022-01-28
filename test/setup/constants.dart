import 'dart:convert';

import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/domain/list/entities/item_lists.dart';
import 'package:everythng/domain/list/entities/user_list.dart';
import 'package:everythng/domain/profile/entities/address.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:fort_knox/fort_knox.dart';

//AUTH
const email = "user@everythng.com";
const password = "skjfasj.ka129!@";
const uid = "UID";
const String token = 'TOKEN';
const String refreshedToken = 'REFRESHEDTOKEN';
const user = BaseUser(email: email, uid: uid);



//DISCOVER
const recommendedProductsJson = '''
[{
	"id": "12398njvqwe",
	"name": "product's name",
	"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
	"size": "S",
	"price": 299,
	"brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
	"store" : {
			"id": "askdnlak",
			"name": "advait",
			"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
		}
},
{
	"id": "12398njvqwe",
	"name": "product's name",
	"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
	"size": "S",
	"price": 299,
	"brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
	"store" : {
			"id": "askdnlak",
			"name": "advait",
			"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
		}
},
{
	"id": "12398njvqwe",
	"name": "product's name",
	"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
	"size": "S",
	"price": 299,
	"brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
	"store" : {
			"id": "askdnlak",
			"name": "advait",
			"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
		}
}
]
''';

const recommendedStoresJson = '''
[{
	"id": "12398njvqwe",
	"name": "store's name",
	"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
	"tagline" : "Store tagline",
	"products": [
        {
        "id": "12398njvqwe",
        "name": "product's name",
        "picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
        "size": "S",
        "price": 299,
        "brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
        },
        {
        "id": "12398njvqwe",
        "name": "product's name",
        "picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
        "size": "S",
        "price": 299,
        "brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
        }
	]
},
{
	"id": "12398njvqwe",
	"name": "store's name",
	"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
	"tagline" : "Store tagline",
	"products": [
        {
        "id": "12398njvqwe",
        "name": "product's name",
        "picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
        "size": "S",
        "price": 299,
        "brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
        },
        {
        "id": "12398njvqwe",
        "name": "product's name",
        "picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
        "size": "S",
        "price": 299,
        "brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
        }
	]
},
{
	"id": "12398njvqwe",
	"name": "store's name",
	"picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
	"tagline" : "Store tagline",
	"products": [
        {
        "id": "12398njvqwe",
        "name": "product's name",
        "picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
        "size": "S",
        "price": 299,
        "brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
        },
        {
        "id": "12398njvqwe",
        "name": "product's name",
        "picture": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a",
        "size": "S",
        "price": 299,
        "brand": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
        }
	]
}]
''';
final List<RecommendedProduct> recommendedProductsEx =
    (json.decode(recommendedProductsJson) as List<dynamic>)
        .map((json) => RecommendedProduct.fromJson(json))
        .toList();
final List<RecommendedStore> recommendedStoresEx =
    (json.decode(recommendedStoresJson) as List<dynamic>)
        .map((json) => RecommendedStore.fromJson(json))
        .toList();

//PROFILE
const everythngUserConst = EverythngUser(
    firstname: 'firstname',
    lastname: 'lastname',
    phone: '9920644868',
    addresses: [
      Address(
          line1: 'line1',
          line2: 'line2',
          pincode: 400705,
          city: 'city',
          state: 'state')
    ],
    storeLink: null);

const profileData = 
 {
		"id": "312413209vfjk",
		"firstname": "someone",
		"lastname": "someone",
		"phone": "8413939090",
		"email": "something@soemthing.com",
		"picture": "picture url",
		"addresses": 
    [{
			  "line1": "",
		    "line2": "",
		    "pincode" : 400789,
		    "city" : "Mumbai",
		    "state" : "Maharashtra"
		}],
		"store": {
			"name" : "store name",
			"id" : "store id",
			"tagline" : "tagline",
			"picture" : "picture url"
		}
};

final everythngUser = EverythngUser.fromJson(profileData);

//LIST SYSTEM

const testJson = ItemLists(
    cart: ["dbdecdj"],
    wishList: [],
    lists: [UserList(listName: "list1", emoji: "d", list: [])]);

const listJson = {
  "cart": [
    "dbdecdj",
  ],
  "wish_list": [],
  "lists": {
    "list1": {"emoji": "🤣", "list": ['dddddd']},
    "list2": {"emoji": "🐣", "list": ['dddddd']}
  }
};
final listMap = listOfUserListfromMap({
  "list1": {"emoji": "d", "list": []}
});

final itemLists = ItemLists.fromJson(listJson);

const userListJson = {
  "list1": {"emoji": "d", "list": []}
};

final userList = UserList.fromJson(userListJson);
