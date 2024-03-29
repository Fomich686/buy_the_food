defmodule BuyTheFood.Stores do

  def search_by_word(word) do
    get_all()
     |> Enum.filter(
            fn x ->
              String.starts_with?(x.name, word)
            end)
  end

  def get_all() do
    [
      %{id: 1,name: "бананы"},
      %{id: 2,name: "батон"},
      %{id: 3,name: "бумага для выпечки"},
      %{id: 4,name: "ваниль"},
      %{id: 5,name: "горох"},
      %{id: 6,name: "горошек консервированный"},
      %{id: 7,name: "горчица"},
      %{id: 8,name: "горький шоколад"},
      %{id: 9,name: "готовый куриный бульон"},
      %{id: 10,name: "готовый мясной бульон"},
      %{id: 11,name: "гречка"},
      %{id: 12,name: "губки для мытья посуды"},
      %{id: 13,name: "детское питание"},
      %{id: 14,name: "дрожжи сухие"},
      %{id: 15,name: "желатин"},
      %{id: 16,name: "какао порошок"},
      %{id: 17,name: "карри"},
      %{id: 18,name: "картофель"},
      %{id: 19,name: "кефир"},
      %{id: 20,name: "корица"},
      %{id: 21,name: "котлеты (домашний полуфабрикат)"},
      %{id: 22,name: "кофе растворимый"},
      %{id: 23,name: "кошачий корм"},
      %{id: 24,name: "крабовые палочки"},
      %{id: 25,name: "красный перец"},
      %{id: 26,name: "крахмал"},
      %{id: 27,name: "кукуруза консервированная"},
      %{id: 28,name: "кукурузная крупа"},
      %{id: 29,name: "куриное филе"},
      %{id: 30,name: "курица (бедра или окорочка)"},
      %{id: 31,name: "куркума"},
      %{id: 32,name: "лавровый лист"},
      %{id: 33,name: "лимон"},
      %{id: 34,name: "лук"},
      %{id: 35,name: "макароны спагетти"},
      %{id: 36,name: "макароны спиральки"},
      %{id: 37,name: "малиновое варенье"},
      %{id: 38,name: "манка"},
      %{id: 39,name: "маргарин"},
      %{id: 40,name: "масло оливковое"},
      %{id: 41,name: "масло растительное"},
      %{id: 42,name: "масло сливочное"},
      %{id: 43,name: "мед"},
      %{id: 44,name: "мешки для мусора"},
      %{id: 45,name: "молоко детское"},
      %{id: 46,name: "морковь"},
      %{id: 47,name: "мука пшеничная"},
      %{id: 48,name: "мука ржаная"},
      %{id: 49,name: "наполнитель для кошачьего туалета"},
      %{id: 50,name: "овсяные хлопья"},
      %{id: 51,name: "отварные грибы"},
      %{id: 52,name: "пакеты пищевые"},
      %{id: 53,name: "панировочные сухари"},
      %{id: 54,name: "паприка"},
      %{id: 55,name: "перловка"},
      %{id: 56,name: "петрушка"},
      %{id: 57,name: "пищевая пленка"},
      %{id: 58,name: "разрыхлитель теста"},
      %{id: 59,name: "рис"},
      %{id: 60,name: "рыба"},
      %{id: 61,name: "рыбная консерва"},
      %{id: 62,name: "сало"},
      %{id: 63,name: "сахар коричневый"},
      %{id: 64,name: "сахар обычный"},
      %{id: 65,name: "сахарная пудра"},
      %{id: 66,name: "свинина"},
      %{id: 67,name: "сгущенка"},
      %{id: 68,name: "сливки"},
      %{id: 69,name: "сливочное масло"},
      %{id: 70,name: "слоеное тесто"},
      %{id: 71,name: "сметана"},
      %{id: 72,name: "сода"},
      %{id: 73,name: "соевый соус"},
      %{id: 74,name: "соль"},
      %{id: 75,name: "стручковая фасоль"},
      %{id: 76,name: "суповой набор куриный"},
      %{id: 77,name: "суповой набор мясной"},
      %{id: 78,name: "сухие грибы"},
      %{id: 79,name: "сыр"},
      %{id: 80,name: "творог"},
      %{id: 81,name: "томатная паста"},
      %{id: 82,name: "укроп"},
      %{id: 83,name: "уксус обычный"},
      %{id: 84,name: "фасоль"},
      %{id: 85,name: "фольга"},
      %{id: 86,name: "фрикадельки (домашний полуфабрикат)"},
      %{id: 87,name: "чай зеленый"},
      %{id: 88,name: "чай мятный"},
      %{id: 89,name: "чай черный"},
      %{id: 90,name: "чай, кофе"},
      %{id: 91,name: "черный перец"},
      %{id: 92,name: "чеснок"},
      %{id: 93,name: "шпинат"},
      %{id: 94,name: "яблоки"},
      %{id: 95,name: "ягоды клубника"},
      %{id: 96,name: "ягоды клюква"},
      %{id: 97,name: "ягоды смородина"},
      %{id: 98,name: "яйца"}
    ]
  end

  def get_by_id(id) do
    get_all()
     |> Enum.filter(fn x -> x.id == id end)
  end

end
