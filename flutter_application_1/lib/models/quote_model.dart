class QuoteModel {

  dynamic quote , author , category , likes , shares , year , source;

  QuoteModel(this.author,this.quote,this.category,this.likes,this.shares,this.source,this.year);

  factory QuoteModel.fromMap({required Map data}) => QuoteModel(data['author'], data['quote'], data['category'], data['likes'], data['shares'], data['source'], data['year']);
}

