import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';

const THRIFT_PRODUCT_JSON = {
  "_id": "PRODUCT ID",
  "name": "PRODUCT NAME",
  "description": "PRODUCT DESCRIPTION",
  "price": 100.4,
  "original_price": 1000.2,
  "store_link": {
    "id": "ID",
    "logo": "URL",
    "name": "NAME",
    "tagline": "TAGLINE",
  },
  "customer_review": {"emoji": "😂", "message": "MESSAGE"},
  "pictures": ["URL", "URL", "URL"],
  "size_chart": {"key": "value"},
  "issues": [
    {
      "description": "DESCRIPTION",
      "pictures": ["URL", "URL"],
    },
    {
      "description": "DESCRIPTION",
      "pictures": ["URL", "URL"],
    },
  ],
  "brand": {"name": "NAME", "logo": "URL"},
};

final DetailedThriftProduct DETAILED_THRIFT_PRODUCT =
DetailedThriftProduct.fromJson(THRIFT_PRODUCT_JSON);
