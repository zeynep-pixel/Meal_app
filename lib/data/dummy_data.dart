import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meal.dart';

// Kategoriler
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Kahvaltı',
    color: Colors.orange,
  ),
  Category(
    id: 'c2',
    title: 'Türk Mutfağı',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Asya Mutfağı',
    color: Colors.green,
  ),
  Category(
    id: 'c4',
    title: 'Tatlılar',
    color: Colors.pink,
  ),
  Category(
    id: 'c5',
    title: 'Salatalar',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'İtalyan Mutfağı',
    color: Colors.purple,
  ),
  Category(
    id: 'c7',
    title: 'Hafif Lezzetler',
    color: Colors.lightBlue,
  ),
];

// Yemekler
const dummyMeals = [
  // Kahvaltı
  
  Meal(
    id: 'm2',
    categories: ['c1'],
    title: 'Menemen',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/free-photo/egg-dish-with-tomato-served-turkish-copper-pan_140725-5804.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 20,
    ingredients: [
      '2 Yumurtayı',
      '2 Domates',
      '1 Yeşil Biber',
      '1 Soğan',
      'Tuz, Karabiber, Pul Biber',
      'Zeytinyağı'
    ],
    steps: [
      'Soğanı ve biberi doğrayın, zeytinyağında kavurun.',
      'Domatesleri ekleyin ve pişirin.',
      'Yumurtaları kırın, baharatları ekleyin ve karıştırın.',
      'Sıcak servis edin.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: ['c1'],
    title: 'Avokado Tost',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://img.freepik.com/free-photo/avocado-open-toast-with-avocado-slices-lemon-flax-seeds-sesame-seeds-black-bread-slices-top-view_2831-797.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 15,
    ingredients: [
      '2 Dilim Tam Buğday Ekmeği',
      '1 Olgun Avokado',
      '1 Limondan Sıkılmış Suyu',
      'Tuz ve Karabiber',
      'Taze Kekik (isteğe bağlı)',
    ],
    steps: [
      'Avokadoyu soyun ve bir kaseye alın, limon suyu ve tuz ekleyip ezin.',
      'Ekmeği kızartın.',
      'Avokado karışımını ekmeğin üzerine yayın.',
      'Üzerine taze kekik serpin ve karabiber ekleyin.',
    ],
    isGlutenFree: false, 
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c1',
    ],
    title: 'Peynirli Omlet',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://img.freepik.com/free-photo/still-life-spanish-tortilla_23-2149865535.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 20,
    ingredients: [
      '3 Yumurta',
      '100g Rendelenmiş Peynir',
      '1 Soğan',
      '1 Domates',
      'Tuz ve Karabiber',
      'Biraz Tereyağı',
    ],
    steps: [
      'Yumurtaları bir kasede çırpın.',
      'Soğanı ve domatesi doğrayın.',
      'Bir tavada tereyağını ısıtın ve soğanı kavurun.',
      'Domatesleri ekleyin ve pişirin.',
      'Yumurtaları ekleyin ve peynirle karıştırın.',
      'Omleti pişirin ve sıcak servis edin.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c1',
    ],
    title: 'Chia Tohumlu Puding',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://img.freepik.com/free-photo/dessert_144627-22746.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 4 * 60, // 4 saat
    ingredients: [
      '1/4 Bardak Chia Tohumu',
      '1 Bardak Süt (veya Süt Alternatifi)',
      '2 Yemek Kaşığı Bal veya Akçaağaç Şurubu',
      'Taze Meyve (örneğin, mango, yaban mersini)',
      'Fındık veya Badem (isteğe bağlı)',
    ],
    steps: [
      'Chia tohumlarını süt ve bal ile karıştırın.',
      'Karışımı buzdolabında en az 4 saat bekletin.',
      'Taze meyve ve fındık ile süsleyin ve soğuk servis edin.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // Türk Mutfağı
  Meal(
    id: 'm4',
    categories: ['c2'],
    title: 'İskender Kebap',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl: 'https://img.freepik.com/free-photo/iskender-doner-table_140725-1375.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 60,
    ingredients: [
      '300g Kuzu Kebabı',
      '1 Pide',
      '2 Domates',
      '1 Yeşil Biber',
      'Yoğurt',
      'Tereyağı',
      'Kırmızı Biber, Tuz'
    ],
    steps: [
      'Kuzu etlerini şişe geçirin ve pişirin.',
      'Pideleri küçük parçalara kesin ve tabakta yerleştirin.',
      'Domates sosunu hazırlayın ve pidelerin üzerine dökün.',
      'Yoğurdu ve tereyağını servis edin.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
  id: 'm7',
  categories: [
    'c2',
  ],
  title: 'Mercimek Çorbası',
  affordability: Affordability.affordable,
  complexity: Complexity.simple,
  imageUrl:
      'https://img.freepik.com/free-photo/top-view-pea-lentil-soup-with-saffron-herbs-white-bowl_140725-10401.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
  duration: 30,
  ingredients: [
    '1 su bardağı kırmızı mercimek',
    '1 soğan',
    '1 havuç',
    '1 patates',
    '2 yemek kaşığı zeytinyağı',
    '1 tatlı kaşığı biber salçası',
    '1 çay kaşığı kimyon',
    'Tuz ve karabiber',
    '5 su bardağı su veya tavuk suyu',
    'Yarım çay bardağı limon suyu (isteğe bağlı)',
  ],
  steps: [
    'Mercimekleri yıkayın ve bir kenara alın.',
    'Soğanı, havucu ve patatesi küçük küpler halinde doğrayın.',
    'Bir tencerede zeytinyağını ısıtın, soğanı ekleyin ve kavurun.',
    'Havuç ve patatesi ekleyin, birkaç dakika kavurun.',
    'Salçayı ekleyin ve karıştırın.',
    'Mercimekleri ve suyu ekleyin, karıştırın ve kaynamaya bırakın.',
    'Çorba kaynadıktan sonra kısık ateşte 20 dakika pişirin.',
    'Kimyon, tuz ve karabiberle tatlandırın.',
    'Çorbayı blenderdan geçirerek pürüzsüz hale getirin. İsteğe bağlı olarak limon suyu ekleyin.',
    'Sıcak servis edin.',
  ],
  isGlutenFree: true,
  isVegan: true,
  isVegetarian: true,
  isLactoseFree: true,
),

  
  Meal(
    id: 'm3',
    categories: ['c2','c5'],
    title: 'Kısır',
    duration: 30,
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://cdn.yemek.com/mnresize/1250/833/uploads/2023/05/yogurma-kisir-sunum-yemekcom.jpg',
    ingredients: [
      '2 Su Bardağı İnce Bulgur',
      '1 Çay Bardağı Domates Salçası',
      '1 Çay Bardağı Zeytinyağı',
      '1 Çay Bardağı Limon Suyu',
      'Tuz, Karabiber, Pul Biber',
      'Yeşillikler (Marul, Maydanoz)'
    ],
    steps: [
      'Bulguru geniş bir kaseye alın ve üzerine sıcak su ekleyip demlenmeye bırakın.',
      'Salça, zeytinyağı, limon suyu ve baharatları ekleyip karıştırın.',
      'Doğranmış yeşillikleri de ekleyip karıştırın.',
      'Soğuk servis edin.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  
  Meal(
  id: 'm6',
  categories: [
    'c2',
  ],
  duration: 2*60,
  title: 'Pideli Köfte',
  affordability: Affordability.affordable,
  complexity: Complexity.medium,
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KgSmF-3aY_30egS20PYhUlMmdXrVd9BHOA&s',
        ingredients: [
    '500g köfte harcı',
    '4 adet pide ekmeği',
    '1 soğan',
    '1 kırmızı biber',
    '1 yeşil biber',
    '2 yemek kaşığı domates salçası',
    '1 su bardağı su',
    'Tuz ve karabiber',
    'Yarım çay bardağı sıvı yağ',
    'Yarım demet maydanoz (isteğe bağlı)',
  ],
  steps: [
    'Köfte harcını yoğurun ve şekil verin.',
    'Pideleri küçük parçalara kesin ve yağlı kağıt serili fırın tepsisine yerleştirin.',
    'Köfteleri pidelerin üzerine yerleştirin.',
    'Bir tavada sıvı yağı ısıtın, doğranmış soğanı ve biberleri ekleyin ve kavurun.',
    'Salçayı ekleyin ve bir süre karıştırın.',
    'Su ekleyip kaynatın ve köftelerin üzerine dökün.',
    'Fırında 20-25 dakika pişirin.',
    'Sıcak servis edin, isterseniz üzerine maydanoz serpin.',
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
),



  // Asya Mutfağı
  Meal(
    id: 'm5',
    categories: ['c3'],
    title: 'Sushi',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'https://img.freepik.com/premium-photo/tray-sushi-with-sushi-sushi-it_1287624-26472.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 60,
    ingredients: [
      '2 Su Bardağı Sushi Pirinci',
      '2 1/2 Su Bardağı Su',
      '1/4 Su Bardağı Pirinç Sirkesi',
      'Nori Yaprağı',
      'Taze Balık veya Sebze'
    ],
    steps: [
      'Pirinci yıkayıp suyla birlikte pişirin.',
      'Pişen pirinç üzerine pirinç sirkesi ekleyip karıştırın.',
      'Nori yaprağının üzerine pirinci yayın, üzerine balık veya sebzeyi ekleyin.',
      'Rulo yapıp dilimleyin.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c3'],
    title: 'Pad Thai',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'https://img.freepik.com/free-photo/pad-thai_74190-2886.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 45,
    ingredients: [
      '200g Pirinç Noodle',
      '100g Tavuk Göğsü',
      '2 Yumurtayı',
      '1 Çay Kaşığı Tuz',
      '1 Çay Kaşığı Şeker',
      'Küçük Bir Demet Taze Soğan',
      'Yasemin Sosu'
    ],
    steps: [
      'Noodleları haşlayın.',
      'Tavuk göğsünü doğrayıp tavada pişirin.',
      'Yumurtaları ekleyip karıştırın.',
      'Noodleları ekleyin ve sos ile tatlandırın.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  // Tatlılar
  Meal(
    id: 'm7',
    categories: ['c4'],
    title: 'Baklava',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl: 'https://img.freepik.com/free-photo/side-view-traditional-turkish-baklava-with-ice-cream-tray_141793-14264.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 90,
    ingredients: [
      'Yufka',
      'Ceviz içi',
      'Şeker',
      'Su',
      'Tereyağı'
    ],
    steps: [
      'Yufkaları kat kat açın ve her katı tereyağı ile yağlayın.',
      'Ceviz içini serpip diğer yufkaları üzerine koyun.',
      'Baklavayı dilimleyip fırına verin.',
      'Şeker ve su ile hazırladığınız şerbeti sıcak baklavanın üzerine dökün.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c4'],
    title: 'Çikolatalı Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/free-photo/top-view-delicious-chocolate-mousse-ready-be-served_23-2148622327.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 30,
    ingredients: [
      '200g Bitter Çikolata',
      '3 Yumurtayı',
      '200ml Krema',
      'Şeker'
    ],
    steps: [
      'Çikolatayı benmari usulü eritin.',
      'Yumurtaları şekerle çırpın.',
      'Kremayı çırpın ve çikolata ile karıştırın.',
      'Buzdolabında 1 saat bekletin.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // Salatalar
  Meal(
    id: 'm9',
    categories: ['c5'],
    title: 'Sezar Salata',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/premium-photo/crispy-caesar-salad-with-parmesan_1079150-60278.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 15,
    ingredients: [
      'Marul',
      'Parmesan Peyniri',
      'Kızarmış Ekmek Küpleri',
      'Caesar Sosu'
    ],
    steps: [
      'Marulu doğrayıp bir kaseye alın.',
      'Üzerine parmesan peyniri, ekmek küpleri ve Caesar sosunu ekleyin.',
      'Karıştırıp servis edin.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c5'],
    title: 'Nohutlu Salata',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/premium-photo/vibrant-chickpea-salad-with-fresh-vegetables-herbs-ideal-healthy-eating_658005-12187.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 20,
    ingredients: [
      '1 Konserve Nohut',
      '1 Salatalık',
      '2 Domates',
      '1 Soğan',
      'Taze Nane',
      'Limon Suyu',
      'Zeytinyağı'
    ],
    steps: [
      'Nohutları süzün ve bir kaba alın.',
      'Doğranmış sebzeleri ekleyin.',
      'Nane, limon suyu ve zeytinyağını ekleyin.',
      'Karıştırıp soğuk servis edin.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  // İtalyan Mutfağı
  Meal(
    id: 'm11',
    categories: ['c6'],
    title: 'Margherita Pizza',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/premium-photo/pizza-with-basil-it-sits-table_1293074-132190.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 30,
    ingredients: [
      'Pizza Hamuru',
      'Domates Sosu',
      'Mozzarella Peyniri',
      'Taze Fesleğen'
    ],
    steps: [
      'Pizza hamurunu açın ve üzerine domates sosunu sürün.',
      'Mozzarella peyniri ve taze fesleğen ekleyin.',
      'Fırında 220°C’de 15-20 dakika pişirin.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: ['c6'],
    title: 'Carbonara Makarnası',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/free-photo/pasta-dish-restaurant-table_7939-2471.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 25,
    ingredients: [
      '200g Spagetti',
      '100g Pancetta',
      '2 Yumurta Sarısı',
      '50g Parmesan Peyniri',
      'Tuz, Karabiber'
    ],
    steps: [
      'Makarnayı haşlayın.',
      'Pancettayı tavada pişirin.',
      'Yumurta sarılarını ve parmesan peynirini karıştırın.',
      'Haşlanmış makarnayı pancetta ve sos ile karıştırın.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  // Hafif Lezzetler
  Meal(
    id: 'm13',
    categories: ['c7'],
    title: 'Yoğurtlu Meyve Salatası',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/free-photo/bowl-oat-granola-with-yogurt-fresh-mulberry-strawberries-kiwi-mint-nuts-black-rock-board-healthy-breakfast-copy-space-healthy-breakfast-menu-concept_1150-45641.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 10,
    ingredients: [
      'Yoğurt',
      'Çilek',
      'Muz',
      'Kivi',
      'Bal'
    ],
    steps: [
      'Meyveleri doğrayın ve bir kaba alın.',
      'Üzerine yoğurt ve bal ekleyin.',
      'Karıştırıp soğuk servis edin.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: ['c7'],
    title: 'Zeytinyağlı Enginar',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://img.freepik.com/free-photo/top-view-artichoke-plate-with-cloth_23-2148381236.jpg?ga=GA1.1.238261376.1719833624&semt=ais_hybrid',
    duration: 40,
    ingredients: [
      '4 Enginar',
      '1 Limon',
      '1/2 Su Bardağı Zeytinyağı',
      'Tuz, Karabiber',
      'Maydanoz'
    ],
    steps: [
      'Enginarlı temizleyin ve limon suyu ile ovalayın.',
      'Zeytinyağında enginarları pişirin.',
      'Baharatları ekleyip soğutun.',
      'Maydanoz ile süsleyip servis edin.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
