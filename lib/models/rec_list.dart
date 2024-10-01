class Listing {
  final int id;
  final String title;
  final int price;
  final String description;
  final String publishDate;
  final List<String> img;

  Listing(this.id, this.title, this.price, this.description, this.publishDate, this.img);
}

List<Listing> listings = [
  Listing(
    1,
    "Fender Deluxe Reverb Drip Edge Guitar Combo 1968 - 1969",
    190000,
    "Этот усилитель отлично звучит в студии. Он очень чистый, с большим количеством реверберации. На крышке имеются пятна, а задняя панель немного помята. Усилитель был проверен и обслужен. Это редкий винтажный усилитель, требующий регулярного ухода.",
    "2024-05-27",
    ["kits"]
  ),
  Listing(
    2,
    "Boss BD-2 Blues Driver Effect pedal",
    11000,
    "BD-2 Blues Driver обеспечивает сливочный, но хрустящий звук, ассоциирующийся с великолепной блюзовой гитарой. Эта популярная педаль обеспечивает мгновенный доступ к теплому овердрайву и эмоциональному искажению, обычно свойственному ламповым усилителям 30-летней давности.",
    "2024-05-27",
    ["petar"]
  )
];