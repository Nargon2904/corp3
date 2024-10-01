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
    "Деревянные киты - Всё, что я хочу тебе сказать (Black)",
    2900,
    "Формат: 12' \nLP Жанр: shoegaze, dream pop \nSide A:\n1 Всё, что я хочу тебе сказать\n2 Никогда\n3 Утро солнечного дня\nSide B:\n1 Перестаю дышать\n2 Потерялась\n3 Японская\n4 Котёнок",
    "2024-05-27",
    ["kits"]
  ),
  Listing(
    2,
    "Петар Мартич - Петар",
    4000,
    "Формат: 12' \nLP Жанр: rap \nSide A:\n 1 Всё, что я хочу тебе сказать\n2 Никогда\n3 Утро солнечного дня\nSide B:\n1 Перестаю дышать\n2 Потерялась\n3 Японская\n4 Котёнок",
    "2022-01-27",
    ["petar"]
  )
];