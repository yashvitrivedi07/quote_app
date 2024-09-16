

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/quote_model.dart';
import 'package:flutter_application_1/utils/all_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late String font ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

       font = Myfonts.protestGuerrilla.name; 
       int fontsize = 14;// Initialize with a default font
// Initialize with a default font

  }

  bool isfont = false;

  @override
  Widget build(BuildContext context) {
    final QuoteModel quote = ModalRoute.of(context)!.settings.arguments as QuoteModel;
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("detail_page"),
        actions: [
          IconButton(onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          }, icon: const Icon(Icons.home))
        ],
      ),

      body: Padding(padding: const EdgeInsets.all(16),
      child: 
          Center(
            child: Stack(
              alignment: Alignment.topRight,
             children: [
                 Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 100,
                    width: size.width * 100,
                    decoration: BoxDecoration(color: Colors.blue.shade300),
                    child: Text(quote.quote,style: TextStyle(fontSize: 16,fontFamily: font),),
                  ),
                 ),

               Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                       
                    IconButton(onPressed: () {
                  setState(() {});
                  isfont = !isfont;
                 }, icon: isfont ? Icon(Icons.font_download,color: Colors.black,) :Icon(Icons.font_download,color: Colors.grey,)), 
                ],
               ),

               if(isfont)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: size.height * .4,
                        width: size.width * .4,
                      
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,

                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                               // Accessing each font based on index

                            return Stack(
                              children: Myfonts.values.map((e) => ElevatedButton(onPressed: () {
                            setState(() {
                            });
                            font = e.name;
                          }, child: Text(e.name))).toList()
                            );
                          },
                        ),
                          
                          
                        
                      ),
                    )


             ],
              
            ),
          ),
        
      
      ),
    );
  }
}


/**
 * 
 * Container(
                decoration: BoxDecoration(color: Colors.blue.shade300),
                child: Text(quote.quote,style: TextStyle(fontSize: 16,fontFamily: font),),
              ),

             Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              
              children: [
                 IconButton(onPressed: () {
                  setState(() {});
                  isfont = !isfont;
                 }, icon: isfont ? Icon(Icons.font_download,color: Colors.black,) :Icon(Icons.font_download,color: Colors.grey,)),

                if (isfont) Center(
               child: Container(
                alignment: Alignment.bottomCenter,
                 child: Row(
                   children: Myfonts.values.map((e) => ElevatedButton(onPressed: () {
                    setState(() {
                  });
                   font = e.name;
                }, child: Text(e.name))).toList(),
              ),
            )
          ) 
              ],
             )Container(
                decoration: BoxDecoration(color: Colors.blue.shade300),
                child: Text(quote.quote,style: TextStyle(fontSize: 16,fontFamily: font),),
              ),

             Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              
              children: [
                 IconButton(onPressed: () {
                  setState(() {});
                  isfont = !isfont;
                 }, icon: isfont ? Icon(Icons.font_download,color: Colors.black,) :Icon(Icons.font_download,color: Colors.grey,)),

                if (isfont) Center(
               child: Container(
                alignment: Alignment.bottomCenter,
                 child: Row(
                   children: Myfonts.values.map((e) => ElevatedButton(onPressed: () {
                    setState(() {
                  });
                   font = e.name;
                }, child: Text(e.name))).toList(),
              ),
            )
          ) 
              ],
             )
 */