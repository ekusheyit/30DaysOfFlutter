class CatelogModel {
  static final items = [
    Item(
        id: 'asn1',
        name: 'Linnex Product Mobile',
        desc: 'Here is Desc',
        price: 555,
        color: '#333',
        image:
            'https://pick4less.com/public/uploads/products/thumbnail/nLzw5cTXDCSLuS8kTXNveJfysvDIOhI2WxmjNtqs.jpeg')
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
