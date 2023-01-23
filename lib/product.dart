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
          'data:image/jpeg;base64,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',
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
  Product(
      id: 1,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYfkYxHyHH4RrqVoqq3jL6HyI-w3dP3uExPA&usqp=CAU',
      title: "lap3",
      color: Colors.black,
      description: "something",
      price: 120,
      size: 21),
  Product(
      id: 1,
      image:
          'data:image/jpeg;base64,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R9avxXkDiD5i5rYi3LCL7S2rYmNOhHW0oriYxTvdLMWPpXtdlyu55Sjc0X0Lxx6xwTGYHvmqCx9K9r3lzH88pR0deBfxuN/Uuh3O8S8SL73/AITud4l4kX3v/CI0a+BzqiYtfSljqiSRsnPKb7MvcRoX7rEHdfRXvp3uqzldSlr6kua8VlNcsMmgDdp1a7rrb7neJeJF97/ws1H9H2ItkjcWxANexx77uAcCeCDnNppGVgLpKZrG1IeSauk0YJdT4d9wOllbS0UsdTA6R9MyMTQylxq6W2yLmuziz7kFouAu1Wcgq58jiWhwzPt35oAaXEgAFum/4q+t5A1z8lmtNoqdmkoAzMia07266g6orSwDkpiO0ppDCDFmZJtBPTuYWENOYZXkkaKPz4LPE4xybCORlg5jqukDmmwNiNppwXoww/H4msigdEIo4qeNgtHo5sbA+5cy56Qf8FyMb5E4pPPNLlicZRESQ4AOkyMD7jLuzB1kRw28hsScwnmzjmbdpbNSFrrjQ32m7cvbsAjLZ4Ad7dD1XDXKEVdLyga5zYHxCJoY2O4i0aGga3Zc6r0HB4HCaJzrX479+U30RUrREWKiIiAiIgIiICIiAiIgIiIONibe+n1N/itYMW/Xt757AsAaqjBkTZrYyplVRrmPcrsiykbv74FLIMOVMqzWSyDDkTIs1ksgxZFbk17P4rPZANez+KDBs02a2MqZUGtkWWib31nrP7ir8qyUre+N9Z/cVFdZERRRERAREQEREBERAREQEREHPrB0/YFhss9X4fsCxKotsllcqKotI3JZVPD++BRBbZLK5EFtksrkQUsnHs/iqoN/Z/FAsllciC2yyUw6bfb+4q1X0/ht9v7lFdFERRRERAREQEREBERAREQEREGKaAO11BWPmY6z8Fsog1uaDrPwTmY6z8Fsog1eZjrPwTmTet3atpEGqaFvW7tVvMB4zvgtxEGnzAeM74KooR4zj7Vtog1eYt63dqcyHWfgtpEGtzMdZ+CczHWfgtlEGtzQdZ+Cvipw031JWZEBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERB//9k=',
      title: "lap3",
      color: Colors.black,
      description: "something",
      price: 120,
      size: 21),
  Product(
      id: 1,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjqf4nqW7ns12JyKp3SdZUq0__cCdcgSiqxHGRatU5PFNas880q4s9PeaSm8CnQivXBo&usqp=CAU',
      title: "lap3",
      color: Colors.black,
      description: "something",
      price: 120,
      size: 21),
];
