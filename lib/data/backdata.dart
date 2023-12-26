import 'dart:math';

import 'package:countries_flag/countries_flag.dart';
import 'package:nation_guide_etr/models/continent.dart';
import 'package:nation_guide_etr/models/flags.dart';
import 'package:nation_guide_etr/models/quiz.dart';

List<CFlag> FLAGS = const [
  //ASIA'S COUNTRY
  CFlag(name: 'China', flagicon: Flags.china, continent: 'Asia', code: 'CH', capital: 'Beijing'
    ,geography: 'Diverse terrain, including mountains, plateaus, deserts, and plains. Features the Himalayas in the southwest, the Gobi Desert in the north, and the Yangtze and Yellow Rivers.'
    ,history: 'One of the world\'s oldest civilizations with a rich history of dynasties, inventions (e.g., paper, gunpowder), philosophical teachings (e.g., Confucianism, Taoism), and influential Silk Road trade routes.'
  ),
  CFlag(name: 'India', flagicon: Flags.india, continent: 'Asia', code: 'IN', capital: 'New Delhi'
    ,geography: 'Varied landscape, from the Himalayas in the north to the Deccan Plateau in the south. Ganges and Yamuna rivers are significant, along with the Thar Desert and the coastline.'
    ,history: 'Home to ancient civilizations like the Indus Valley Civilization, influenced by various dynasties, and colonial rule by the British Empire until gaining independence in 1947.'
  ),
  CFlag(name: 'Japan', flagicon: Flags.japan, continent: 'Asia', code: 'JP', capital: 'Tokyo'
    ,geography: 'Comprised of over 6,800 islands. Mountainous terrain with numerous active volcanoes, including Mount Fuji. Limited arable land with densely populated urban areas.'
    ,history: 'Historically characterized by feudalism, isolationism, and the Meiji Restoration (1868), leading to rapid modernization and imperial expansion in the 20th century.'
  ),
  CFlag(name: 'South Korea', flagicon: Flags.southKorea, continent: 'Asia', code: 'KR', capital: 'Seoul'
    ,geography: ' Mountainous terrain with over 3,000 islands off its coastline. Limited arable land, densely populated urban centers, and a highly developed infrastructure.'
    ,history: 'Shaped by ancient kingdoms, influence from China, Japanese colonization (1910-1945), and post-war economic development, transforming it into a modern nation.'
  ),
  CFlag(name: 'Indonesia', flagicon: Flags.indonesia, continent: 'Asia', code: 'ID', capital: 'Jakarta'
    ,geography: 'The world\'s largest archipelago, comprising over 17,000 islands. Volcanic activity, tropical rainforests, diverse wildlife, and a vast maritime zone.'
    ,history: 'A historical hub for trade, influenced by Indian, Chinese, and Arab cultures. Later, it faced colonization by the Dutch before gaining independence.'
  ),
  CFlag(name: 'Philippines', flagicon: Flags.philippines, continent: 'Asia', code: 'PH', capital: 'Manila'
    ,geography: 'An archipelago of over 7,000 islands, mountainous with active volcanoes. Features tropical rainforests, beautiful beaches, and marine biodiversity.'
    ,history: 'Colonized by Spain and later the United States, resulting in a blend of indigenous, Spanish, and American cultures, eventually gaining independence in 1946.'
  ),
  CFlag(name: 'Bangladesh', flagicon: Flags.bangladesh, continent: 'Asia', code: 'BD', capital: 'Dhaka'
    ,geography: ' Low-lying, dominated by the Ganges-Brahmaputra Delta. Vulnerable to flooding, with rivers, wetlands, and the Sundarbans, the largest mangrove forest.'
    ,history: 'Emerged as an independent nation after a struggle for autonomy from Pakistan, followed by a war for independence in 1971.'
  ),
  CFlag(name: 'Russia', flagicon: Flags.russia, continent: 'Asia', code: 'RU', capital: 'Moscow'
    ,geography: 'The largest country, spanning Europe and Asia. Diverse landscapes include tundra in the north, taiga forests, steppes, and mountain ranges like the Urals.'
    ,history: 'Known for its expansive empire, the Russian Revolution, the Soviet era, and significant geopolitical influence over centuries.'
  ),
  CFlag(name: 'Turkey', flagicon: Flags.turkey, continent: 'Asia', code: 'TR', capital: 'Ankara'
    ,geography: 'Straddles Eastern Europe and Western Asia, known for its diverse landscapes including mountains, coastal plains, and the Anatolian Plateau.'
    ,history: 'Once the heart of powerful empires like the Byzantine and Ottoman, transitioning into a modern republic in the 20th century under Mustafa Kemal Atatürk.'
  ),
  CFlag(name: 'Saudi Arabia', flagicon: Flags.saudiArabia, continent: 'Asia', code: 'SA', capital: 'Riyadh'
    ,geography: 'Dominated by deserts, including the Rub\' al Khali (Empty Quarter). Has coastlines on the Red Sea and the Persian Gulf, along with mountain ranges.'
    ,history: 'Birthplace of Islam, unified in the early 20th century by the Al Saud family, playing a key role in the Arab and Islamic worlds.'
  ),
  //EUROPE'S COUNTRY
  CFlag(name: 'Germany', flagicon: Flags.germany, continent: 'Europe', code: 'DE', capital: 'Berlin'
    ,geography: ' Located in Central Europe, diverse landscapes include the Bavarian Alps in the south, the North German Plain, and major rivers like the Rhine and Elbe.'
    ,history: 'A history of various states and kingdoms, the Holy Roman Empire, unification under Otto von Bismarck in 1871, followed by turbulent periods including World War I, the Weimar Republic, World War II, and the subsequent division and reunification during the Cold War.'
  ),
  CFlag(name: 'France', flagicon: Flags.france, continent: 'Europe', code: 'FR', capital: 'Paris'
    ,geography: 'Diverse terrain, including the Alps and Pyrenees mountains, Atlantic and Mediterranean coastlines, fertile plains, and the central Massif region.'
    ,history: 'Shaped by ancient Celtic tribes, Roman conquest, medieval kingdoms, the Renaissance, the French Revolution, Napoleonic Wars, colonial expansion, and the establishment of the Fifth Republic.'
  ),
  CFlag(name: 'United Kingdom', flagicon: Flags.unitedKingdom, continent: 'Europe', code: 'GB', capital: 'London'
    ,geography: 'Comprises four countries: England, Scotland, Wales, and Northern Ireland. Features diverse landscapes with highlands, lowlands, and a rugged coastline.'
    ,history: 'Engulfed in a rich history including Celtic tribes, Roman occupation, the Norman Conquest, the British Empire, the Industrial Revolution, and the gradual decolonization post-World War II.'
  ),
  CFlag(name: 'Italy', flagicon: Flags.italy, continent: 'Europe', code: 'IT', capital: 'Rome'
    ,geography: 'Known for the Alps in the north, Apennine Mountains along the peninsula, and iconic features like the Po River Valley and the Mediterranean coastline.'
    ,history: 'Birthplace of the Roman Empire, a center of Renaissance art and culture, later unified in the 19th century under leaders like Garibaldi and Cavour, experiencing upheaval during World War II.'
  ),
  CFlag(name: 'Spain', flagicon: Flags.spain, continent: 'Europe', code: 'ES', capital: 'Madrid'
    ,geography: 'Varied landscapes including the Pyrenees and Sierra Nevada mountains, plateaus like the Meseta Central, and diverse coastlines along the Mediterranean and Atlantic.'
    ,history: 'Shaped by various kingdoms including Moorish rule, the Spanish Inquisition, the Reconquista, the Golden Age of exploration, and colonization, followed by civil war and a transition to democracy.'
  ),
  CFlag(name: 'Ukraine', flagicon: Flags.ukraine, continent: 'Europe', code: 'UA', capital: 'Kyiv'
    ,geography: 'Largest country in Europe by land area, featuring plains, plateaus, and the Carpathian Mountains in the west and the Crimean Peninsula in the south.'
    ,history: 'Known for ancient Slavic civilizations, later part of Kievan Rus, then dominated by various empires including the Mongols, Lithuanians, Poles, and Russians, followed by Soviet rule and independence in 1991.'
  ),
  CFlag(name: 'Poland', flagicon: Flags.poland, continent: 'Europe', code: 'PL', capital: 'Warsaw'
    ,geography: 'Diverse terrain, with the Tatra and Sudetes Mountains in the south, Masurian Lake District in the north, and flat plains in the central region.'
    ,history: 'A history of powerful medieval kingdoms, later partitioned by neighboring powers in the 18th century, ceased to exist as a state, regained independence after World War I, faced hardships during World War II, and emerged as a democratic nation.'
  ),
  CFlag(name: 'Romania', flagicon: Flags.romania, continent: 'Europe', code: 'RO', capital: 'Bucharest'
    ,geography: 'Varied landscape, including the Carpathian Mountains, Transylvanian Plateau, and the Danube River forming part of its southern border.'
    ,history: 'Influenced by ancient Dacian and Roman civilizations, later part of various empires including the Byzantine and Ottoman, gained independence in the 19th century, and experienced communist rule before transitioning to a democratic state.'
  ),
  CFlag(name: 'Netherlands', flagicon: Flags.netherlands, continent: 'Europe', code: 'NL', capital: 'Amsterdam'
    ,geography: 'Known for its flat terrain with reclaimed land (polders), featuring rivers, dykes, and coastal areas along the North Sea.'
    ,history: 'Known for its Golden Age, maritime power, colonization, and trade, gained independence from Spanish rule, experienced prosperity and cultural development, and later became a constitutional monarchy.'
  ),
  CFlag(name: 'Belgium', flagicon: Flags.belgium, continent: 'Europe', code: 'BE', capital: 'Brussels'
    ,geography: 'Small and densely populated, characterized by low-lying plains in the north, the Ardennes Forest in the south, and a coastline along the North Sea.'
    ,history: 'Historically part of larger kingdoms and empires, including the Spanish, Austrian, and Dutch, gained independence in the 19th century, and faced challenges including colonialism in Africa and internal divisions between linguistic communities.'
  ),
  //AFRICA'S COUNTRY
  CFlag(name: 'Nigeria', flagicon: Flags.nigeria, continent: 'Africa', code: 'NG', capital: 'Abuja'
    ,geography: 'Diverse landscapes, including savanna in the north, tropical rainforests in the south, Niger River delta, and plateaus. Borders the Gulf of Guinea.'
    ,history: 'Home to ancient civilizations like the Nok and Benin kingdoms, later influenced by various empires and kingdoms, including the Hausa and Yoruba, eventually colonized by the British until gaining independence in 1960.'
  ),
  CFlag(name: 'Ethiopia', flagicon: Flags.ethiopia, continent: 'Africa', code: 'ET', capital: 'Addis Ababa'
    ,geography: 'Known for the Ethiopian Highlands, Great Rift Valley, mountainous terrain, and significant plateaus. The source of the Blue Nile River.'
    ,history: 'One of the oldest countries, known for the Axumite Empire, Christianity as a state religion, and resistance against colonialism, remaining independent except for a brief Italian occupation in the 20th century.'
  ),
  CFlag(name: 'Egypt', flagicon: Flags.egypt, continent: 'Africa', code: 'EG', capital: 'Cairo'
    ,geography: 'Dominated by the Nile River and its fertile valley. Features deserts like the Sahara and the Sinai Peninsula. Has coastlines along the Mediterranean and the Red Sea.'
    ,history: 'Ancient civilization along the Nile River, pharaonic rule, the conquest by various empires, including the Persians, Greeks, Romans, and Arabs. Later influenced by Ottoman and British colonization before gaining independence in 1952.'
  ),
  CFlag(name: 'DR Congo', flagicon: Flags.democraticRepublicOfCongo, continent: 'Africa', code: 'CD', capital: 'Kinshasa'
    ,geography: 'Encompasses dense rainforests, the Congo River Basin, part of the Congo Basin, and diverse landscapes from savannas to mountains in the east.'
    ,history: 'Diverse history with powerful kingdoms like the Kongo and Luba, colonization by Belgium, gaining independence in 1960, followed by political instability, civil wars, and conflicts.'
  ),
  CFlag(name: 'Tanzania', flagicon: Flags.tanzania, continent: 'Africa', code: 'TZ', capital: 'Dodoma'
    ,geography: 'Features Mount Kilimanjaro, Africa\'s highest peak, the Serengeti plains, Lake Victoria (shared with Uganda and Kenya), and the Indian Ocean coastline.'
    ,history: 'Previously part of German East Africa and later British rule, merged Tanganyika and Zanzibar to form Tanzania in 1964. Known for its role in anti-colonial struggles.'
  ),
  CFlag(name: 'South Africa', flagicon: Flags.southAfrica, continent: 'Africa', code: 'ZA', capital: 'Pretoria'
    ,geography: 'Diverse terrain, including the Drakensberg Mountains, Karoo semi-desert, coastal plains, and plateaus. Has coastlines along the Atlantic and Indian Oceans.'
    ,history: 'Rich in history, including indigenous tribes, Dutch settlement, British colonization, the Boer Wars, apartheid, and the struggle for freedom led by figures like Nelson Mandela.'
  ),
  CFlag(name: 'Kenya', flagicon: Flags.kenya, continent: 'Africa', code: 'KE', capital: 'Nairobi'
    ,geography: 'Varied landscapes, featuring the Great Rift Valley, Mount Kenya, savannas, and coastal areas along the Indian Ocean.'
    ,history: 'Known for ancient trade routes, colonization by the British, Mau Mau rebellion, and gaining independence in 1963, followed by challenges in establishing a stable democracy.'
  ),
  CFlag(name: 'Uganda', flagicon: Flags.uganda, continent: 'Africa', code: 'UG', capital: 'Kampala'
    ,geography: 'Includes the source of the Nile River at Lake Victoria, highlands, savannas, and dense rainforests in the west.'
    ,history: 'Home to ancient kingdoms like Buganda, influenced by British colonialism, gained independence in 1962, followed by periods of political instability and conflicts.'
  ),
  CFlag(name: 'Algeria', flagicon: Flags.algeria, continent: 'Africa', code: 'DZ', capital: 'Algiers'
    ,geography: 'Predominantly desert, including the Sahara, with Atlas Mountains in the north and coastal plains along the Mediterranean Sea.'
    ,history: 'Part of various empires including Carthaginian, Roman, Arab, Ottoman, and French, underwent a war of independence in the mid-20th century to gain freedom from French colonial rule.'
  ),
  CFlag(name: 'Sudan', flagicon: Flags.sudan, continent: 'Africa', code: 'SD', capital: 'Khartoum'
    ,geography: 'Encompasses the Nile River and Nile Delta, deserts like the Nubian Desert, Red Sea coastline, and savannas in the south.'
    ,history: 'A region of ancient civilizations including the Kingdom of Kush and influence from Arab traders, colonized by the British and Egyptians, gaining independence in 1956 but facing internal conflicts and division.'
  ),
  //NORTH AMERICA'S COUNTRY
  CFlag(name: 'United States', flagicon: Flags.unitedStatesOfAmerica, continent: 'North America', code: 'US', capital: 'Washington, D.C.'
    ,geography: 'Diverse landscapes encompassing various climate zones, including the Rocky Mountains, Great Plains, Appalachian Mountains, the Mississippi River, deserts like the Mojave and Sonoran, and coastal regions on the Atlantic and Pacific Oceans.'
    ,history: 'Indigenous cultures existed for thousands of years before European exploration, followed by colonization, the American Revolutionary War leading to independence from Britain, westward expansion, the Civil War, and becoming a global superpower.'
  ),
  CFlag(name: 'Canada', flagicon: Flags.canada, continent: 'North America', code: 'CA', capital: 'Ottawa'
    ,geography: 'Known for its vastness and diverse landscapes, including the Rocky Mountains, Canadian Shield, Great Lakes, the Arctic tundra, boreal forests, and a lengthy coastline on the Atlantic, Pacific, and Arctic Oceans.'
    ,history: 'Indigenous civilizations, early explorations by Vikings and Europeans, colonization by the French and British, Confederation in 1867, expansion westward, and becoming a constitutional monarchy.'
  ),
  CFlag(name: 'Mexico', flagicon: Flags.mexico, continent: 'North America', code: 'MX', capital: 'Mexico City'
    ,geography: 'Varied terrain with mountain ranges like the Sierra Madre, high plateaus, deserts such as the Sonoran and Chihuahuan, tropical rainforests in the south, and a coastline along the Pacific and Gulf of Mexico.'
    ,history: 'Home to ancient civilizations like the Aztecs and Maya, Spanish colonization, the Mexican War of Independence, struggles against foreign intervention, and various political and social reforms.'
  ),
  CFlag(name: 'Guatemala', flagicon: Flags.guatemala, continent: 'North America', code: 'GT', capital: 'Guatemala City'
    ,geography: 'Features volcanic highlands, including the Sierra Madre, diverse ecosystems like rainforests, Lake Atitlán, and the Pacific coastline.'
    ,history: ' Once the heart of ancient Mayan civilizations, later colonized by the Spanish, gained independence in the 19th century, but faced political instability, civil wars, and conflicts.'
  ),
  CFlag(name: 'Cuba', flagicon: Flags.cuba, continent: 'North America', code: 'CU', capital: 'Havana'
    ,geography: 'Caribbean island with diverse landscapes, including plains, mountains like the Sierra Maestra, tropical forests, and a coastline boasting beautiful beaches.'
    ,history: 'Spanish colonization, involvement in the slave trade, gained independence in the late 19th century, later affected by the Cuban Revolution, leading to communist rule.'
  ),
  CFlag(name: 'Haiti', flagicon: Flags.haiti, continent: 'North America', code: 'HT', capital: 'Port-au-Prince'
    ,geography: 'Part of the island of Hispaniola, features mountainous terrains, including the Massif du Nord and Massif de la Hotte, with limited flat plains.'
    ,history: 'Site of the first successful slave rebellion in the Western Hemisphere, gained independence from France in 1804, faced political turmoil, dictatorships, and natural disasters.'
  ),
  CFlag(name: 'Dominican Republic', flagicon: Flags.dominicanRepublic, continent: 'North America', code: 'DO', capital: 'Santo Domingo'
    ,geography: 'Shares the island of Hispaniola with Haiti, characterized by mountain ranges like the Cordillera Central, fertile valleys, and coastal plains.'
    ,history: 'Shared history with Haiti until gaining independence, faced periods of political instability, foreign interventions, and a struggle for democratic governance.'
  ),
  CFlag(name: 'Honduras', flagicon: Flags.honduras, continent: 'North America', code: 'HN', capital: 'Tegucigalpa'
    ,geography: 'Diverse landscapes, encompassing the mountainous interior, Caribbean coastline including the Bay Islands, and Pacific lowlands.'
    ,history: 'Part of ancient Mayan civilizations, later colonized by the Spanish, gained independence in the 19th century, but faced political instability, dictatorships, and social unrest.'
  ),
  CFlag(name: 'El Salvador', flagicon: Flags.elSalvador, continent: 'North America', code: 'SV', capital: 'San Salvador'
    ,geography: 'Known for its volcanic landscape, including the Cordillera de Apaneca, Central American volcanic belt, and a narrow coastal plain.'
    ,history: 'Part of ancient Mesoamerican civilizations, Spanish colonization, gained independence, faced conflicts including a civil war, and struggles with poverty and social inequality.'
  ),
  CFlag(name: 'Nicaragua', flagicon: Flags.nicaragua, continent: 'North America', code: 'NI', capital: 'Managua'
    ,geography: 'Features mountain ranges like the Cordillera Isabelia, volcanic landscapes including Lake Nicaragua, and extensive Caribbean and Pacific coastlines.'
    ,history: 'Indigenous civilizations, Spanish colonization, became independent from Spain, faced political instability, civil wars, foreign interventions, and internal conflicts.'
  ),
  //SOUTH AMERICA'S COUNTRY
  CFlag(name: 'Brazil', flagicon: Flags.brazil, continent: 'South America', code: 'BR', capital: 'Brasília'
    ,geography: 'Vast and diverse, featuring the Amazon Rainforest, the Pantanal wetlands, the Brazilian Highlands, the Atlantic coastline, and the Amazon River basin.'
    ,history: 'Home to indigenous tribes, colonized by the Portuguese, which led to a history of slavery, the Portuguese royal court exile, independence in 1822, followed by various political shifts and economic developments.'
  ),
  CFlag(name: 'Argentina', flagicon: Flags.argentina, continent: 'South America', code: 'AR', capital: 'Buenos Aires'
    ,geography: 'Diverse landscapes encompassing the Andes Mountains, Pampas grasslands, Patagonia, fertile plains, and a long Atlantic coastline.'
    ,history: 'Inhabited by indigenous groups, colonized by the Spanish, gained independence in 1816, faced political unrest, military dictatorships, and periods of economic instability.'
  ),
  CFlag(name: 'Colombia', flagicon: Flags.colombia, continent: 'South America', code: 'CO', capital: 'Bogotá'
    ,geography: 'Varied terrain, including the Andes Mountains, Amazon Rainforest, Pacific and Caribbean coastlines, and diverse ecosystems.'
    ,history: 'Home to ancient civilizations, colonized by the Spanish, gained independence in 1819, faced internal conflicts, civil wars, and drug-related issues in recent history.'
  ),
  CFlag(name: 'Peru', flagicon: Flags.peru, continent: 'South America', code: 'PE', capital: 'Lima'
    ,geography: ' Known for the Andes Mountains, including Machu Picchu, the Amazon Rainforest, the coastal desert, and the source of the Amazon River.'
    ,history: 'Rich history of ancient civilizations like the Inca, colonized by the Spanish, achieved independence in 1821, faced political instability, and social challenges.'
  ),
  CFlag(name: 'Venezuela', flagicon: Flags.venezuela, continent: 'South America', code: 'VE', capital: 'Caracas'
    ,geography: 'Features the Andes Mountains, the Orinoco River basin, the Amazon Rainforest, the vast Llanos grasslands, and Caribbean coastline.'
    ,history: 'Indigenous civilizations, colonized by the Spanish, gained independence in 1821, experienced political turbulence, oil booms, and economic challenges.'
  ),
  CFlag(name: 'Chile', flagicon: Flags.chile, continent: 'South America', code: 'CL', capital: 'Santiago'
    ,geography: 'Long and narrow country, encompassing the Andes Mountains, the Atacama Desert (one of the world\'s driest), fertile valleys, and a Pacific coastline.'
    ,history: ' Inhabited by indigenous tribes, colonized by the Spanish, gained independence in 1818, faced political turmoil, military rule, and economic reforms.'
  ),
  CFlag(name: 'Ecuador', flagicon: Flags.ecuador, continent: 'South America', code: 'EC', capital: 'Quito'
    ,geography: 'Features the Andes Mountains, the Amazon Rainforest, the Galápagos Islands, and a diverse landscape ranging from highlands to coastal regions.'
    ,history: 'Home to ancient cultures, colonized by the Spanish, gained independence in 1830, faced periods of political instability, coups, and border conflicts.'
  ),
  CFlag(name: 'Bolivia', flagicon: Flags.bolivia, continent: 'South America', code: 'BO', capital: 'Sucre'
    ,geography: 'Diverse terrains include the Andes Mountains, the Altiplano plateau, the Amazon Rainforest, and Lake Titicaca, the world\'s highest navigable lake.'
    ,history: 'Part of ancient civilizations like the Tiwanaku, colonized by the Spanish, gained independence in 1825, experienced territorial losses and social conflicts.'
  ),
  CFlag(name: 'Paraguay', flagicon: Flags.paraguay, continent: 'South America', code: 'PY', capital: 'Asunción'
    ,geography: 'Primarily flat, featuring the Paraguay River, the Gran Chaco region, and a mix of savannas, wetlands, and forests.'
    ,history: 'Ancient indigenous cultures, colonized by the Spanish, gained independence in 1811, faced wars, political instability, and periods of authoritarian rule.'
  ),
  CFlag(name: 'Uruguay', flagicon: Flags.uruguay, continent: 'South America', code: 'UY', capital: 'Montevideo'
    ,geography: 'Predominantly flat with low-lying fertile plains, a coastline along the Atlantic Ocean, and the Uruguay River forming part of its borders.'
    ,history: 'Indigenous presence, contested by Spain and Portugal, later part of the United Provinces of the Rio de la Plata, gained independence in 1828, faced political struggles and military rule.'
  ),
  //AUSTRALIA'S COUNTRY
  CFlag(name: 'Australia', flagicon: Flags.australia, continent: 'Australia', code: 'AU', capital: 'Canberra'
    ,geography: 'Large and diverse, featuring deserts like the Outback, the Great Barrier Reef, mountain ranges (the Great Dividing Range), coastal areas, and vast expanses of wilderness.'
    ,history: ' Indigenous peoples have inhabited the continent for over 65,000 years. European colonization began in 1788 with British settlement. Marked by interactions, conflicts, and injustices toward Indigenous Australians. Gradual progress towards reconciliation and recognition of Indigenous culture.'
  ),
  CFlag(name: 'New Zealand', flagicon: Flags.newZealand, continent: 'Australia', code: 'NZ', capital: 'Wellington'
    ,geography: 'Comprising two main islands, North and South Islands, with diverse landscapes including mountains (Southern Alps), fjords, volcanic plateaus, and beautiful coastlines.'
    ,history: 'Inhabited by the Māori people, Europeans arrived in the late 18th century. Treaty of Waitangi signed in 1840 between the British Crown and Māori chiefs. Struggles for land rights, cultural integration, and acknowledgment of the Treaty\'s principles.'
  ),
  CFlag(name: 'Papua New Guinea', flagicon: Flags.papuaNewGuinea, continent: 'Australia', code: 'PG', capital: 'Port Moresby'
    ,geography: 'Known for its rugged terrain, including high mountains (like the Owen Stanley Range), rainforests, coastal plains, and diverse ecosystems.'
    ,history: 'Home to diverse indigenous groups, experienced European colonization in the 19th century by Germany and Britain. Gained independence in 1975, facing challenges related to governance, development, and cultural diversity.'
  ),
  CFlag(name: 'Fiji', flagicon: Flags.fiji, continent: 'Australia', code: 'FJ', capital: 'Suva'
    ,geography: 'An archipelago of islands with volcanic origin, featuring tropical rainforests, mountain ranges, beautiful beaches, and coral reefs.'
    ,history: 'Indigenous Fijian and Indo-Fijian cultures, colonized by the British in 1874. Gained independence in 1970. Experienced political coups and ethnic tensions between indigenous Fijians and Indo-Fijians.'
  ),
  CFlag(name: 'Solomon Islands', flagicon: Flags.solomonIslands, continent: 'Australia', code: 'SB', capital: 'Honiara'
    ,geography: 'A diverse archipelago with mountainous islands, rainforests, coral atolls, and a range of marine life.'
    ,history: 'Inhabited by Melanesian peoples, colonized by Britain in the late 19th century. Gained independence in 1978. Faced ethnic tensions and conflicts in the late 1990s and early 2000s.'
  ),
  CFlag(name: 'Vanuatu', flagicon: Flags.vanuatu, continent: 'Australia', code: 'VU', capital: 'Port Vila'
    ,geography: 'Consisting of volcanic islands, featuring active volcanoes, lush tropical forests, beaches, and a diverse culture.'
    ,history: 'Inhabited by Melanesian peoples, jointly administered by Britain and France in the 20th century. Gained independence in 1980. Marked by a diverse cultural heritage and a mix of languages and traditions.'
  ),
  CFlag(name: 'Samoa', flagicon: Flags.samoa, continent: 'Australia', code: 'WS', capital: 'Apia'
    ,geography: ' Comprising volcanic islands with rugged terrain, rainforests, beautiful beaches, and coral reefs.'
    ,history: 'Polynesian culture, impacted by European contact, and colonization by Germany and New Zealand. Gained independence in 1962. Divided into American Samoa and Samoa (formerly Western Samoa).'
  ),
  CFlag(name: 'Nauru', flagicon: Flags.nauru, continent: 'Australia', code: 'NR', capital: 'Yaren'
    ,geography: 'A small island nation known for phosphate mining, featuring a rocky coastline and a central plateau.'
    ,history: 'Indigenous Nauruan culture, occupied by Germany, Britain, and Australia. Gained independence in 1968, primarily reliant on phosphate mining, faced environmental challenges due to mining practices.'
  ),
  CFlag(name: 'Tonga', flagicon: Flags.tonga, continent: 'Australia', code: 'TO', capital: 'Nuku\'alofa'
    ,geography: 'An archipelago with volcanic origins, including high cliffs, coral reefs, and tropical rainforests.'
    ,history: 'Polynesian monarchy, the only Pacific nation to never be fully colonized. Maintained independence, faced constitutional changes, and evolved as a constitutional monarchy.'
  ),
  CFlag(name: 'Micronesia', flagicon: Flags.micronesia, continent: 'Australia', code: 'FM', capital: 'Palikir'
    ,geography: 'A region of thousands of islands, featuring coral atolls, volcanic islands, diverse marine life, and tropical vegetation.'
    ,history: 'A region comprising thousands of islands with diverse indigenous cultures. Part of various colonial powers, including Spain, Germany, Japan, and the United States. Gained independence as the Federated States of Micronesia in 1986.'
  ),
];

