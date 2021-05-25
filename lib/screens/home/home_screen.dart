import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/home/product_overview/product_overview.dart';
import 'package:food_app/screens/home/singal_product.dart';

import 'drawer_side.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Herbs Seasonings'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Fresh Basil",
                        productImage:
                            "https://purepng.com/public/uploads/large/purepng.com-pepermintpeperminthybrid-mintperennial-plantmint-14115270742872fda0.png",
                      ),
                    ),
                  );
                },
                productImage:
                    'https://purepng.com/public/uploads/large/purepng.com-pepermintpeperminthybrid-mintperennial-plantmint-14115270742872fda0.png',
                productName: "Fresh Basil",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Fresh Mint",
                        productImage:
                            'https://i.dlpng.com/static/png/5560435-peppermint-transparent-image-png-arts-peppermint-png-1200_900_preview.png',
                      ),
                    ),
                  );
                },
                productImage:
                    'https://i.dlpng.com/static/png/5560435-peppermint-transparent-image-png-arts-peppermint-png-1200_900_preview.png',
                productName: "Fresh Mint",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Rose Merry",
                        productImage:
                            'https://www.pngarts.com/files/5/Rosemary-PNG-Transparent-Image.png',
                      ),
                    ),
                  );
                },
                productImage:
                    'https://www.pngarts.com/files/5/Rosemary-PNG-Transparent-Image.png',
                productName: "Rose Merry",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fresh Fruits'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage:
                    'https://lh3.googleusercontent.com/proxy/i_EgTfhbIIwDmoDavYI1qwH-4CNtDMHQYEU6JCKx59R_OkdWhqTsOUtSLHIOUh4ZX9GZBY1tAqtTIcIIWjmk96P3gDzgpd9veIzZTdvSPfsMhSvFjJ9c-hnHrotmDNTrHFts7Dc',
                productName: "Berries",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Watemelon",
                        productImage:
                            'https://i.dlpng.com/static/png/1323576-watermelon-png-image-watermelon-png-png-picture-of-watermelon-1400_965_preview.png',
                      ),
                    ),
                  );
                },
                productImage:
                    'https://i.dlpng.com/static/png/1323576-watermelon-png-image-watermelon-png-png-picture-of-watermelon-1400_965_preview.png',
                productName: "Watemelon",
              ),
              SingalProduct(
                productImage:
                    'https://pngimg.com/uploads/grape/grape_PNG2976.png',
                productName: "Green Grapes",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Root Vegetable'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage:
                    'https://www.fondation-louisbonduelle.org/wp-content/uploads/2016/09/fenouil_262755635-e1475226317736.png',
                productName: "Fennel",
              ),
              SingalProduct(
                productImage:
                    'https://pngimg.com/uploads/spinach/spinach_PNG10.png',
                productName: "Green Garlic",
              ),
              SingalProduct(
                productImage:
                    'https://pngimg.com/uploads/spinach/spinach_PNG10.png',
                productName: "Fresh Basil",
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: Icon(Icons.search, size: 17, color: textColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 12,
              child: Icon(Icons.shop, size: 17, color: textColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all vegetables products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(context),
            _buildRootProduct(),
            _buildHerbsProduct(context),
          ],
        ),
      ),
    );
  }
}
