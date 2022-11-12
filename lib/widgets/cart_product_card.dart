import 'package:e_commerce_app/models/product_model.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            width: 100,
            height: 80,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle),
                      onPressed: () {
                        // context.read<CartBloc>().add(
                        //       CartProductRemoved(product),
                        //     );
                      },
                    ),
                    Text(
                      '$quantity',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle),
                      onPressed: () {
                        // context.read<CartBloc>().add(
                        //       CartProductAdded(product),
                        //     );
                      },
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}