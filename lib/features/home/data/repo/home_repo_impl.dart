import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future< List<CategoryModel>> getCategories() async {
    return [
      CategoryModel(name: 'خضراوات', image: AssetData.cornImage),
      CategoryModel(name: 'فاكهة', image: AssetData.cornImage),
      CategoryModel(name: 'لحمة', image: AssetData.cornImage),
      CategoryModel(name: 'مشروبات', image: AssetData.cornImage),
    ];
  }

  @override
  Future< List<ProductModel>> getTopPicks() async {
    // محاكاة تأخير بسيط كأننا نجلب من نت (1 ثانية)
    await Future.delayed(const Duration(seconds: 1));

    return [
      ProductModel(
        id: 1,
        name: 'طماطم ',
        image: AssetData.cornImage,
        weight: '500 gm',
        price: 10.0,
        category: 'خضراوات',
      ),
      ProductModel(
        id: 2,
        name: 'بطاطس ',
        image: AssetData.cornImage,
        weight: '500 gm',
        price: 12.0,
        category: 'خضراوات',
      ),
      ProductModel(
        id: 3,
        name: 'عنب ',
        image: AssetData.cornImage,
        weight: '500 gm',
        price: 8.0,
        category: 'فاكهة',
      ),
      ProductModel(
        id: 4,
        name: 'موز ',
        image: AssetData.cornImage,
        weight: '500 gm',
        price: 14.0,
        category: 'فاكهة',
      ),
    ];
  }

  @override
  Future< List<ProductModel>> getDiscoverProducts() async {
    return [
      ProductModel(id: 1, name: 'سجق بقري بلدي 500 جم', image: AssetData.cornImage, weight: '500 gm', price: 130.0, category: 'لحمة'),
      ProductModel(id: 1, name: 'كندوز بقري بلدي مفروم 500 جم', image: AssetData.cornImage, weight: '500 gm', price: 160.0, category: 'لحمة'),
      ProductModel(id: 1, name: 'شيش طاووق متبل', image: AssetData.cornImage, weight: '500 gm', price: 140.0, category: 'لحمة'),
      ProductModel(id: 1, name: 'كفتة حاتي بلدي', image: AssetData.cornImage, weight: '500 gm', price: 12.0, category: 'لحمة'),
    ];
  }
}
