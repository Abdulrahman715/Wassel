import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({super.key, required this.readOnly, this.onTap});

  final bool readOnly;
  final void Function()? onTap;

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: TextFormField(
        controller: _searchController,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        decoration: InputDecoration(
          hintText: '...ابحث عن المنتجات',
          hintStyle: const TextStyle(color: Colors.grey),
          // prefixIcon: const Icon(Icons.search, color: Colors.grey),
          filled: true,
          fillColor: const Color(0xffF5F5F5), // لون رمادي فاتح جداً ومريح للعين
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide.none, // بدون حدود ظاهرة ليصبح أكثر عصرية
          ),
          prefixIcon: IconButton(
            onPressed: () {
              // اختيارياً: جعل أيقونة العدسة تبحث بالكلمة المكتوبة حالياً
              // if (_searchController.text.isNotEmpty) {
              //   BlocProvider.of<SearchCubit>(
              //     context,
              //   ).searchBooks(query: _searchController.text);
              // }
            },
            icon: const Icon(Icons.search_outlined, color: Colors.grey),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              // 1. مسح النص تماماً من الـ TextField
              _searchController.clear();

              // 2. إرجاع الـ Cubit للحالة الابتدائية لعرض جملة (Search for books...)
              // BlocProvider.of<SearchCubit>(context).resetSearch();
              // BlocProvider.of<SearchCubit>(context).searchBooks(query: '');
            },
            icon: const Icon(Icons.close, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
