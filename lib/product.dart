import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.color,
    required this.description,
    required this.price,
    required this.size,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_QlZmzNryaaw9U948e0W9Kzivlt3Ga5SYgTc1mIajW8DVUQ9zRyP6ZH4Kjte8I0hKU8&usqp=CAU',
      title: "lap2",
      color: Colors.blue,
      description: "something",
      price: 120,
      size: 21),
  Product(
      id: 1,
      image:
          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHsAuQMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAIFBgEAB//EAEUQAAEDAgQCBQcIBQ0AAAAAAAEAAgMEEQUGEmEhURMxQYHBBxQicXKx0RUyQmKCkaHwIyVSkuIWF0NFU1Vzg4STwtLx/8QAGQEBAQEBAQEAAAAAAAAAAAAAAQACBAMF/8QAIREBAAICAwACAwEAAAAAAAAAAAIRARMDElEhQRRCYTH/2gAMAwEAAhEDEQA/APjlrrwCl6l2y9U4O/biu2XbK0psFknwWpxQTRNjgkbGWF3pOJ5BVC1UAvWU9KkAtULDsugKYauhqqFh2XrIuleDVUg9K9ZF0rulVKwbLulF0r2lVKwbL1kXSu6VUrBI4rlkbSuaVUrBsvEFFLVwtHYmlYVl5E0rhCKNhrynpXLIo2kAuhqmGqQatMIWUrHkpht1INSrDsu6booapBiqFghqkGIwYpBierNl9CloTAjXejTSsvoXtCaEa70aqVlNC9oTfRrhjTSsqWLmiyaMa90aKVlCxc0JrQVwxqpWVLVzSmdC4WIo2W0rmlMFi4WKo2WLVzQeSOWrmkqpW8GKehFDFMMuVYwzYQbwUms4o4jU2xppAhikIu1MNiKI2FaxgFhGpiJNti2RGw3WuosmIlMRJ1sGyI2nPJa6iyAh2Xuh2VkKc8lLzU8k0rVfQ7L3Q7K0822XDT7K6q1X0S4YlZGn2UTBss9VasMSiY1YmHZQMKKNq4xqJjVg6LZQMSKJDo1EsTxiKGYkUiRYuaE2Y1zo0UXGxojY0y2G/YishUCzYkVsKaZDsjsh2SCjYUZsCdZBsjx09+xaBBkGyOynv2KxjptkzHS7LQVjKXZHbSbK2jpNkZ0AijdI8ei0XNgntjAY/FZpIpDFTtLSwi79Q6//ABUc8s9wGzTEg31uebW9avMTmfUVEkwAMZbwaP2fzsqafXHIOkYWO18T2WItey+XPkzOf8fThx4jAxhWLMpdcNcZnjXZpsCG9/WtPHAyWNr2X0nquLLIPnh0xmRrtOrS5zSOsEdVurr3X0DAh57hcUtnEglhc7rcQbX/ACB6l18HJ+uXHzQr5VjqXZCfTbLSPpNku+k2XR2eNM66m2Q3U+y0D6XZAfTbLNlQugQzArt9NsguptlFTOhQzCrd9PbsQnQbKSpdCo9CrN0Gyh0OykCxiO1ixLcQqm/NqJR9oorcXr2nhVP72tPguXfjx76c+txHGE3HDdYWLMeJR/Sid7UfwTsOb69o409O794eK1vizok28cCajgWKjzxUN+fQQn1SEJuLP2kjpMLH2aj+FW+I0zbSKnTkdMFi2eUOlb14bN3SD4JuHykYeCA7Dqrucw+Kt8fVpn42cVMp1lE2WhnYep0bgT3LNxeUbCA27qWsG2lvxUx5S8JHBtBWO72DxWJc8c4q2o8M8ZumWbSVkzHGjhkNj6Bbe7x+PLmhTU9UypZSYjHM2qrWxup43WudJd6PD2mns6jwWsb5R8HbIHjCKkOYLNI0cBe/NKV2ecJrsTwqqdhtQ3zOofI9z9BdYxubwseZb9y5o4hj7dU88mf1VlRl+qho+lMWl7RqDHi12kWNjw5fnitzlehMOBUzDGWcCQD18SkXZ9yxKTJUx1DSW2Ln05dwPZwumaLO+UxG2GnxFsUbeoSQStA7y234r3hKOM3jLnnGef8AcLV9KEvJTW7FF2bctkX+WqH/AHQgvzblv++aI+qReuzHry6S8ckpwl5KcKM+bctgH9bUx9kk+4Kvmzjl5v8AWAdfq0wyH3NTsx6tcvDT6cID4Em/OeX+yref8iT/AKpWfOmCaSWSTuPIQnxTtj6tUvD74AgPgCqZc7Yb9CCod3NHiln50pTxbSTW3cAjdH06p+Lh8Kh0Oyzs+cXk/oqNjeRdIT4BB/lfV/2MP4/FH5ETomzzaKpd82nlP2Citwmvd82jkPrIHvK1jXBGY5qzjgx61uz4ysWXsTk/oGs9qRvhdOw5SxJ/Bz6Zm+snwWljkATcUwCdEWd0mbjyRVvPpVdOO5ybiyDM62rE4m+qAn/kFo45xzTUdQB2p0RW6bOR+ToO68Xt6qX+NPQ+TWlNteKzH2YQPeVfxVI5puOqHNWiI3TUkfk1w0jjiNZ6w1nwRB5MKDrZidSPajafgtFFVDmpV1cyGgqJXdTYySe0LEuCGMXTceaec4xbNN8muHF4Z8tPLnC4DYm3I+9KVuQ8NpMRwul+VZneezvjcC1ocNLC7hw67gDvWfZiddGH+Zzy2J/RAHi3ny5oU9dVTVbMQxKWY1lG1jYXOAHztV3cOHYB9/Hlywzxy+nVOPJHNdm9/m+y5FqZU1NQ6zbkOnDeHPgExR5CylJEyaKjdOw8QXVMtj3agsVUZiq5qMsMhfK86A9xHBnHq5rfZXrjLgNK57y7gQCQBcX23uuiEY5+MYc08zx85ym7JuWbW+RqW3qPxQX5MywQf1NTd2oeKtH1Q5peSqHNeuvDz7y9U1TkrLDrfqpgt+zNI33OSMuScufRoXj/AFMvi5XslSOaWfUDmnVjwbJeqJ+ScAtwgmHqnd8UtPknBtFo/OWn/Fv71fvqBzQH1CtMfFsl6zEuRqH6NXUt29E+CVkyVCPm1zttUQPiFqnzjmgPmHNWeGHh3Tx9shPk+cX6OrifsWFviUD+SVb+3B+8fgte+YKHThH48TvmzjZd0VkyrRJuiNk3Xq81oyZGZMQqlsu6K2bdaxlLllQjx1J5qkZNuitn3WmV/HU7pmOq3WdbUHmjMqSO1NCmmjq90WSYTQPicbBzbXteyzjKrdHbV/WT1xlXnCsxOmlopnmMtYNHouDr8L9XDjfqWbf0ksrXySEuvbTfktDjDahxdNG98moadNrm3JZyWOZktwx99VtLmFfKnxdJ5w+lHk7wEMTBp6fUGtN3NABIPDhwPH8AvpGXyKHCYYRcDi6xINrm/YsDhOEMq9UlWZo2tfYAcA/nwWrinZBE2KMnS0WFzcrr4OP7cnNL6aB9aeaA+sJ7VSuq79qE6p+sunq8Fu+r3QH1W6qnVH1kMz7oorN1Ugvqd1XOn3Q3T7qSwfU7oTp90g6bdDdNuonnzbofTJF026j026EqA5TD0uCpAleVt5Mh6IJEqCVIFaZNtkKK2VJglTBK1hHWyojZkgCVME802qWDZ90QVG6rQSpLVs0sxU7rvnW6rQu3PNN2qWBqlzzi6Ruea9c81WqOGoUDOUqSeaiSUWTRmKgZSgEmyiSUWhzKVB0hQSTzUCSgjGRQMig7rQ3ItCF+6jrQiSuXQn//2Q==',
      title: "laptop1",
      color: Colors.black,
      description: "something",
      price: 120,
      size: 21),
  Product(
      id: 1,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_QlZmzNryaaw9U948e0W9Kzivlt3Ga5SYgTc1mIajW8DVUQ9zRyP6ZH4Kjte8I0hKU8&usqp=CAU',
      title: "laptop2",
      color: Colors.black,
      description: "something",
      price: 120,
      size: 21),
  Product(
      id: 1,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_QlZmzNryaaw9U948e0W9Kzivlt3Ga5SYgTc1mIajW8DVUQ9zRyP6ZH4Kjte8I0hKU8&usqp=CAU',
      title: "lap3",
      color: Colors.black,
      description: "something",
      price: 120,
      size: 21),
];
