import 'package:ecommer_app/common/addbutton.dart';
import 'package:ecommer_app/screen/productinfo/product_info.dart';
import 'package:flutter/material.dart';
import '../model/productDto.dart';

class ProductItemWidget extends StatefulWidget {
  ProductDto product;
  double? height;
  ProductItemWidget({super.key, required this.product, this.height});

  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductInfo(
                      productId: '1',
                    )));
      },
      child: Container(
        // height: widget.height ?? MediaQuery.of(context).size.width / 2.6,
        // padding: const EdgeInsets.only(left: 5, right: 5),
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 223, 221, 221),
            borderRadius: BorderRadius.all(Radius.circular(7))),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(7), topLeft: Radius.circular(7)),
              child: Image(
                image: NetworkImage(widget.product.path ?? ''),
                width: MediaQuery.of(context).size.width / 3.0,
                height: MediaQuery.of(context).size.width / 2.5,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              width: MediaQuery.of(context).size.width / 3.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  widget.product.type == 2
                      ? RowStartNonIcon(widget.product.name ?? '')
                      : RowStartIcon(
                          widget.product.name ?? '', widget.product.type ?? 3),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Text(
                      widget.product.category ?? '',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  widget.product.type == 3
                      ? RowEndSale(
                          widget.product.price.toString(),
                          widget.product.priceDiscount.toString(),
                          widget.product,
                          '1')
                      : RowEnd(
                          widget.product.price.toString(), widget.product, '1')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget RowEndSale(String price, String discountPrice, ProductDto productDto,
    String accountId) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 1,
        child: RichText(
          text: TextSpan(
            text: discountPrice.toString(),
            style: const TextStyle(
                color: Colors.red,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red, // Màu sắc của gạch ngang
                decorationThickness: 2.0, // Độ dày của gạch ngang
                fontSize: 12),
          ),
          textAlign: TextAlign.start,
        ),
      ),
      Expanded(
          flex: 1,
          child: Addbutton(productDto: productDto, accountId: accountId)),
      Expanded(
        flex: 1,
        child: Text(
          price.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
      ),
    ],
  );
}

Widget RowEnd(String price, ProductDto productDto, String accountId) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Expanded(flex: 1, child: SizedBox()),
      Expanded(
          flex: 1,
          child: Addbutton(
            productDto: productDto,
            accountId: accountId,
          )),
      Expanded(
        flex: 1,
        child: Text(
          price.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
      ),
    ],
  );
}

Widget IconProduct(String path) {
  return Container(
    alignment: Alignment.centerRight,
    child: Image(
      image: AssetImage(path),
      height: 18,
      width: 18,
    ),
  );
}

Widget RowStartNonIcon(String name) {
  return Container(
    child: Text(
      name.length > 20 ? name.substring(0, 17) + '...' : name,
      softWrap: true,
      textAlign: TextAlign.start,
      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
    ),
  );
}

Widget RowStartIcon(String name, int type) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 7,
        child: Text(
          name.length > 20 ? name.substring(0, 17) + '...' : name,
          softWrap: true,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        flex: 3,
        child: type == 3
            ? IconProduct('assets/icons/sale.png')
            : type == 1
                ? IconProduct('assets/icons/new.png')
                : Container(),
      )
    ],
  );
}