List<Continent> CONTINENTS = [
  Continent(continent: 'Africa', image: 'assets/images/africa.png'),
  Continent(continent: 'Antarctica', image: 'assets/images/antarctic.png'),
  Continent(continent: 'Asia', image: 'assets/images/asia.png'),
  Continent(continent: 'Australia', image: 'assets/images/australia.png'),
  Continent(continent: 'Europe', image: 'assets/images/europe.png'),
  Continent(continent: 'North America', image: 'assets/images/north_america.png'),
  Continent(continent: 'South America', image: 'assets/images/south_america.png'),
];

List<CountryQuiz> generateCountryQuiz() {
  List<CountryQuiz> countryQuizzes = [];
  List<String> allCapitals = FLAGS.map((f) => f.capital).toList();
  Set<String> usedCapitals = {}; // To track used capitals
  int questionCount = 0;

  while (questionCount < 10 && usedCapitals.length < allCapitals.length) {
    var flag = FLAGS[Random().nextInt(FLAGS.length)];

    String capital = flag.capital;
    if (!usedCapitals.contains(capital)) {
      usedCapitals.add(capital);

      String question = 'What is the capital of ${flag.name}?';
      String answer = flag.capital;
      List<String> options = generateOptions(answer, allCapitals);

      countryQuizzes.add(CountryQuiz(
        question: question,
        answer: answer,
        options: options,
      ));

      questionCount++;
    }
  }

  return countryQuizzes;
}



List<String> generateOptions(String correctAnswer, List<String> allAnswers) {
  List<String> options = [];

  // Shuffle the answers to ensure randomness
  allAnswers.shuffle();

  for (String answer in allAnswers) {
    if (answer != correctAnswer) {
      options.add(answer);
    }

    // Break if the options list reaches 3 (to have 4 options including the correct answer)
    if (options.length == 3) {
      break;
    }
  }

  // Insert the correct answer at a random position
  int randomIndex = Random().nextInt(4);
  options.insert(randomIndex, correctAnswer);

  return options;
}