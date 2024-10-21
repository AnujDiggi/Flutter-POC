class Coin {
  final int id;
  final String name;
  final String chiaName;
  final double price;
  final double change24h;

  Coin(
      {required this.id,
      required this.name,
      required this.chiaName,
      required this.price,
      required this.change24h});
}

List<Coin> coins = [
  Coin(
      id: 1, name: 'Bitcoin', chiaName: 'BTC', price: 48970.00, change24h: 2.3),
  Coin(
      id: 2, name: 'Ethereum', chiaName: 'ETH', price: 3210.50, change24h: 1.8),
  Coin(id: 3, name: 'Ripple', chiaName: 'XRP', price: 0.87, change24h: -0.5),
  Coin(id: 4, name: 'Litecoin', chiaName: 'LTC', price: 185.30, change24h: 3.2),
  Coin(id: 5, name: 'Cardano', chiaName: 'ADA', price: 2.15, change24h: 4.1),
  Coin(id: 6, name: 'Solana', chiaName: 'SOL', price: 210.25, change24h: 5.7),
  Coin(id: 7, name: 'Polkadot', chiaName: 'DOT', price: 40.75, change24h: 2.9),
  Coin(id: 8, name: 'Dogecoin', chiaName: 'DOGE', price: 0.32, change24h: -1.4),
  Coin(
      id: 9, name: 'Chainlink', chiaName: 'LINK', price: 28.45, change24h: 0.6),
  Coin(id: 10, name: 'Stellar', chiaName: 'XLM', price: 0.42, change24h: -0.8),
  Coin(
      id: 11,
      name: 'Avalanche',
      chiaName: 'AVAX',
      price: 73.80,
      change24h: 3.5),
  Coin(id: 12, name: 'VeChain', chiaName: 'VET', price: 0.12, change24h: 1.2),
  Coin(id: 13, name: 'Uniswap', chiaName: 'UNI', price: 25.10, change24h: 2.0),
  Coin(
      id: 14,
      name: 'Binance Coin',
      chiaName: 'BNB',
      price: 450.70,
      change24h: 4.0),
  Coin(id: 15, name: 'Cosmos', chiaName: 'ATOM', price: 32.85, change24h: -2.1),
  Coin(id: 16, name: 'Algorand', chiaName: 'ALGO', price: 1.80, change24h: 1.5),
  Coin(
      id: 17,
      name: 'Shiba Inu',
      chiaName: 'SHIB',
      price: 0.000027,
      change24h: 5.6),
  Coin(id: 18, name: 'Tezos', chiaName: 'XTZ', price: 6.15, change24h: 2.2),
  Coin(
      id: 19, name: 'Filecoin', chiaName: 'FIL', price: 72.50, change24h: -0.7),
  Coin(
      id: 20,
      name: 'Internet Computer',
      chiaName: 'ICP',
      price: 45.90,
      change24h: 1.3),
];
