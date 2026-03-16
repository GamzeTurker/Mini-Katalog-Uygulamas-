import 'package:flutter/material.dart';
import 'package:mini_katalog/model/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            )
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Expanded(
                            child: Hero(
                              tag: product.id ?? 0,
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.vertical(
                                  top: Radius.circular(12),
                                ),
                                child: Image.network(product.image ?? "")),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product.title ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                                ),
                            
                            SizedBox(height: 1,),
                            Text("\$${product.price}",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                            ),),]
                            ),
                          ),

                          ],
                          

                        ),
                      );
  }
}