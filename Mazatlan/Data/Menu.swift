//
//  Menu.swift
//  ElMaz
//
//  Created by Angel Lopez on 7/29/22.
//

import SwiftUI

struct Product: Identifiable{
    var id = UUID()
    var section: ProductSection
    var name: String
    var image: String
    var price: Double
    @State var quantity: Int
    var description: String
    
    
}

enum ProductSection: String, CaseIterable{
    case appetizers = "Appetizers"
    case alACarte = "Al a Carte"
    case combos = "Combinations"
    case vege = "Vegetarian"
    case specials = "Specialties"
    case sideOrders = "Side Orders"
    case desserts = "Desserts"
    case burritos = "Burritos"
    case enchiladas = "Enchiladas"
    case quesadillas = "Quesadillas"
    case chicken = "Chicken"
    case seafood = "Seafood"
    case fajitas = "Fajitas"
    case kids = "Kids"
    case steak = "Steak"
    case nachos = "Nachos"
    case lunch = "Lunch"
    case drinks = "Drinks"
}


var productList: [Product] = [
        
        //Appetizers 0-9
        Product(section: .appetizers, name: "Spinach Dip", image: "Nov", price: 5.25, quantity: 1, description: "Grilled Spinach topped with our homemade cheese sauce"),
        Product(section: .appetizers, name: "Chorizo Dip", image: "Nov", price: 6.99, quantity: 1, description: "Our homemade chorizo grilled and topped with cheese dip, served with chips"),
        Product(section: .appetizers, name: "Bean Dip", image: "Nov", price: 4.99, quantity: 1, description: "Beans topped with our homemade cheese sauce"),
        Product(section: .appetizers, name: "Guacamole", image: "Nov", price: 4.99, quantity: 1, description: ""),//No Description
        Product(section: .appetizers, name: "Cheese Dip", image: "Nov", price: 4.99, quantity: 1, description: ""),//No Description
        Product(section: .appetizers, name: "Nachos", image: "Nov", price: 7.99, quantity: 0, description: ""),
        Product(section: .appetizers, name: "Cheese Quesadilla", image: "Nov", price: 2.99, quantity: 1, description: ""),
        Product(section: .appetizers, name: "Tossed Salad", image: "Nov", price: 3.99, quantity: 1, description: "Lettuce, Bell Peppers, Onions, Tomatoes"),//Grilled/Raw?
        Product(section: .appetizers, name: "Cantarito Dip", image: "Nov", price: 6.99, quantity: 1, description: "Ground beef and pico de gallo topped in our delicious cheese dip"),
        Product(section: .appetizers, name: "Mexican Guacamole", image: "Nov", price: 8.99, quantity: 1, description: "Authentic Mexican Guacamole made when ordered"),
       
        
        //Al a Carte 10-31
        Product(section: .alACarte, name: "Grilled Steak Burrito", image: "Nov", price: 5.99, quantity: 1, description: "With your choice of Red or Cheese Sauce"),//2 for 11.99
        Product(section: .alACarte, name: "Grilled Chicken Burrito", image: "Nov", price: 5.99, quantity: 1, description: "With your choice of Red or Cheese Sauce"),//2 for 11.99
        Product(section: .alACarte, name: "Ground Beef Burrito", image: "Nov", price: 4.99, quantity: 1, description: "With your choice of Red or Cheese Sauce"),//2 for 9.99
        Product(section: .alACarte, name: "Shredded Chicken Burrito", image: "Nov", price: 4.99, quantity: 1, description: "With your choice of Red or Cheese Sauce"),//2 for 9.99
        Product(section: .alACarte, name: "Bean Burrito", image: "Nov", price: 3.50, quantity: 1, description: "With your choice of Red or Cheese Sauce"),//2 for 7.00
        Product(section: .alACarte, name: "Beef Tostada", image: "Nov", price: 4.50, quantity: 1, description: ""),//2 for 9.00
        Product(section: .alACarte, name: "Beef Enchiladas", image: "Nov", price: 3.49, quantity: 1, description: "With your choice of Red or Cheese Sauce"),// 3 for 10.47
        Product(section: .alACarte, name: "Chicken Enchildas", image: "Nov", price: 3.49, quantity: 1, description: "With your choice of Red or Cheese Sauce"),// 3 for 10.47
        Product(section: .alACarte, name: "Cheese Enchiladas", image: "Nov", price: 3.49, quantity: 1, description: "With your choice of Red or Cheese Sauce"),// 3 for 10.47
        Product(section: .alACarte, name: "Chile Relleno", image: "Nov", price: 3.49, quantity: 1, description: "Chile Relleno with ground beef and topped with red sauce or cheese"),// 3 for 10.47 | Red Sauce or cheese
        Product(section: .alACarte, name: "Beef Taco", image: "Nov", price: 2.99, quantity: 1, description: "Soft shell or hard shell beef taco with lettuce and cheese"),// 3 for 9.75 | Soft or Hard
        Product(section: .alACarte, name: "Chicken Taco", image: "Nov", price: 2.99, quantity: 1, description: "Soft shell or hard shell shredded chicken taco with lettuce and cheese"),// 3 for 9.75 | Soft or Hard
        Product(section: .alACarte, name: "Tamale", image: "Nov", price: 2.99, quantity: 1, description: "Tamale with ground beef topped with red sauce or cheese dip"),//3 for 10.47 | Red Sauce or cheese
        Product(section: .alACarte, name: "Beef Chimichanga", image: "Nov", price: 5.49, quantity: 1, description: "Deep fried beef chimichanga"),//2 for 10.99
        Product(section: .alACarte, name: "Chicken Chimichanga", image: "Nov", price: 5.49, quantity: 1, description: "Deep fried shredded chicken chimichanga"),//2 for 10.99
        Product(section: .alACarte, name: "Shrimp Chimichanga", image: "Nov", price: 5.99, quantity: 1, description: "Deep fried Shrimp and vegtable chimichanga"),//No vegtables? | 2 for 11.99
        Product(section: .alACarte, name: "Grilled Chicken Quesadilla", image: "Nov", price: 5.49, quantity: 1, description: ""),//2 for 10.99
        Product(section: .alACarte, name: "Steak Quesadilla", image: "Nov", price: 5.49, quantity: 1, description: ""),// 2 for 10.99
        Product(section: .alACarte, name: "Shrimp", image: "Nov", price: 5.99, quantity: 1, description: ""),//6 or 12 for 9.99
        Product(section: .alACarte, name: "Chicken Breast", image: "Nov", price: 6.99, quantity: 1, description: ""),
        Product(section: .alACarte, name: "Chicken Breast w/Cheese Dip", image: "Nov", price: 8.99, quantity: 1, description: ""),
        Product(section: .alACarte, name: "Chicken and Fries", image: "Nov", price: 9.99, quantity: 1, description: "French Fries topped with grilled chicken and cheese"),
        
        //Combination Dinners: Add cheese for 1.99 32-46
        Product(section: .combos, name: "#1", image: "Nov", price: 12.99, quantity: 1, description: "One taco, two enchiladas and Mexican rice with your choice of beef or chicken"),
        Product(section: .combos, name: "#2", image: "Nov", price: 12.99, quantity: 1, description: "One tamale, one burrito and one taco with your choice of beef or chicken"),
        Product(section: .combos, name: "#3", image: "Nov", price: 12.99, quantity: 1, description: "Two tacos, one enchilada and Chile con queso with cheese and beef or chicken"),
        Product(section: .combos, name: "#4", image: "Nov", price: 12.99, quantity: 1, description: "Two beef or chicken enchiladas, rice and beans."),
        Product(section: .combos, name: "#5", image: "Nov", price: 12.99, quantity: 1, description: "One beef or chicken enchilada, one taco, rice and beans."),
        Product(section: .combos, name: "#6", image: "Nov", price: 12.99, quantity: 1, description: "One enchilada, one Chile relleno, with your choice of beef or chicken, served with rice and beans"),
        Product(section: .combos, name: "#7", image: "Nov", price: 12.99, quantity: 1, description: "One enchilada, one tamale, with your choice of beef or chicken,served rice and beans."),
        Product(section: .combos, name: "#8", image: "Nov", price: 12.99, quantity: 1, description: "Two beef or chicken tacos with rice and beans"),
        Product(section: .combos, name: "#9", image: "Nov", price: 12.99, quantity: 1, description: "One beef burrito, one taco and one enchilada, with your choice of beef or chicken"),
        Product(section: .combos, name: "#10", image: "Nov", price: 12.99, quantity: 1, description: "Two burritos with your choice of beef or chicken served with rice and beans"),
        Product(section: .combos, name: "#11", image: "Nov", price: 12.99, quantity: 1, description: "One burrito, one enchilada and one tamale with your choice of beef or chicken"),
        Product(section: .combos, name: "#12", image: "Nov", price: 12.99, quantity: 1, description: "One burrito, one enchilada, with your choice of beef or chicken served with rice and beans."),
        Product(section: .combos, name: "#13", image: "Nov", price: 12.99, quantity: 1, description: "One taco, one beef burrito, with your choice of beef or chicken served with rice and beans."),
        Product(section: .combos, name: "#14", image: "Nov", price: 12.99, quantity: 1, description: "Two tamales with rice and beans"),
        Product(section: .combos, name: "#15", image: "Nov", price: 12.99, quantity: 1, description: "Two chile relleno with cheese, beef and red sauce or cheese dip"),
        
        //Vegeterian Dinners 47-53
        Product(section: .vege, name: "A", image: "Nov", price: 9.99, quantity: 1, description: "One chalupa, one bean enchilada, & refried beans"),
        Product(section: .vege, name: "B", image: "Nov", price: 9.99, quantity: 1, description: "Two bean burritos & nacho cheese sauce"),
        Product(section: .vege, name: "C", image: "Nov", price: 9.99, quantity: 1, description: "One bean burrito, one cheese enchilada & one bean tostada"),
        Product(section: .vege, name: "D", image: "Nov", price: 9.99, quantity: 1, description: "One bean burrito, one quesadilla & one chalupa"),
        Product(section: .vege, name: "E", image: "Nov", price: 9.99, quantity: 1, description: "Two cheese quesadillas & rice topped with cheese"),
        Product(section: .vege, name: "F", image: "Nov", price: 9.99, quantity: 1, description: "Pineapple and mushroom quesadilla served with rice and guacamole salad"),
        Product(section: .vege, name: "Vegeterian Fajita", image: "Nov", price: 12.99, quantity: 1, description: "Vegetable fajitas with mushrooms cooked with broccoli, carrots, cauliflower, onions, bell peppers & tomatoes"),
        
        //Specialties 54-70
        Product(section: .specials, name: "Special Dinner", image: "Nov", price: 15.99, quantity: 1, description: "(a little of everything) Chalupa, taco; Chile relleno, tamale, enchilada, rice and beans."),
        Product(section: .specials, name: "Carnitas", image: "Nov", price: 12.99, quantity: 1, description: "Pork tips served with rice, beans, guacamole salad and tortillas."),
        Product(section: .specials, name: "Chimichanga", image: "Nov", price: 9.99, quantity: 1, description: "A flour tortilla filled with your choice of shredded beef or chicken, deep fried to a golden brown. Topped with cheese salsa, : .specials, sectionserved with lettuce sour cream, guacamole and pico de gallo. Served with rice and beans."),
        Product(section: .specials, name: "Shrimp Chimichanga", image: "Nov", price: 12.99, quantity: 1, description: ""),//No Des
        Product(section: .specials, name: "Quesadilla Jalisco", image: "Nov", price: 11.49, quantity: 1, description: "A flour tortilla filled with steak, shrimp, and chicken Cooked with onions, peppers, tomatoes. Served with lettuce: .specials, , sectionsour cream and rice."),
        Product(section: .specials, name: "Shrimp Alcapulco", image: "Nov", price: 13.49, quantity: 1, description: "Grilled shrimp served with rice, beans, guacamole and pico de gallo."),
        Product(section: .specials, name: "Molcajete Deluxe", image: "Nov", price: 18.99, quantity: 1, description: "Steak, chicken, shrimp, chorizo, cooked with mushrooms, onions, bell peppers and tomatoes, topped with cheese. Served : .specials, sectionwith rice, beans, lettuce, pico de gallo, sour cream, guacamole."),
        Product(section: .specials, name: "Guadalajara", image: "Nov", price: 10.49, quantity: 1, description: "One chicken burrito, one chicken enchilada served with lettuce, sour cream, pico de gallo and guacamole"),
        Product(section: .specials, name: "Magos Pizza", image: "Nov", price: 12.99, quantity: 1, description: "Two flat tortillas topped with beans, steak, chicken, shrimp, onions, bell peppers, tomatoes, sour cream, guacamole and pic: .specials, o sectionde gallo."),
        Product(section: .specials, name: "Chimichanga Pancho", image: "Nov", price: 10.99, quantity: 1, description: "A flour tortilla stuffed with steak, chicken and shrimp, cooked with onions, bell peppers and tomatoes. Served with section: .specials, rice, beans, lettuce, pico de gallo, guacamole, and sour cream."),
        Product(section: .specials, name: "Ortegas Pizza", image: "Nov", price: 12.99, quantity: 1, description: "Flour tortilla with steak, mushrooms, bell peppers, onions, tomatoes, lettuce, sour cream, guacamole and pico de gallo. section: .specials, Topped with cheese sauce."),
        Product(section: .specials, name: "Helens Special", image: "Nov", price: 12.99, quantity: 1, description: "Fajita steak, chicken and shrimp served on a bed of rice with grilled peppers and onions, topped with cheese sauce and section: .specials, potato wedges on the side."),
        Product(section: .specials, name: "Taco Salad", image: "Nov", price: 9.25, quantity: 1, description: "Crispy flour tortilla with ground beef or shredded chicken, topped with cheese, lettuce, tomato, guacamole and sour section: .specials, cream."),
        Product(section: .specials, name: "Jalisco Special", image: "Nov", price: 12.99, quantity: 1, description: "Chicken, steak, shrimp and rice with cheese."),
        Product(section: .specials, name: "Tacos Al Pastor", image: "Nov", price: 11.99, quantity: 1, description: "Three tacos with cilantro and onions served with rice and beans."),
        Product(section: .specials, name: "Molcajete Mexicano", image: "Nov", price: 28.99, quantity: 1, description: "8 oz. chicken breast, oz. ribeye and shrimp cactus cheese quesadilla. Served with rice, beans, lettuce, pico gallo, section: .specials, sour cream guacamole."),
        Product(section: .specials, name: "Chile Colorado", image: "Nov", price: 13.99, quantity: 0, description: "(green or white sauce) Diced beef cooked with choice of sauce. Served with rice, beans and tortillas."),
        
        //Side Orders 71-81
        Product(section: .sideOrders, name: "Tortillas", image: "Nov", price: 1.99, quantity: 1, description: "Corn or Flour"),
        Product(section: .sideOrders, name: "Rice", image: "Nov", price: 3.49, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Beans", image: "Nov", price: 3.49, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Rice & Cheese", image: "Nov", price: 5.99, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "French Fries", image: "Nov", price: 3.49, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Sour Cream", image: "Nov", price: 2.49, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Pico de Gallo", image: "Nov", price: 2.25, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Hot Sauce", image: "Nov", price: 2.25, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Grilled Jalapenos & Onions", image: "Nov", price: 5.99, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Fries & Cheese", image: "Nov", price: 4.99, quantity: 1, description: ""),
        Product(section: .sideOrders, name: "Shredded Cheese", image: "Nov", price: 2.25, quantity: 1, description: ""),
        
        //Desserts 82-84
        Product(section: .desserts, name: "Sorpapilla", image: "Nov", price: 3.99, quantity: 1, description: "Flour tortilla, deep fried to golden brown, topped with chocalate syrup and cinnamon."), //with ice cream 4.99
        Product(section: .desserts, name: "Fried Ice Cream", image: "Nov", price: 4.99, quantity: 1, description: "Fried Ice Cream with Whipped Cream and Chocolate Syrup"),
        Product(section: .desserts, name: "Mexican Churros", image: "Nov", price: 4.99, quantity: 1, description: "Strawberry filled churros topped with chocolate syrup"),
        
       //Burritos 85-92section: .burritos,
        Product(section: .burritos, name: "Burrito Deluxe", image: "Nov", price: 10.49, quantity: 1, description: "Two flour tortillas wrapped around beans and chicken breast topped with cheese, lettuce, tomato, special sauce and sour cream."),
        Product(section: .burritos, name: "Burrito Mazatlan", image: "Nov", price: 10.49, quantity: 1, description: "A 8 inch flour tortilla with ground beef and chunks of chicken topped with cheese, lettuce, tomato and sour cream. Served with rice and beans."),
        Product(section: .burritos, name: "Burrito California", image: "Nov", price: 11.99, quantity: 1, description: "Rice, beans, lettuce, tomatoes, onions, with your choice of steak, chicken or mixed inside a tortilla. Topped with red and cheese sauce, lettuce, guacamole and tomatoes"),//Mixed for 12.99
        Product(section: .burritos, name: "Burrito Jalisco", image: "Nov", price: 13.99, quantity: 1, description: "Monster steak, chicken and shrimp burrito filled with refried beans, rice pico de gallo, lettuce and sour cream. Topped with cheese sauce."),
        Product(section: .burritos, name: "Burrito Loco", image: "Nov", price: 10.99, quantity: 1, description: "A 12 inch flour tortilla stuffed with your choice of shredded beef or chicken and topped with cheese sauce. Served with salad, rice, beans, lettuce, - tomatoes and sour cream."),
        Product(section: .burritos, name: "Burrito Supreme", image: "Nov", price: 11.99, quantity: 1, description: "Two burritos with your choice of ground beef or chicken. Served with lettuce, sour cream, tomatoes, guacamole and cheese."),
        Product(section: .burritos, name: "Burrito Texas", image: "Nov", price: 13.99, quantity: 1, description: "Black beans, steak, chicken or chorizo with onions, cilantro, lettuce, sour cream, tomato and cheese sauce on top. Served with rice and beans"),
        Product(section: .burritos, name: "Burrito Toro", image: "Nov", price: 13.99, quantity: 1, description: "A 12 flour tortilla stuffed with shredded beef, steak, chicken and french fries. Topped with cheese sauce. Served with rice, beans, onions, tomatoes, lettuce, pico de gallo, sour cream and guacamole."),
        
        //Enchiladas 93-97
        Product(section: .enchiladas, name: "Enchiladas Rancheras", image: "Nov", price: 11.99, quantity: 1, description: "Three enchiladas with shredded pork. Served with rice and beans."),
        Product(section: .enchiladas, name: "Enchiladas Verdes", image: "Nov", price: 11.99, quantity: 1, description: "Three grilled chicken enchiladas. Served with rice, and sour cream salad."),
        Product(section: .enchiladas, name: "Enchiladas Locas", image: "Nov", price: 11.99, quantity: 1, description: "Two enchiladas cooked with shrimp, peppers, onions and tomatoes. Served with rice, lettuce and sour cream."),
        Product(section: .enchiladas, name: "Enchiladas Poblanas", image: "Nov", price: 11.99, quantity: 1,description: "Two chicken enchiladas topped with cheese sauce. Served with lettuce, sour cream, tomatoes and rice."),
        Product(section: .enchiladas, name: "Enchiladas Supremas", image: "Nov", price: 11.99, quantity: 1, description: "Four rolled corn tortillas, one beef, one chicken, one cheese and one bean topped with enchilada sauce, cheese, lettsection: .enchiladas, uce, tomato and sour cream."),
        
        //Quesadillas 98-101
        Product(section: .quesadillas, name: "Quesadilla Fajita", image: "Nov", price: 7.99, quantity: 1, description: "Your choice of steak, chicken, or mix. Cooked with fajita vegetables."),
        Product(section: .quesadillas, name: "Quesadilla al Carbon", image: "Nov", price: 9.99, quantity: 1, description: "A grilled flour tortilla stuffed with your choice of grilled chicken or steak. Topped with cheese sauce."),
        Product(section: .quesadillas, name: "Quesadilla Texana", image: "Nov", price: 12.99, quantity: 1, description: "Two quesadillas stuffed with. cheese and your choice of marinated chicken breast or skirt steak cooked with. sautéed onions, bell peppers and tomatoes. Served with lettuce, guacamole, sour cream and tomatoes."),
        Product(section: .quesadillas, name: "Quesabirria", image: "Nov", price: 16.99, quantity: 1, description: "Three of our delicious carne de res meat dipped and accompanied with it's own broth."),
        
    
        //Chicken 102-116
        Product(section: .chicken, name: "Pollo Loco", image: "Nov", price: 11.99, quantity: 1, description: "Grilled chicken breast served with Mexican rice and guacamole salad."),
        Product(section: .chicken, name: "Arroz con Pollo", image: "Nov", price: 11.99, quantity: 1, description: "Grilled chicken strips topped with cheese sauce and served with rice,"),//MIX 13.99
        Product(section: .chicken, name: "Pollo Casabraba", image: "Nov", price: 12.99, quantity: 1, description: "Chicken breast with onions, Mexican chorizo, pineapple, cheese sauce, rice and beans."),
        Product(section: .chicken, name: "Pollo Mexicano", image: "Nov", price: 12.99, quantity: 1, description: "Grilled chicken breast cooked with tomatoes, onions and peppers. Served with Mexican rice and beans."),
        Product(section: .chicken, name: "Pollo Casador", image: "Nov", price: 12.99, quantity: 1, description: "Grilled chicken breast topped with chorizo (Mexican sausage) for the best flavor. Served with Mexican rice and beans."),
        Product(section: .chicken, name: "Pollo California", image: "Nov", price: 12.99, quantity: 1, description: "Grilled chicken strips, cooked with mixed vegetables, topped with cheese sauce and served with rice."),
        Product(section: .chicken, name: "Pollo Azteca", image: "Nov", price: 11.99, quantity: 1, description: "Grilled chicken breast served with Mexican rice and beans, topped with cheese sauce."),
        Product(section: .chicken, name: "Pollo con Queso", image: "Nov", price: 13.99, quantity: 1, description: "Chicken breast topped with cheese sauce. Served with rice, beans, lettuce, pico de gallo, guacamole and sour cream."),
        Product(section: .chicken, name: "Ismeal Special", image: "Nov", price: 13.99, quantity: 1, description: "Strips of marinated chicken breast and 6 shrimp grilled to perfection. Served with rice and topped with cheese sauce."),
        Product(section: .chicken, name: "Pollo Vallarta", image: "Nov", price: 12.99, quantity: 1, description: "Chicken strips cooked with spinach, mushrooms topped with cheese sauce, rice and sour cream salad."),
        Product(section: .chicken, name: "Pollo Mazatlan", image: "Nov", price: 13.99, quantity: 1, description: "Grilled chicken and grilled shrimp, cooked with onions, bell peppers and tomatoes. Topped with your choice of red or cheesection: .nachos, se sauce. Served with rice and beans."),
        Product(section: .chicken, name: "Pollo Hawaiian", image: "Nov", price: 13.99, quantity: 1, description: "Grilled chicken breast, ham, pineapple and cheese. Served with rice and beans."),
        Product(section: .chicken, name: "Pollo Tropical", image: "Nov", price: 13.99, quantity: 1, description: "A grilled chicken breast cooked with pineapple and cheese sauce on top accompanied with rice and a tossed salad."),
        Product(section: .chicken, name: "Pollo Texana", image: "Nov", price: 11.99, quantity: 1, description: "Grilled chicken breast topped with cheese, served with pico de gallo, lettuce, guacamole and sour cream."),
        Product(section: .chicken, name: "Pollo Pepe", image: "Nov", price: 13.99, quantity: 1, description: "Chicken and bacon marinated in sauce, served with rice and beans."),
        Product(section: .chicken, name: "Pollo Feliz", image: "Nov", price: 13.99, quantity: 1, description: "Rice, beans, lettuce, sour cream, guacamole, pico de gallo, chicken breast and shrimp."),
        
        //Seafood 121-127
        Product(section: .seafood, name: "Seafood Fajita", image: "Nov", price: 17.99, quantity: 1, description: "Pangasius catfish and shrimp grilled with sautéed onions, bell peppers with lettuce, guacamole, sour cream and pico de gallo. Served with rice, beans and tortillas."),
        Product(section: .seafood, name: "Grilled Catfish", image: "Nov", price: 13.99, quantity: 1, description: "Two pieces of grilled catfish. Served with guacamole, pico de gallo, lettuce, rice and beans."),
        Product(section: .seafood, name: "Molcajete Seafood", image: "Nov", price: 17.99, quantity: 1, description: "Shrimp, crab meat, and catfish cooked with onions, bell peppers, tomatoes. Served with rice, beans, lettuce, sour cream, pico de gallo, and guacamole."),
        Product(section: .seafood, name: "Shrimp a la Diabla", image: "Nov", price: 13.99, quantity: 1, description: "Shrimp cooked on special sauce. Served with salad, rice, beans and spicy or regular sauce."),
        Product(section: .seafood, name: "Garlic Shrimp", image: "Nov", price: 13.99, quantity: 1, description: "Shrimp sautéed with our special garlic sauce, served with rice, lettuce, tomato, sour cream and tortillas."),
        Product(section: .seafood, name: "Seafood Chimichanga", image: "Nov", price: 12.99, quantity: 1, description: "Chimichanga stuffed with catfish and shrimp cooked with bell peppers and onions. Served with salad, rice and beans."),
        Product(section: .seafood, name: "Fish Tacos", image: "Nov", price: 11.99, quantity: 1, description: "Three tacos served with lettuce, pico de gallo and shredded cheese."),
        Product(section: .seafood, name: "Shrimp el Mexicano", image: "Nov", price: 13.99, quantity: 1, description: "Delicious shrimp cooked with mushrooms and fajita vegetables. Served with rice and beans."),
        Product(section: .seafood, name: "Shrimp Tapatio", image: "Nov", price: 13.99, quantity: 1, description: "Delicious grilled shrimp cooked to order and topped with cheese sauce. Served on a bed of Mexican rice."),
        Product(section: .seafood, name: "Shrimp Coptel", image: "Nov", price: 10.99, quantity: 1, description: "Shrimp served with pico de gallo, guacamole and special sauce."),//12 shrimp for 14.99
       
        
        //Kids Menu 128-138
        Product(section: .kids, name: "Cheese Quesadilla w/ Rice & Beans", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Taco w/ Rice & Beans", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Enchilada w/ Rice & Beans", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Burrito w/ Rice & Beans", image: "Nov", price: 7.99, quantity: 1, description: ""),//Beef or chicken
        Product(section: .kids, name: "Nuggets w/ Rice & Beans", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Cheeseburger & Fries", image: "Nov", price: 7.99, quantity: 1, description: ""),// Add tomatoes/onion/ pickles
        Product(section: .kids, name: "Tenders & Fries", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Cheese Sticks & Fries", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "2 Corn Dogs & Fries", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Arroz c/ Pollo Jr.", image: "Nov", price: 7.99, quantity: 1, description: ""),
        Product(section: .kids, name: "Fries w/ Grilled Chicken & Cheese", image: "Nov", price: 6.99, quantity: 1, description: ""),
        
        //Fajitas 139-149
        Product(section: .fajitas, name: "Chicken Fajita", image: "Nov", price: 16.99, quantity: 1, description: "Grilled Chicken, onion, bell peppers, tomatoes, served with rice, lettuce, guacamole, sour cream and pico de gallo"),
        Product(section: .fajitas, name: "Steak Fajita", image: "Nov", price: 17.99, quantity: 1, description: "Grilled Steak, onion, bell peppers, tomatoes, served with rice, lettuce, guacamole, sour cream and pico de gallo"),
        Product(section: .fajitas, name: "Mix Fajita", image: "Nov", price: 18.99, quantity: 1, description: "Grilled Chicken and Steak, onion, bell peppers, tomatoes, served with rice, lettuce, guacamole, sour cream and pico de gallo"),
        Product(section: .fajitas, name: "Fajita Jalisco", image: "Nov", price: 19.99, quantity: 1, description: "Grilled Chicken, Steak and Shrimp, onion, bell peppers, tomatoes, served with rice, lettuce, guacamole, sour cream and  pico de gallo"),
        Product(section: .fajitas, name: "Shrimp Fajita", image: "Nov", price: 21.99, quantity: 1, description: "Grilled Shrimp, onion, bell peppers, tomatoes, served with rice, lettuce, guacamole, sour cream and pico de gallo"),
        Product(section: .fajitas, name: "Fajita Mazatlan", image: "Nov", price: 21.99, quantity: 1, description: "Grilled Chicken, Steak, Shrimp and Chorizo, onion, bell peppers, tomatoes, served with rice, lettuce, guacamole, sour cream and pico de gallo"),
        Product(section: .fajitas, name: "Fajita Chimichanga", image: "Nov", price: 10.99, quantity: 1, description: "Deep fried flour tortilla filled with your choice of steak, chicken, or mix, cooked with onions, bell peppers and tomatoes. Served with rice, beans, lettuce, sour cream, pico de gallo and guacamole"),
        Product(section: .fajitas, name: "El Sombero", image: "Nov", price: 11.99, quantity: 1, description: "Your choice of chicken or steak with onion, bell peppers, tomatoes, bacon and shredded cheese. Served with rice and beans."),
        Product(section: .fajitas, name: "Taco Salad Fajita", image: "Nov", price: 10.99, quantity: 1, description: "A crisp flour tortilla shell with tender strips of marinated chicken breasts or beef skirt steak served with onions, bell peppers, tomatoes and garnished with lettuce, guacamole, sour cream and a slice of tomato."),
        Product(section: .fajitas, name: "Fajita Fiesta", image: "Nov", price: 11.99, quantity: 1, description: "Delicious fajitas cooked to order with your choice of chicken, steak or mix. Served with rice, beans, lettuce, sour cream, pico de gallo and guacamole"),
        Product(section: .fajitas, name: "Ribeye Fajita", image: "Nov", price: 21.99, quantity: 0, description: "Ribeye steak cooked with onion, bell peppers, tomatoes. Served with rice, beans, lettuce, sour cream, pico de gallo and  guacamole."),
        
        //Steak 150-156
        Product(section: .steak, name: "Steak Mexicano", image: "Nov", price: 19.99, quantity: 1, description: "T-bone steak topped with sautéed onions, peppers and tomatoes. Served with rice and beans."),
        Product(section: .steak, name: "12oz Ribeye Steak", image: "Nov", price: 19.99, quantity: 1, description: "A 12oz ribeye served with rice, tossed salad and French fries."),
        Product(section: .steak, name: "Carne Asada Tacos", image: "Nov", price: 13.99, quantity: 1, description: "Three flour tortilla tacos stuffed with diced steak. Served with rice, beans and pico de gallo."),//4 for 15.99
        Product(section: .steak, name: "Carne Asada", image: "Nov", price: 17.99, quantity: 1, description: "Thin sliced beef steak with lettuce, pico de gallo and guacamole. Served with rice and beans."),
        Product(section: .steak, name: "Steak Texano", image: "Nov", price: 21.99, quantity: 1, description: "T-Bone steak, 6 shrimp, and a cheese enchilada served with rice, beans, and tossed salad."),
        Product(section: .steak, name: "Steak Mazatlan", image: "Nov", price: 21.99, quantity: 1, description: "Delicious T-bone steak well seasoned with spices and shrimp. Served with California blend vegetables of broccolisection: .steak, , cauliflower, carrots, rice and beans."),
        Product(section: .steak, name: "Steak-Shrimp", image: "Nov", price: 21.99, quantity: 1, description: "Ribeye steak with shrimp skewer served with rice and mixed vegetables."),
        
        //Nachos 157-162
        Product(section: .nachos, name: "Nachos Deluxe", image: "Nov", price: 15.99, quantity: 1, description: "1/2 order of nachos supremos, one chicken chimichanga, one beef chimichanga and one cheese quesadilla with cheese sauce served with lettuce, tomato and sour cream."),
        Product(section: .nachos, name: "Texas Nachos", image: "Nov", price: 15.99, quantity: 1, description: "Grilled chicken nachos cooked with chorizo, pineapple and jalapeños."),
        Product(section: .nachos, name: "Nachos Jalisco", image: "Nov", price: 13.99, quantity: 1, description: "Beef, chicken, shrimp, onions, bell peppers and tomatoes topped with cheese sauce. Served with lettuce, sour cream, cheese and pico de gallo."),
        Product(section: .nachos, name: "Nachos Supremos", image: "Nov", price: 11.99, quantity: 1, description: "Cheese nachos with beef, chicken, beans, lettuce, sour cream and tomatoes"),
        Product(section: .nachos, name: "Nachos al Carbon", image: "Nov", price: 12.99, quantity: 1, description: "Cheese nachos topped with grilled chicken or steak."),
        Product(section: .nachos, name: "Nachos Fajita", image: "Nov", price: 11.99, quantity: 1, description: "Cheese nachos with your choice of beef, chicken or mixed. Topped with lettuce, sour cream, onions, peppers, tomatoes and shredded cheese."),
        
        //Lunch 163-182
        //only served from opening to 3
        Product(section: .lunch, name: "Taco Salad", image: "Nov", price: 7.99, quantity: 1, description: "Crispy flour tortilla with beef or chicken, cheese, lettuce, tomato, guacamole and sour cream"),
        Product(section: .lunch, name: "Taco Salad Jr,", image: "Nov", price: 7.25, quantity: 1, description: "Junior taco salad. Served with rice and beans."),
        Product(section: .lunch, name: "Grilled Chicken Salad", image: "Nov", price: 9.49, quantity: 1, description: "Grilled chicken, lettuce, bell pepper, onions, shredded cheese and tomatoes."),
        Product(section: .lunch, name: "Grilled Steak Salad", image: "Nov", price: 9.49, quantity: 1, description: "Grilled steak, lettuce, bell pepper, onions, shredded cheese and tomatoes."),
        Product(section: .lunch, name: "Shrimp Salad", image: "Nov", price: 9.99, quantity: 1, description: "Fresh salad topped with 12 shrimp grilled with bell peppers, onions and tomatoes. Topped with shredded cheese."),
        Product(section: .lunch, name: "Taco Salad Fajita", image: "Nov", price: 9.99, quantity: 1, description: "A crispy flour tortilla shell with tender strips of marinated chicken breast or steak. Served with sautéed onions, bell peppers and garnished with lettuce and sour cream."),
        Product(section: .lunch, name: "California Salad", image: "Nov", price: 9.99, quantity: 1, description: "Grilled chicken or steak, lettuce, cheese, tomato, broccoli cauliflower, carrots."),
        
        Product(section: .lunch, name: "Quesadilla Texana", image: "Nov", price: 8.49, quantity: 1, description: "One grilled cheese quesadilla with your choice of chicken or steak, cooked with peppers, onions and tomato. Garnished with lettuce, sour cream and tomatoes. Served with rice"),
        Product(section: .lunch, name: "Speedy Gonzales", image: "Nov", price: 6.49, quantity: 1, description: "One taco, one enchilada and choice of rice or beans."),
        Product(section: .lunch, name: "Burrito Mazatlan", image: "Nov", price: 8.25, quantity: 1, description: "Large flour tortilla filled with ground beef or tender diced chicken with lettuce, tomato, sour cream and cheese. Served with rice and beans."),
        Product(section: .lunch, name: "Burrito Californa", image: "Nov", price: 9.99, quantity: 1, description: "Beef, chicken or mix with rice, beans, lettuce, tomatoes, onions inside a tortilla. Topped with red sauce and cheese sauce, lettuce, guacamole and a slice of tomato."),//Mix for 10.99
        Product(section: .lunch, name: "Pollo los Reyes", image: "Nov", price: 10.99, quantity: 1, description: "Boneless chicken breast with bacon and mushrooms, served with rice, beans and tortillas. Garnished with lettuce, guacamole, sour cream and pico de gallo."),
        Product(section: .lunch, name: "Arroz con Pollo", image: "Nov", price: 10.99, quantity: 1, description: "Grilled chicken breast topped with cheese sauce and served with rice."),
        Product(section: .lunch, name: "Chimichanga", image: "Nov", price: 8.25, quantity: 1, description: "Golden brown, deep fried stuffed flour tortilla with your choice of beef or chicken topped with cheese sauce, lettuce, sour cream, guacamole and pico de gallo. Served with rice and beans."),
        Product(section: .lunch, name: "Chimichanga Loca", image: "Nov", price: 7.49, quantity: 1, description: "Ground beef or shredded chicken in red sauce and cheese. Served with rice and beans."),
        Product(section: .lunch, name: "Chimichanga Mazatlan", image: "Nov", price: 8.49, quantity: 1, description: "Two little chimichangas, one ground beef and one chicken. Served with rice, beans, sour cream and salad."),
        Product(section: .lunch, name: "Fajita Chimichanga", image: "Nov", price: 9.25, quantity: 1, description: "Your choice of beef or chicken, cooked with fajita vegetables. Served with lettuce, sour cream, pico de gallo, guacamole, rice and beans."),
        Product(section: .lunch, name: "Fajita", image: "Nov", price: 10.99, quantity: 1, description: "Beef, steak or mixed, served with sautéed onions, bell peppers and garnished with lettuce, guacamole, sour cream, pico de gallo, rice, beans and tortillas."),//Mix 12.99
        Product(section: .lunch, name: "Papa Loca", image: "Nov", price: 9.99, quantity: 1, description: "French fries, Mexican sausage, grilled chicken and cheese."),//Mix for 11.99
        Product(section: .lunch, name: "Ismeal Special", image: "Nov", price: 10.99, quantity: 1, description: "A bed of rice with shrimp and chicken, topped with our homemade cheese dip"),
        
        //Drinks
        Product(section: .drinks, name: "Pepsi", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Diet Pepsi", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Mountain Dew", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Diet Mountain Dew", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Starry", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Lemonade", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Dr. Pepper", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Sweet Tea", image: "Nov", price: 3.99, quantity: 1, description: ""),
        Product(section: .drinks, name: "Unsweet Tea", image: "Nov", price: 3.99, quantity: 1, description: "")
        
        
    ]
    
   
    
