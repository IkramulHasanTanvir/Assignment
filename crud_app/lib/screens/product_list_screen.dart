import 'dart:convert';
import 'package:crud_app/models/product.dart';
import 'package:crud_app/models/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];
  bool _inProgress = false;

  @override
  void initState() {
    super.initState();
    getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P R O D U C T  L I S T'),
        actions: [
          IconButton(
            onPressed: () {
              getProductList();
            },
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: _inProgress
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  product: productList[index],
                  onDelete: () {
                    deleteProduct(productList[index].productId);
                  },
                );
              }),
    );
  }

  Future<void> getProductList() async {
    _inProgress = true;
    setState(() {});
    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/ReadProduct');
    Response response = await get(uri);

    if (response.statusCode == 200) {
      productList.clear();
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      for (var item in jsonResponse['data']) {
        Product product = Product(
          productId: item['_id'] ?? '',
          productName: item['ProductName'] ?? '',
          productCode: item['ProductCode'] ?? '',
          productImage: item['Img'] ?? '',
          unitPrice: item['UnitPrice'] ?? '',
          quantity: item['Qty'] ?? '',
          totalPrice: item['TotalPrice'] ?? '',
          createAt: item['CreatedDate'] ?? '',
        );
        productList.add(product);
      }
    }
    _inProgress = false;
    setState(() {});
  }

  Future<void> deleteProduct(String productId) async {
    Uri uri = Uri.parse(
        'http://164.68.107.70:6060/api/v1/DeleteProduct/639da5960817590a4e4fd53c');
    Response response = await delete(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['data']['acknowledged'] == true &&
          jsonResponse['data']['deletedCount'] > 0) {
        productList.removeWhere((product) => product.productId == productId);
        setState(() {});
      }
    }
  }
}
