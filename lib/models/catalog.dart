class CatelogModel {
  static final items = [
    Item(
        id: 1,
        name: 'Linnex Product Mobile',
        desc: 'Here is Desc',
        price: 540,
        color: '#333',
        image:
            'https://pick4less.com/public/uploads/products/thumbnail/nLzw5cTXDCSLuS8kTXNveJfysvDIOhI2WxmjNtqs.jpeg'),
    Item(
        id: 1,
        name: 'Bengal Product Mobile',
        desc: 'Here is Describe',
        price: 340,
        color: '#333',
        image:
            'https://pick4less.com/public/uploads/products/thumbnail/nLzw5cTXDCSLuS8kTXNveJfysvDIOhI2WxmjNtqs.jpeg'),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
