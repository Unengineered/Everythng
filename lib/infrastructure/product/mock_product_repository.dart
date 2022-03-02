import 'package:dartz/dartz.dart';
import 'package:everythng/core/constants/constant_strings.dart';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: IProductRepository, env: ["mock"])
class MockProductRepository implements IProductRepository{

  MockProductRepository(){
    print("using product mock");
  }

  @override
  Future<Either<ProductFailure, DetailedThriftProduct>> getDetailedThriftProduct(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, List<DetailedThriftProduct>>> getDetailedThriftProducts() async {
    return right([
      DetailedThriftProduct(
        id: "1",
        name: "PRODUCT1",
        price: 200,
        pictures: [
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
        ],
        sizeChart: [
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "key", "value": "value"}
        ],
        storeLink: StoreLink(
            name: "STORE 1",
            id: "5",
            thumbnail: Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
            instagram: Uri.parse("https://www.instagram.com/store1")),
      ),
      DetailedThriftProduct(
        id: "2",
        price: 200,
        originalPrice: 3000,
        description: li,
        pictures: [
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
        ],
        sizeChart: [
          {"key": "key", "value": "value"},
          {"key": "key", "value": "value"}
        ],
        storeLink: StoreLink(
            name: "STORE 1",
            id: "5",
            thumbnail: Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
            instagram: Uri.parse("https://www.instagram.com/store1")),
      ),
      DetailedThriftProduct(
        id: "3",
        name: "PRODUCT3",
        price: 200,
        pictures: [
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
        ],
        sizeChart: [
          {"key": "key", "value": "value"},
          {"key": "key", "value": "value"}
        ],
        storeLink: StoreLink(
            name: "STORE 1",
            id: "5",
            thumbnail: Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
            instagram: Uri.parse("https://www.instagram.com/store1")),
      )
    ]);
  }

  @override
  Future<Either<ProductFailure, List<DetailedThriftProduct>>> getDetailedThriftProductsByStore(String storeId) async{
    return right([
      DetailedThriftProduct(
        id: "1",
        name: "PRODUCT1",
        price: 200,
        pictures: [
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
        ],
        sizeChart: [
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "shoulder", "value": "16 inches"},
          {"key": "key", "value": "value"}
        ],
        storeLink: StoreLink(
            name: "STORE 1",
            id: "5",
            thumbnail: Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
            instagram: Uri.parse("https://www.instagram.com/store1")),
      ),
      DetailedThriftProduct(
        id: "2",
        price: 200,
        originalPrice: 3000,
        description: li,
        pictures: [
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
        ],
        sizeChart: [
          {"key": "key", "value": "value"},
          {"key": "key", "value": "value"}
        ],
        storeLink: StoreLink(
            name: "STORE 1",
            id: "5",
            thumbnail: Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
            instagram: Uri.parse("https://www.instagram.com/store1")),
      ),
      DetailedThriftProduct(
        id: "3",
        name: "PRODUCT3",
        price: 200,
        pictures: [
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
          Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/products%2Funengineered%2F_VED1382.jpg?alt=media&token=c08ecbb7-b1cf-42a0-a866-72362168218a"),
        ],
        sizeChart: [
          {"key": "key", "value": "value"},
          {"key": "key", "value": "value"}
        ],
        storeLink: StoreLink(
            name: "STORE 1",
            id: "5",
            thumbnail: Uri.parse(
                "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
            instagram: Uri.parse("https://www.instagram.com/store1")),
      )
    ]);
  }

}