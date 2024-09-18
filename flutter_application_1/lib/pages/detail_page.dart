
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/quote_model.dart';
import 'package:flutter_application_1/utils/all_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late String font;
   int fontSize = 16;

  @override
  void initState() {
    super.initState();
    font = Myfonts.protestGuerrilla.name; // Initialize with a default font
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
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.8, // Adjust the size as needed
                  width: size.width * 0.8, // Adjust the size as needed
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    quote.quote,
                    style: TextStyle(fontSize: fontSize.toDouble(), fontFamily: font , color: Colors.white),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isfont = !isfont;
                      });
                    },
                    icon: isfont
                        ? Icon(Icons.font_download, color: Colors.black)
                        : Icon(Icons.font_download, color: Colors.grey),
                  ),
                ],
              ),
              if (isfont)
                Align(
                  alignment: Alignment.bottomCenter,
                  
                    child: Container(
                      alignment: Alignment.center,
                      height: size.height * 0.4,
                      width: size.width * 0.8, // Adjust width as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                               Padding(
                            padding: EdgeInsets.all(15)
                            ,child: Text("Fonts",style: TextStyle(fontSize: 16),)),
                                   
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: () {
                              setState(() {
                                
                              });
                              fontSize += 1;
                            }, icon: Icon(Icons.add)),

                            Text(fontSize.toString()),
                            
                            IconButton(onPressed: () {
                              setState(() {
                                
                              });
                              fontSize -= 1;
                            }, icon: Icon(Icons.remove)),
                                ],
                              ),
                            )
                            
                            
                            
                            ],
                          ),
                    
                    Expanded(
                      child: GridView.builder(
                          padding: const EdgeInsets.all(8),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, // Adjust as needed
                           mainAxisSpacing: 10,
                           crossAxisSpacing: 10,      
                           childAspectRatio: 11/2                  
                          ),
                          itemCount: Myfonts.values.length,
                          itemBuilder: (context, index) {
                            return ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  font = Myfonts.values[index].name;
                                });
                              },
                              child: Text(Myfonts.values[index].name),
                            );
                          },
                        ),
                    ),
                          
                        ],
                      ),
                     
                    ),

                    
                   
                  
                ),
            ],
          ),
        ),
      ),
    );
  }
}
