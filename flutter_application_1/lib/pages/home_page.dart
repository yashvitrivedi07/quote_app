
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/quote_model.dart';
import 'package:flutter_application_1/utils/quote_data.dart';
import 'package:flutter_application_1/utils/all_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isgrid = false;
  String quote = Myfonts.matemasie.name;
  bool islike = false;
  int like = 0;

  QuoteModel model = QuoteModel.fromMap(data: allData.asMap());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

        

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("quote app"),
        actions: [
           IconButton(onPressed: () {
            setState(() {});
            isgrid = !isgrid;
           }, icon: isgrid ?const Icon(Icons.menu) :const Icon(Icons.grid_view))
                  
        ],
      ),

        body: Padding(padding: const EdgeInsets.all(16),
        child: isgrid ?Card(
          child:ListView.builder(
              
            
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int index) {
                  final quote = allData[index];

              return Card(child: ListTile(title: Text(quote.quote),),);

               
            },
          ),
        )
        :Card(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3/4
            ),
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int index) {
              final quote = allData[index]; // Accesses a QuoteModel instance from the list
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detail_page' , arguments: quote);
                  
                },
                child: Card(
                  child: ListTile(
                    title: Text(quote.quote),
                    subtitle: Text("- ${quote.author}"),
                    trailing: TextButton.icon(onPressed: () {
                      setState(() {
                      });
                      islike = !islike;
                      quote.likes += islike ?1 : -1;
                    }, label: Text(quote.likes.toString()) , icon: islike ? const Icon(Icons.thumb_up, color: Colors.red,) : const Icon(Icons.thumb_up , color: Colors.grey,),)
                  )
                  ),
              );
            },
          ),
        )
        
        ),
      
    );
  }
}

