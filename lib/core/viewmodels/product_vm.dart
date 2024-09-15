import 'package:dio/dio.dart';
import 'package:project_12_9/core/models/product.dart';

class ProductVm{
 Future<List<Product>?>getProducts()async{
   Dio d= Dio();
   try {
    Response res = await d.get('https://fakestoreapi.com/products');
    print('the data type of res data is ${res.data!.runtimeType}');
    List<Product>? allProducts = res.data!.map<Product>((e) =>
        Product.fromJson(e)).toList();
    return allProducts;
   }
   catch (e){
    print("the exception is $e");
   }
 }
}