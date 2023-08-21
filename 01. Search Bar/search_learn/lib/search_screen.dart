import 'package:flutter/material.dart';
import 'package:search_learn/component/item_list.dart';
import 'package:search_learn/models/grocery_model.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // create list that i want to display and filter
  List<ItemsModel> display_list = List.from(main_list);

  // filter movies
  void updateList(String value) {
    setState(() {
      display_list = main_list
          .where((element) =>
              element.item_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(
        title: const Text('Search....'),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   'Search Movies',
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple.shade300,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.white,
                hintText: ' Search Your Grocery items',
                hintStyle: const TextStyle(color: Colors.white),
                focusColor: Colors.white,
              ),
              cursorColor: Colors.white10,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Expanded(
              // create a f/n when no item matched with search

              child: display_list == 0
                  ? const Center(
                      child: Text(
                        'No result found',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        title: Text(
                          display_list[index].item_name!,
                          style: GoogleFonts.lato(
                            color: Colors.purple,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '₹ ${display_list[index].item_price!}',
                          style: const TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                        leading: Image.asset(display_list[index].image_path!),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
