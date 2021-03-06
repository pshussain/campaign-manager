class AdxCategory < ActiveRecord::Base

	#  reference https://developers.google.com/ad-exchange/rtb/downloads

    attr_accessor :value,:name

    def self.all
        [
			{ value:0, name: "Ad has no sensitive categories"},
			{ value:3, name: "Politics"},
			{ value:4, name: "Dating"},
			{ value:5, name: "Religion"},
			{ value:7, name: "Video Games (Casual & Online)"},
			{ value:8, name: "Ringtones & Downloadables"},
			{ value:10, name: "Get Rich Quick"},
			{ value:18, name: "Weight Loss"},
			{ value:19, name: "Cosmetic Procedures & Body Modification"},
			{ value:23, name: "Drugs & Supplements"},
			{ value:24, name: "Sexual & Reproductive Health"},
			{ value:27, name: "Consumer Loans"},
			{ value:28, name: "Free Gifts, Quizzes, & Surveys"},
			{ value:29, name: "Misleading Claims"},
			{ value:30, name: "Black Magic, Astrology, & Esoteric"},
			{ value:31, name: "References to Sex & Sexuality"},
			{ value:33, name: "Alcohol"},
			{ value:10001, name: "Vehicles"},
			{ value:10002, name: "Family & Community"},
			{ value:10003, name: "Real Estate"},
			{ value:10004, name: "Business & Industrial"},
			{ value:10005, name: "Beauty & Personal Care"},
			{ value:10006, name: "Occasions & Gifts"},
			{ value:10007, name: "Internet & Telecom"},
			{ value:10009, name: "Home & Garden"},
			{ value:10010, name: "Food & Groceries"},
			{ value:10011, name: "Health"},
			{ value:10012, name: "Finance"},
			{ value:10013, name: "Arts & Entertainment"},
			{ value:10014, name: "Sports & Fitness"},
			{ value:10015, name: "Hobbies & Leisure"},
			{ value:10016, name: "Jobs & Education"},
			{ value:10017, name: "Travel & Tourism"},
			{ value:10018, name: "Law & Government"},
			{ value:10019, name: "Computers & Consumer Electronics"},
			{ value:10020, name: "Dining & Nightlife"},
			{ value:10021, name: "Apparel"},
			{ value:10024, name: "Motor Vehicles"},
			{ value:10026, name: "Vehicle Parts & Accessories"},
			{ value:10027, name: "Boats & Watercraft"},
			{ value:10030, name: "Baby, Parenting & Family"},
			{ value:10031, name: "Romance & Relationships"},
			{ value:10032, name: "Rental Listings"},
			{ value:10035, name: "Relocation & Household Moving"},
			{ value:10039, name: "Property Development"},
			{ value:10040, name: "Real Estate Agents & Brokerages"},
			{ value:10042, name: "Real Estate Listings"},
			{ value:10047, name: "Skin Care"},
			{ value:10048, name: "Tanning & Sun Care"},
			{ value:10049, name: "Spa & Medical Spa"},
			{ value:10050, name: "Anti-Aging"},
			{ value:10052, name: "Baby Care & Hygiene"},
			{ value:10054, name: "Make-Up & Cosmetics"},
			{ value:10055, name: "Hair Care"},
			{ value:10057, name: "Perfumes & Fragrances"},
			{ value:10058, name: "Shaving & Grooming"},
			{ value:10059, name: "Oral Care"},
			{ value:10060, name: "Hygiene & Toiletries"},
			{ value:10061, name: "Face Care"},
			{ value:10080, name: "Tobacco"},
			{ value:10081, name: "Household Supplies"},
			{ value:10082, name: "Food"},
			{ value:10083, name: "Beverages"},
			{ value:10084, name: "Online Grocery Shopping & Grocery Delivery"},
			{ value:10085, name: "Health Conditions & Concerns"},
			{ value:10086, name: "Nutrition & Dieting"},
			{ value:10087, name: "Medical Devices, Equipment & Supplies"},
			{ value:10088, name: "Biotech & Pharmaceutical"},
			{ value:10089, name: "Pharmacy"},
			{ value:10090, name: "Professional Medical Resources"},
			{ value:10091, name: "Health Care Services"},
			{ value:10092, name: "Financial Planning & Management"},
			{ value:10093, name: "Banking"},
			{ value:10094, name: "Money Transfer & Wire Services"},
			{ value:10095, name: "Investing"},
			{ value:10096, name: "Business Finance"},
			{ value:10097, name: "Credit & Lending"},
			{ value:10098, name: "Business News & Media"},
			{ value:10099, name: "Grants, Scholarships & Financial Aid"},
			{ value:10102, name: "Insurance"},
			{ value:10103, name: "TV & Video"},
			{ value:10105, name: "Entertainment Industry"},
			{ value:10106, name: "Humor & Jokes"},
			{ value:10108, name: "News, Media & Publications"},
			{ value:10109, name: "Music & Audio"},
			{ value:10111, name: "Events, Shows & Cultural Attractions"},
			{ value:10112, name: "Books & Literature"},
			{ value:10113, name: "Camping & Outdoor Recreation"},
			{ value:10115, name: "Sports & Fitness Apparel"},
			{ value:10116, name: "Sports Fan Gear & Apparel"},
			{ value:10117, name: "Boating & Water Recreation"},
			{ value:10118, name: "Sports Nutrition Supplements"},
			{ value:10120, name: "Sports Equipment Rental Services"},
			{ value:10121, name: "Sporting Goods"},
			{ value:10123, name: "Fitness"},
			{ value:10125, name: "Toys & Games"},
			{ value:10127, name: "Occult & Paranormal"},
			{ value:10128, name: "Cooking"},
			{ value:10130, name: "Pets & Animals"},
			{ value:10131, name: "Arts & Crafts"},
			{ value:10132, name: "Photo & Video"},
			{ value:10133, name: "Ancestry & Genealogy"},
			{ value:10135, name: "Antiques & Collectibles"},
			{ value:10137, name: "Gambling"},
			{ value:10141, name: "Education & Training"},
			{ value:10142, name: "Accommodations"},
			{ value:10144, name: "Air Travel"},
			{ value:10145, name: "Tourist Attractions & Destinations"},
			{ value:10146, name: "Transportation & Excursions"},
			{ value:10147, name: "Last Minute Travel"},
			{ value:10150, name: "Specialty Travel"},
			{ value:10151, name: "Travel Booking Services"},
			{ value:10153, name: "Cruises & Cruise Services"},
			{ value:10154, name: "Vacation Packages"},
			{ value:10159, name: "Military"},
			{ value:10160, name: "Public Services"},
			{ value:10163, name: "Legal"},
			{ value:10167, name: "Consumer Electronics"},
			{ value:10168, name: "Computers"},
			{ value:10169, name: "Restaurants"},
			{ value:10171, name: "Jewelry"},
			{ value:10176, name: "Clothing"},
			{ value:10177, name: "Footwear"},
			{ value:10182, name: "Motorcycles"},
			{ value:10183, name: "Campers & RVs"},
			{ value:10185, name: "Cars & Trucks"},
			{ value:10191, name: "Driving Instruction & Driver Education"},
			{ value:10193, name: "Vehicle Repair & Maintenance"},
			{ value:10206, name: "Vehicle Tires & Tire Parts"},
			{ value:10209, name: "Car Parts & Accessories"},
			{ value:10224, name: "Alcohol & Substance Abuse"},
			{ value:10227, name: "Social Issues & Advocacy"},
			{ value:10231, name: "Faith & Belief"},
			{ value:10235, name: "Baby"},
			{ value:10236, name: "Parenting & Family"},
			{ value:10238, name: "Divorce & Separation"},
			{ value:10273, name: "Design & Engineering"},
			{ value:10282, name: "Building Construction & Maintenance"},
			{ value:10294, name: "Scientific Equipment & Services"},
			{ value:10295, name: "Energy Industry"},
			{ value:10296, name: "Business Management Software"},
			{ value:10299, name: "Security Equipment & Services"},
			{ value:10300, name: "Office"},
			{ value:10301, name: "Food Service Industry"},
			{ value:10302, name: "Industrial Electronics"},
			{ value:10306, name: "Plant & Facility"},
			{ value:10307, name: "Commercial & Industrial Printing"},
			{ value:10338, name: "Shampoos & Conditioners"},
			{ value:10355, name: "Antiperspirants, Deodorants & Body Spray"},
			{ value:10356, name: "Feminine Hygiene Products"},
			{ value:10362, name: "Flower Arrangements"},
			{ value:10364, name: "Cards & Greetings"},
			{ value:10365, name: "Gifts"},
			{ value:10366, name: "Funerals & Bereavement"},
			{ value:10368, name: "Parties & Party Supplies"},
			{ value:10369, name: "Weddings"},
			{ value:10399, name: "Residential Cleaning"},
			{ value:10404, name: "Home Improvement & Maintenance"},
			{ value:10405, name: "Home Decor & Interior Decorating"},
			{ value:10406, name: "Yard, Garden & Patio"},
			{ value:10407, name: "Water Filters"},
			{ value:10410, name: "Kitchen & Dining"},
			{ value:10411, name: "Home Safety & Security"},
			{ value:10412, name: "Home Appliances"},
			{ value:10413, name: "Home Furniture"},
			{ value:10418, name: "Home Heating & Cooling"},
			{ value:10419, name: "Lights & Lighting"},
			{ value:10421, name: "Paper Towels & Household Paper Products"},
			{ value:10422, name: "Food Wraps & Food Storage"},
			{ value:10423, name: "Household Cleaning Products"},
			{ value:10431, name: "Sauces"},
			{ value:10432, name: "Baked Goods"},
			{ value:10434, name: "Baking Ingredients"},
			{ value:10435, name: "Snack Foods"},
			{ value:10436, name: "Desserts"},
			{ value:10437, name: "Meat & Poultry"},
			{ value:10438, name: "Candy, Gum & Mints"},
			{ value:10439, name: "Breakfast Foods"},
			{ value:10440, name: "Dairy & Non-Dairy Alternatives"},
			{ value:10444, name: "Non-Alcoholic Beverages"},
			{ value:10445, name: "Alcoholic Beverages"},
			{ value:10446, name: "Allergy & Sinus"},
			{ value:10449, name: "Eating Disorders"},
			{ value:10452, name: "Cold Sores"},
			{ value:10453, name: "Smoking & Smoking Cessation"},
			{ value:10454, name: "Warts"},
			{ value:10456, name: "Digestive Health & Disorders"},
			{ value:10460, name: "Vision"},
			{ value:10464, name: "Cancer & Cancer Treatment"},
			{ value:10465, name: "Geriatrics & Aging"},
			{ value:10466, name: "Hemorrhoids"},
			{ value:10467, name: "Hepatitis"},
			{ value:10468, name: "Infectious Diseases & Viruses"},
			{ value:10469, name: "Learning & Developmental Disabilities"},
			{ value:10473, name: "Skin Conditions & Skin Health"},
			{ value:10474, name: "Neurological Conditions"},
			{ value:10475, name: "Heart Health"},
			{ value:10476, name: "AIDS & HIV"},
			{ value:10479, name: "Arthritis"},
			{ value:10480, name: "Men's Health"},
			{ value:10481, name: "Hearing Loss"},
			{ value:10483, name: "Blood Sugar & Diabetes"},
			{ value:10486, name: "Headache & Pain Management"},
			{ value:10487, name: "Dental Health"},
			{ value:10488, name: "Mental Health"},
			{ value:10491, name: "Diets & Diet Programs"},
			{ value:10493, name: "First Aid Supplies"},
			{ value:10494, name: "Mobility Equipment & Accessories"},
			{ value:10504, name: "Medical Research"},
			{ value:10505, name: "Professional Health Care Education"},
			{ value:10507, name: "Alternative & Natural Medicine"},
			{ value:10508, name: "Plastic Surgery"},
			{ value:10509, name: "Laboratory Testing & Medical Diagnostic Services"},
			{ value:10511, name: "Physical Rehabilitation"},
			{ value:10515, name: "Vision Services"},
			{ value:10518, name: "Mental Health Services"},
			{ value:10519, name: "Orthopedics & Sports Medicine"},
			{ value:10520, name: "Hospitals & Health Clinics"},
			{ value:10531, name: "Real Estate Investments"},
			{ value:10536, name: "Student Loans"},
			{ value:10539, name: "Life Insurance"},
			{ value:10544, name: "Health Insurance"},
			{ value:10547, name: "Property Insurance"},
			{ value:10550, name: "Vehicle Insurance"},
			{ value:10557, name: "TV Shows & Programs"},
			{ value:10566, name: "TV Broadcasting"},
			{ value:10578, name: "Travel Media & Publications"},
			{ value:10584, name: "Celebrities & Entertainment News"},
			{ value:10598, name: "Fantasy Sports"},
			{ value:10603, name: "Ticket Sales & Exchanges"},
			{ value:10609, name: "Book Retailers"},
			{ value:10611, name: "E-Books"},
			{ value:10615, name: "Climbing"},
			{ value:10616, name: "Hiking"},
			{ value:10619, name: "Athletic Shoes"},
			{ value:10628, name: "Fishing"},
			{ value:10645, name: "Bicycles & Accessories"},
			{ value:10648, name: "Airsoft Equipment"},
			{ value:10653, name: "Golf Equipment"},
			{ value:10666, name: "Fitness Classes & Instruction"},
			{ value:10668, name: "Gyms & Gym Memberships"},
			{ value:10669, name: "Personal Training"},
			{ value:10671, name: "Toys"},
			{ value:10672, name: "Games"},
			{ value:10679, name: "Recipes"},
			{ value:10683, name: "Pet Food & Supplies"},
			{ value:10691, name: "Digital Cameras"},
			{ value:10692, name: "Video Cameras & Camcorders"},
			{ value:10693, name: "Photo & Video Accessories"},
			{ value:10746, name: "Job Listings"},
			{ value:10752, name: "Online Education & Degree Programs"},
			{ value:10754, name: "Standardized & Admissions Tests"},
			{ value:10756, name: "Reference Materials & Resources"},
			{ value:10757, name: "Language Education"},
			{ value:10758, name: "Training & Certification"},
			{ value:10759, name: "Vocational Training & Trade Schools"},
			{ value:10761, name: "Tutoring Services"},
			{ value:10763, name: "Colleges, Universities & Post-Secondary Education"},
			{ value:10769, name: "Hotels, Motels & Resorts"},
			{ value:10770, name: "Vacation Rentals"},
			{ value:10776, name: "Luggage"},
			{ value:10778, name: "Airline Tickets, Fares & Flights"},
			{ value:10782, name: "Car Rental Services"},
			{ value:10783, name: "Bus & Rail Services"},
			{ value:10784, name: "Taxi Services"},
			{ value:10829, name: "Public Utilities"},
			{ value:10857, name: "Immigration Law"},
			{ value:10872, name: "Consumer Electronic Accessories"},
			{ value:10873, name: "Home Audio & Video"},
			{ value:10876, name: "Wireless Devices"},
			{ value:10877, name: "Portable Media Devices"},
			{ value:10878, name: "Telephony"},
			{ value:10880, name: "GPS & Navigation"},
			{ value:10881, name: "Car Audio & Video"},
			{ value:10883, name: "Computer Hardware"},
			{ value:10885, name: "Software"},
			{ value:10886, name: "Computer Accessories"},
			{ value:10889, name: "Cuisines"},
			{ value:10890, name: "Dine-In Restaurants"},
			{ value:10891, name: "Fast Food Restaurants"},
			{ value:10899, name: "Watches & Watch Accessories"},
			{ value:10913, name: "Underwear"},
			{ value:10920, name: "Formal Wear"},
			{ value:10923, name: "Plus Size Clothing"},
			{ value:10925, name: "Sleepwear"},
			{ value:10963, name: "Hybrid & Alternative Vehicles"},
			{ value:11005, name: "Work & Labor Issues"},
			{ value:11006, name: "Reproductive Rights"},
			{ value:11008, name: "Environmental Activism"},
			{ value:11009, name: "Animal Rights Activism"},
			{ value:11020, name: "Baby Diapering & Toilet Training"},
			{ value:11022, name: "Baby Feeding"},
			{ value:11028, name: "Maternity & New Parent"},
			{ value:11093, name: "Accounting & Auditing"},
			{ value:11099, name: "Office & Facilities Management"},
			{ value:11141, name: "Commercial & General Contracting"},
			{ value:11270, name: "Project Management Software"},
			{ value:11284, name: "HVAC & Climate Control"},
			{ value:11287, name: "Hardware Tools & Accessories"},
			{ value:11321, name: "Security Weapons"},
			{ value:11339, name: "Office Appliances"},
			{ value:11368, name: "Graphics & Multimedia Software"},
			{ value:11412, name: "Hand & Body Soaps & Cleansers"},
			{ value:11491, name: "Internet Service Plans"},
			{ value:11493, name: "Web Design & Development"},
			{ value:11496, name: "Social Networks & Online Communities"},
			{ value:11504, name: "Web Hosting"},
			{ value:11511, name: "Mobile Phone Plans"},
			{ value:11527, name: "Home Appliance Service & Repair"},
			{ value:11541, name: "Outdoor Cooking Equipment & Accessories"},
			{ value:11567, name: "Major Kitchen Appliances"},
			{ value:11589, name: "Bedding & Linens"},
			{ value:11597, name: "Dish Detergents"},
			{ value:11598, name: "Air Fresheners & Deodorizers"},
			{ value:11604, name: "Frozen Foods"},
			{ value:11629, name: "Breakfast Cereals"},
			{ value:11642, name: "Soft Drinks"},
			{ value:11643, name: "Juice"},
			{ value:11644, name: "Coffee"},
			{ value:11645, name: "Tea"},
			{ value:11647, name: "Energy Drinks"},
			{ value:11648, name: "Sports Drinks"},
			{ value:11649, name: "Wine"},
			{ value:11650, name: "Liquor"},
			{ value:11651, name: "Beer"},
			{ value:11669, name: "Weight Loss Products"},
			{ value:11695, name: "Alzheimer's Disease"},
			{ value:11710, name: "Acne"},
			{ value:11719, name: "High Blood Pressure"},
			{ value:11721, name: "High Cholesterol"},
			{ value:11772, name: "Vitamins & Supplements"},
			{ value:11773, name: "Drugs & Medications"},
			{ value:11780, name: "Chiropractors & Chiropractic"},
			{ value:11783, name: "Cosmetic & Aesthetic Plastic Surgery"},
			{ value:11793, name: "Wellness Therapy & Massage"},
			{ value:11813, name: "Private Banking"},
			{ value:11814, name: "Online Banking"},
			{ value:11816, name: "Debit & Check Cards"},
			{ value:11818, name: "Fixed Deposit Accounts & Certificates"},
			{ value:11819, name: "Brokerages & Day Trading"},
			{ value:11820, name: "Investor Relations & Venture Capital"},
			{ value:11824, name: "Retirement Investments"},
			{ value:11825, name: "Spread Betting"},
			{ value:11827, name: "Securities"},
			{ value:11828, name: "Mutual Funds"},
			{ value:11831, name: "Currencies & Foreign Exchange"},
			{ value:11838, name: "Credit Reports & Reporting Services"},
			{ value:11839, name: "Debt Management & Consolidation"},
			{ value:11840, name: "Unsecured Credit & Lending"},
			{ value:11841, name: "Loans"},
			{ value:11842, name: "Credit Cards"},
			{ value:11870, name: "Dining & Nightlife Reviews, Guides & Listings"},
			{ value:11883, name: "Sports Event Tickets & Ticketing Services"},
			{ value:11901, name: "Sports Team Jerseys"},
			{ value:11917, name: "Swimwear"},
			{ value:11929, name: "Building Toys"},
			{ value:11937, name: "Children's Dolls, Dress-Up Toys & Costumes"},
			{ value:11939, name: "Radio Controlled Toys & Accessories"},
			{ value:11941, name: "Action Figures"},
			{ value:11942, name: "Online Games & Puzzles"},
			{ value:11950, name: "Video Games, Consoles & Accessories"},
			{ value:11963, name: "Pet Food & Treats"},
			{ value:11964, name: "Pet Medications"},
			{ value:11965, name: "Flea & Tick Control Products"},
			{ value:11980, name: "Pet Breeding"},
			{ value:11987, name: "Fiber Craft"},
			{ value:12066, name: "Resorts"},
			{ value:12067, name: "Hotels"},
			{ value:12083, name: "Bus Services"},
			{ value:12084, name: "Rail Services"},
			{ value:12110, name: "Renewable & Alternative Energy"},
			{ value:12113, name: "Oil & Gas"},
			{ value:12138, name: "Speakers"},
			{ value:12143, name: "Televisions"},
			{ value:12161, name: "Mobile Phones"},
			{ value:12184, name: "Computer Networking Devices"},
			{ value:12187, name: "Laptop Computers"},
			{ value:12204, name: "Internet Software & Web Goodies"},
			{ value:12209, name: "Business & Productivity Software"},
			{ value:12228, name: "Pizzerias & Pizza Delivery"},
			{ value:12240, name: "Shirts, Tops & Blouses"},
			{ value:12261, name: "Sunglasses"},
			{ value:12263, name: "Handbags & Purses"},
			{ value:12387, name: "Tax Preparation & Planning"},
			{ value:12494, name: "Medical Diagnostic Equipment & Monitoring Devices"},
			{ value:12590, name: "Power Tools"},
			{ value:12766, name: "Cable TV"},
			{ value:12767, name: "Satellite TV"},
			{ value:12777, name: "Garden Structures"},
			{ value:12795, name: "Washers & Dryers"},
			{ value:12797, name: "Vacuum Cleaners & Accessories"},
			{ value:12828, name: "Laundry Detergents"},
			{ value:12849, name: "Air Cleaners & Filters"},
			{ value:12864, name: "Weight Loss Drugs & Medications"},
			{ value:12865, name: "Weight Loss Supplements"},
			{ value:12866, name: "Eyeglass Frames"},
			{ value:12867, name: "Contact Lenses & Accessories"},
			{ value:12926, name: "Multi-Vitamins"},
			{ value:12950, name: "401(K)s"},
			{ value:12952, name: "IRAs"},
			{ value:12956, name: "Commercial Lending"},
			{ value:12957, name: "Auto Financing"},
			{ value:12960, name: "Home Loans & Mortgages"},
			{ value:12961, name: "Personal Lending & Borrowing"},
			{ value:12997, name: "Massive Multiplayer Online Games"},
			{ value:13092, name: "Network Security Software"},
			{ value:13094, name: "Email & Messaging"},
			{ value:13116, name: "Jerseys & Knit Shirts"},
			{ value:13250, name: "Pest & Weed Control"},
			{ value:13260, name: "Mattresses"},
			{ value:13283, name: "Commercial Mortgages"},
			{ value:13284, name: "Auto Leasing"},
			{ value:13286, name: "Title Loans"},
			{ value:13289, name: "Interest Only Mortgages"},
			{ value:13291, name: "Government Mortgages"},
			{ value:13292, name: "Buy-To-Let Mortgages"},
			{ value:13293, name: "Fixed Rate Mortgages"},
			{ value:13296, name: "Home Equity Loans & Lines of Credit"},
			{ value:13299, name: "Home Refinancing Loans"},
			{ value:13300, name: "Payday & Emergency Loans"},
			{ value:13301, name: "Personal Loans & Lines of Credit"},
			{ value:13314, name: "Anti-Virus Software"},
			{ value:13369, name: "Gene Research"},
			{ value:13374, name: "Trees, Plants & Shrubs"},
			{ value:13376, name: "Video Game Consoles"},
			{ value:13377, name: "Computer & Video Games"},
			{ value:13381, name: "Mobile Phones & Accessories"},
			{ value:13388, name: "Visual Art & Design"},
			{ value:13405, name: "Prizes & Competitions"},
			{ value:13417, name: "Movies & Films"},
			{ value:13418, name: "Internet"},
			{ value:13419, name: "Phone Plans"},
			{ value:13422, name: "Body Art"},
			{ value:13423, name: "Guns & Firearms"},
			{ value:13425, name: "Fun & Trivia"},
			{ value:13426, name: "Weather"},
			{ value:13428, name: "Multi-tools & Pocket Knives"},
			{ value:13432, name: "Translation"},
			{ value:13439, name: "Nightclubs, Bars & Music Clubs"},
			{ value:13459, name: "Stocks"},
			{ value:13464, name: "Industrial Goods & Manufacturing"},
			{ value:13469, name: "Astrology & Horoscopes"},
			{ value:13470, name: "Psychics & Fortune Telling"},
			{ value:13472, name: "Christianity"},
			{ value:13473, name: "Islam"},
			{ value:13474, name: "Buddhism"},
			{ value:13475, name: "Hinduism"},
			{ value:13476, name: "Judaism"},
			{ value:13479, name: "Scientology"},
			{ value:13489, name: "Fun Tests & Silly Surveys"},
			{ value:13491, name: "Chemical Industry"},
			{ value:13493, name: "Special Occasions"},
			{ value:13496, name: "Theme Parks"},
			{ value:13509, name: "Holidays & Seasonal Events"},
			{ value:13513, name: "Graduate Programs"},
			{ value:13525, name: "Horror Films"},
			{ value:13530, name: "Arts & Entertainment Awards"},
			{ value:13536, name: "Film & TV Industry"},
			{ value:13566, name: "Offbeat"},
			{ value:13567, name: "Edgy & Bizarre"},
			{ value:13589, name: "Shooter Games"},
			{ value:13596, name: "Photographic & Digital Arts"},
			{ value:13605, name: "Sports"},
			{ value:13606, name: "American Football"},
			{ value:13608, name: "Soccer"},
			{ value:13609, name: "Basketball"},
			{ value:13610, name: "Baseball"},
			{ value:13611, name: "Hockey"},
			{ value:13612, name: "Hunting & Shooting"},
			{ value:13620, name: "Winter Sports"},
			{ value:13633, name: "Combat Sports"},
			{ value:13647, name: "Newspapers"},
			{ value:13655, name: "Vehicle Dealers"},
			{ value:13656, name: "Car Dealers"},
			{ value:13657, name: "Boat & Yacht Sales & Brokers"},
			{ value:13658, name: "Gardening"},
			{ value:13680, name: "Sweepstakes, Product Promotions & Giveaways"},
			{ value:13686, name: "Attorneys & Law Firms"},
			{ value:13710, name: "People Search"},
			{ value:13714, name: "Used Motor Vehicles"},
			{ value:13716, name: "Public Records"},
			{ value:13722, name: "Cleansing & Detoxification"},
			{ value:13725, name: "Web Portals"},
			{ value:13740, name: "Halloween & October 31st"},
			{ value:13760, name: "Cartoons"},
			{ value:13768, name: "Domain Names & Domain Name Registration"},
			{ value:13778, name: "Men's Clothing"},
			{ value:13779, name: "Women's Clothing"},
			{ value:13780, name: "Children's Clothing"},
			{ value:13797, name: "Building Materials & Supplies"},
			{ value:13801, name: "Audio Books"}
        ].sort_by{|i| i[:name] }
    end
    
end

__END__
(see https://developers.google.com/ad-exchange/rtb/downloads)
                combine ad-product-categories, ad-restricted-categories, ad-sensitive-categories files
