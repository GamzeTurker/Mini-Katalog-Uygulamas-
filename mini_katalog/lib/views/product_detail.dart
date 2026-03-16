import 'package:flutter/material.dart';
import 'package:mini_katalog/model/product_model.dart';

class ProductDetail extends StatefulWidget {
  final Product product;
  final Set<int> cardIds;

  const ProductDetail({super.key,required this.product,required this.cardIds});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Back"),backgroundColor: Colors.white,leadingWidth: 20,
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.product.id ?? 0,
              child: Image.network(
                widget.product.image ?? "",height: 400,width: double.infinity,fit: BoxFit.cover,),
            ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.product.title??"",
                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                    SizedBox(height: 4,),
                    Text("Description",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 4,),
                    Text(widget.product.description ?? ""),
        
                    SizedBox(height: 10,),
                    Text(
                      "\$${widget.product.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){
                      setState(() {
                        widget.cardIds.add(widget.product.id ?? 0);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Added to card"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        margin: EdgeInsets.only(
                          bottom: 80,
                          left: 20,
                          right: 20,
                        ),
                        ),
                      );
                    }, 
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: Size.fromHeight(50),
                    ),
                    child: Text("Add to Card",style: TextStyle(color: Colors.white),),
                    ),
        
        
                  ],
                ),
              )
        
            ],
        ),
      )),
    );
  }
}