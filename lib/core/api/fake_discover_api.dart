//DISCOVER
import 'dart:convert';

import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';

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
			"logo": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
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
			"logo": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
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
			"logo": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"
		}
}
]
''';

const recommendedStoresJson = '''
[{
	"id": "12398njvqwe",
	"name": "store's name",
	"logo": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
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
	"logo": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
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
	"logo": "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2",
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
