class Stock {

  final String? stockName;
  final String? stockFullName;

  Stock(this.stockName, this.stockFullName);

  final Map<String, String> stocks = {"stockName": "$Stock.stockName",
  "stockFullName": "$Stock.stockFullName"};

  Map<String, String> get stockDetails => stocks;


  Map<String, String> Stocks = {
    "MSFT": "Microsoft Corporation",
    "AAPL": "Apple Inc",
    "AMZN": "Amazon.com Inc",
    "GOOG": "Alphabet Inc -Class C",
    "GOOGL": "Alphabet Inc - Class A",
    "BABA": "Alibaba Group Holding Ltd",
    "FB": "Meta Platforms Inc - Class A",
    "BRK.B": "BERKSHIRE HATHAWAY INC",
    "BRK.A": "BERKSHIRE HATHAWAY INC",
    "VOD": "Vodafone Group plc",
    "JPM": "JPMorgan Chase & Company",
    "JNJ": "Johnson & Johnson",
    "MA": "Mastercard Incorporated - Class A",
    "PG": "Procter & Gamble Company",
    "TSM": "Taiwan Semiconductor Manufacturing",
    "CHT": "Chunghwa Telecom",
    "BAC": "Bank of America Corp",
    "KO": "Exxon Mobile Corp",
    "DIS": "Walt Disney Co",
    "PFE": "Pfizer Inc",
    "PEP": "PepsiCo Inc",
    "TM": "Toyota Motor Corporation",
    "CSCO": "Cisco Systems Inc",
    "BA": "Boeing Company"};

}