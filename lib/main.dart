import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // enta line code yang mana buat error pada flutter
  @override
  Widget build(BuildContext context) {
    // final List<String> img = [
    //   "https://asset.kompas.com/crops/gj1PLUGMIKqa_TNx8NBZSZljtuk=/0x83:1000x583/1200x800/data/photo/2019/08/06/5d492f045d831.jpg",
    //   "https://www.shutterstock.com/image-photo/new-potato-isolated-on-white-260nw-1910558641.jpg"
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          title: const TextField(
            decoration: InputDecoration(
              hintText: 'Godrej',
              suffixIcon: Icon(Icons.search),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_basket_outlined))
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              //utk box pertama setelah appbar
              child: Container(
                alignment: Alignment.center,
                width: 360,
                height: 140,
                margin: const EdgeInsets.only(left: 30, top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)),
                child: Stack(
                  children: [
                    const Positioned(
                      child: CircleAvatar(
                        radius: 50,
                        // backgroundImage: AssetImage(''),
                      ),
                    ),
                    Positioned(
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 10,
                            left: 150,
                            child: Text("Godrej"),
                          ),
                          const Positioned(
                            top: 30,
                            left: 180,
                            child: Text("15.151 pengikut"),
                          ),
                          const Positioned(
                              top: 30, left: 150, child: Icon(Icons.person)),
                          Positioned(
                              left: 130,
                              top: 60,
                              width: 150,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.black)),
                                  child: const Text("data"))),
                          Positioned(
                            left: 280,
                            top: 60,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Positioned(
            //   //untuk slides img
            //   top: 400,
            //   child: PageView.builder(
            //       itemCount: img.length,
            //       itemBuilder: (context, index) {
            //         return Image.network(
            //           img[index],
            //           fit: BoxFit.cover,
            //         );
            //       }),
            // ),
            // const Positioned(
            //   top: 180,
            //   left: 20,
            //   child: Text(
            //     "Belanja berdasarkan kategori",
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //   ),
            // ),
            // Positioned(
            //     child: Container(
            //   width: 400,
            //   height: 100,
            //   margin: const EdgeInsets.only(left: 10, top: 220),
            //   decoration: const BoxDecoration(color: Colors.grey),
            // ),),
            // const Positioned(
            //   top: 330,
            //   left: 20,
            //   child: Text(
            //     "Semua produk",
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //   ),
            // ),
            // Positioned(
            //     top: 200,
            //     child: GridView.builder(
            //         gridDelegate:
            //             const SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 2,
            //           crossAxisSpacing: 8.0,
            //           mainAxisSpacing: 8.0,
            //         ),
            //         itemBuilder: (context, index) {}))
          ],
        ),
      ),
    );
  }
}
