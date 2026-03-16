# Mini Katalog Uygulaması

### Proje Adı
Mini Katalog (Mini Product Catalog)

### Kısa Açıklama
Mini Katalog, Flutter kullanılarak geliştirilmiş basit bir ürün listeleme uygulamasıdır. Uygulama, bir API üzerinden ürün verilerini çekerek kullanıcıya grid görünümünde sunar. Kullanıcılar ürünleri inceleyebilir, detay sayfasına gidebilir ve ürünleri sepete ekleyebilir.

### Özellikler
- API üzerinden ürün verisi çekme
- Ürünleri grid yapısında listeleme
- Ürün detay sayfası
- Sepete ürün ekleme ve çıkarma
- Ürün arama özelliği

### Kullanılan Teknolojiler
- Flutter
- Dart
- HTTP package
- FakeStore API

### Flutter Sürümü
Flutter 3.41.4

### Kullanılan API
[https://fakestoreapi.com/products](https://fakestoreapi.com/products)

### Çalıştırma Adımları
1. Projeyi bilgisayarınıza klonlayın veya indirin.
2. Proje klasörüne gidin.
3. Terminalde aşağıdaki komutu çalıştırarak gerekli paketleri yükleyin:
   ```bash
   flutter pub get

Uygulamayı çalıştırmak için:

flutter run

Android Emulator veya fiziksel cihaz ile uygulamayı test edebilirsiniz.

Klasör Yapısı
lib/
 ├── components/
 │    └── product_card.dart
 ├── model/
 │    └── product_model.dart
 ├── services/
 │    └── api_service.dart
 ├── views/
 │    ├── home_screen.dart
 │    ├── product_detail.dart
 │    └── card_screen.dart
 └── main.dart
Not

Bu proje, Flutter ile API kullanımı, state yönetimi ve temel UI geliştirme pratiklerini göstermek amacıyla hazırlanmıştır.
