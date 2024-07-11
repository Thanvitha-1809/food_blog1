-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2024 at 08:12 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spiderhitin_thanvithafoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `profile_pic`, `otp`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@thanvithafoods.com', '7411122189', NULL, NULL, '$2y$12$QBctH0Z7iW4KNQSSZQKs0eU8MbFiX8gAh6Xcek1waMvSHY29l7WtG', NULL, '2024-07-10 04:35:53', '2024-07-09 23:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `is_feature` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `category_slug`, `title`, `slug`, `banner`, `thumbnail`, `short_description`, `description`, `status`, `is_feature`, `author`, `created_at`, `updated_at`) VALUES
(2, 10, 'indian_food', 'Dosa', 'dosa', 'media/PIdwOpR1a0kf9VhaCwI8omWjJvUWQsgPNf39of4z.jpg', 'media/UWChU1DUOodgNxtuGVhVwUlYBrsO7MnBgvnwVHI1.jpg', 'Biryani is a classic dish with roots in the Indian subcontinent, known for its flavorful and aromatic blend of long-grained rice, tender meat (such as chicken, lamb, or goat), or vegetables, infused with a rich assortment of spices and herbs. Here\'s a description of this iconic dish:', '<p><span style=\"text-align: var(--bs-body-text-align);\">1. *Rice*: Biryani begins with long-grain basmati rice, known for its distinct aroma and delicate texture. The rice is typically soaked, then partially cooked before being layered with the main ingredients to further develop its unique flavor and to ensure that the grains remain separate and fluffy.</span></p><p>2. *Meat or Vegetables*: The choice of protein or vegetables in biryani offers a wide range of variations. Marinated, succulent pieces of meat or a vibrant mix of fresh vegetables are typically layered with the par-cooked rice, allowing the flavors to intermingle as the biryani cooks.</p><p>3. *Spices and Aromatics*: Biryani owes its signature depth of flavor to a harmonious blend of spices. Common spices used in biryani preparations include cardamom, cinnamon, cloves, cumin, coriander, and bay leaves, along with the enticing fragrance of saffron or turmeric. Aromatic elements such as fried onions, garlic, and ginger further enhance the dish\'s complexity.</p><p>4. *Layering and Dum Cooking*: The layered preparation of biryani is a key element of its distinctive character. Each layer typically comprises rice, meat or vegetables, fried onions, fresh herbs like mint and cilantro, and a drizzle of clarified butter or ghee. This layering process is often followed by \"dum\" cooking, a slow-cooking technique where the dish is sealed with dough or a tight-fitting lid to trap the flavors and allow them to meld together.</p><p>5. *Accompaniments*: Biryani is often accompanied by a cooling raita made with yogurt, cucumbers, and spices or a zesty pickle to balance the dish\'s rich flavors.</p><p>The result is a fragrant, vibrant, and complex one-pot dish that showcases the culinary heritage of the Indian subcontinent. Biryani\'s rich tapestry of flavors and textures, influenced by diverse regional variations, has made it a celebrated and cherished dish enjoyed in a variety of cultural and festive contexts.</p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:14:17', '2024-07-10 08:14:17'),
(3, 10, 'indian_food', 'Chicken 65', 'chicken_65', 'media/BAi2ehov8kf09cgkTYWJLwpPnyOIVJs8IMt7XvL0.jpg', 'media/yf4vRjsGdwLsCkN5I6QW9FmrGzJvFORtwfNxb4xI.jpg', 'Chicken 65 is a popular Indian dish known for its spicy, tangy, and flavorful preparation.', '<p>Here\'s a description of Chicken 65:</p><p>1. *Origin*: The origin of the name \"Chicken 65\" is a topic of debate and various theories exist. Some say it was the 65th item on a menu, while others believe it was named after the year it was introduced. Regardless, Chicken 65 is a beloved dish in Indian cuisine.</p><p>2. *Preparation*: Chicken 65 is usually made with bite-sized pieces of boneless chicken that are marinated in a mixture of Indian spices, yogurt, curry leaves, ginger-garlic paste, and sometimes vinegar or lemon juice. The marinated chicken is then deep-fried until crispy and golden brown.</p><p>3. *Spices*: The key to Chicken 65\'s bold flavor is the blend of spices used in the marinade, which often includes red chili powder, cumin, coriander, turmeric, garam masala, and black pepper. This combination gives the dish its signature fiery taste.</p><p>4. *Texture*: Chicken 65 is known for its crispy exterior and juicy, flavorful interior. The marination process ensures that the chicken is tender and well-seasoned, while the deep-frying adds a crunchy texture to each bite.</p><p>5. *Garnishes*: Chicken 65 is often garnished with fresh curry leaves, chopped cilantro, and slices of lemon or lime to add brightness and freshness to the dish. Some variations may also include thinly sliced green chilies for an extra kick of heat.</p><p>6. *Serving*: Chicken 65 is typically served as an appetizer or snack, accompanied by onion rings, lemon wedges, and possibly a side of yogurt-based raita or mint chutney for dipping.</p><p>7. *Variations*: While the traditional Chicken 65 recipe involves deep-frying the marinated chicken, there are healthier versions that involve baking or grilling the chicken instead. Vegetarian versions of \"Paneer 65\" or \"Gobi 65\" use paneer (Indian cottage cheese) or cauliflower as the main ingredient.</p><p>Chicken 65 is a flavorful and spicy dish that is enjoyed by many for its bold taste and crispy texture. Whether as a starter at a restaurant or as a homemade treat, Chicken 65 is a favorite among those who appreciate the rich and aromatic flavors of Indian cuisine.</p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:18:45', '2024-07-10 08:18:45'),
(4, 10, 'indian_food', 'Biryani', 'biryani', 'media/h1UpJ0p2HJBjRlI8bXqnT7VbHLTNyfPz04a8KXU3.webp', 'media/CpGE6LR5t2GEwwjdlqf1Y6I9vJrIUnEkprFDtfcU.webp', 'Biryani is a classic dish with roots in the Indian subcontinent, known for its flavorful and aromatic blend of long-grained rice, tender meat (such as chicken, lamb, or goat), or vegetables, infused with a rich assortment of spices and herbs.', '<p>Here\'s a description of this iconic dish:</p><p>1. *Rice*: Biryani begins with long-grain basmati rice, known for its distinct aroma and delicate texture. The rice is typically soaked, then partially cooked before being layered with the main ingredients to further develop its unique flavor and to ensure that the grains remain separate and fluffy.</p><p>2. *Meat or Vegetables*: The choice of protein or vegetables in biryani offers a wide range of variations. Marinated, succulent pieces of meat or a vibrant mix of fresh vegetables are typically layered with the par-cooked rice, allowing the flavors to intermingle as the biryani cooks.</p><p>3. *Spices and Aromatics*: Biryani owes its signature depth of flavor to a harmonious blend of spices. Common spices used in biryani preparations include cardamom, cinnamon, cloves, cumin, coriander, and bay leaves, along with the enticing fragrance of saffron or turmeric. Aromatic elements such as fried onions, garlic, and ginger further enhance the dish\'s complexity.</p><p>4. *Layering and Dum Cooking*: The layered preparation of biryani is a key element of its distinctive character. Each layer typically comprises rice, meat or vegetables, fried onions, fresh herbs like mint and cilantro, and a drizzle of clarified butter or ghee. This layering process is often followed by \"dum\" cooking, a slow-cooking technique where the dish is sealed with dough or a tight-fitting lid to trap the flavors and allow them to meld together.</p><p>5. *Accompaniments*: Biryani is often accompanied by a cooling raita made with yogurt, cucumbers, and spices or a zesty pickle to balance the dish\'s rich flavors.</p><p>The result is a fragrant, vibrant, and complex one-pot dish that showcases the culinary heritage of the Indian subcontinent. Biryani\'s rich tapestry of flavors and textures, influenced by diverse regional variations, has made it a celebrated and cherished dish enjoyed in a variety of cultural and festive contexts.</p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:21:48', '2024-07-10 08:21:48'),
(5, 10, 'indian_food', 'Curry', 'curry', 'media/5m7Ds6JZpweKVud8tG80zBHH7qpqWGVyIeJS1rKc.jpg', 'media/HcYFIEJNts3Zs1LYtauumbNgw8WhzYB3g8oXGXLc.jpg', 'Indian curry is a diverse and flavorful category of dishes that encompasses a wide variety of preparations, each with its unique blend of spices, aromatics, and cooking techniques.', '<p>Here\'s an overview of Indian curry:</p><p>1. *Base*: Indian curries often start with a base of onions, garlic, and ginger sautéed in oil or ghee (clarified butter). These aromatics form the foundation of the dish, lending it depth and complexity.</p><p>2. *Spices*: A hallmark of Indian curry is the use of a diverse array of spices. Common spices include cumin, coriander, turmeric, cinnamon, cloves, cardamom, and garam masala, among others. These spices can be used whole or ground, and they are added at different stages of cooking to build layers of flavor.</p><p>3. *Protein and Vegetables*: Indian curries can feature a variety of proteins such as chicken, lamb, goat, fish, or paneer (Indian cottage cheese). Additionally, vegetarian options often incorporate a colorful assortment of vegetables, legumes (such as lentils or chickpeas), or paneer. These ingredients are simmered in the flavorful sauce until tender and infused with the spices.</p><p>4. *Sauce*: The sauce or gravy in Indian curry can vary widely based on the regional and individual preferences. It may be tomato-based, yogurt-based, coconut milk-based, or a combination of these, and it\'s seasoned with the characteristic blend of spices. This sauce is what gives the curry its rich and aromatic character.</p><p>5. *Variety*: There is an incredible diversity of Indian curries, each reflective of the culinary traditions of different regions in India. For example, you have butter chicken from the north, rogan josh from Kashmir, vindaloo from Goa, and numerous others, each with its unique set of flavors and cooking techniques.</p><p>6. *Accompaniments*: Indian curries are often served with sides such as fragrant basmati rice, naan or roti (flatbreads), and accompaniments like raita (yogurt with cucumbers and spices) and chutneys to balance the flavors and textures of the meal.</p><p>Indian curries are celebrated for their vibrant colors, complex flavors, and the way they showcase the artful use of spices and aromatics. Whether enjoyed at home, in a local eatery, or at a high-end restaurant, Indian curries offer a rich and diverse culinary experience that has garnered admiration around the world.</p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:24:21', '2024-07-10 08:24:21'),
(6, 9, 'mexican_food', 'Nachos', 'nachos', 'media/PK3YaBDhImxRHOF5mPa5p4IhqAjqFeYhURQVt271.jpg', 'media/pGhnehqzBAMmNkeusgIr8SX3ZoAA8N74NfhV05Hm.jpg', 'Mexican nachos are a popular and beloved dish that originated in Mexico but have gained widespread popularity around the world.', '<p>Here\'s an overview of Mexican nachos:</p><p>1. *Base*: Mexican nachos typically start with a base of crispy corn tortilla chips. These chips are arranged in a single layer on a baking sheet or plate, forming the foundation of the dish.</p><p>2. *Cheese*: A generous amount of shredded cheese, often a combination of cheddar and Monterey Jack, is sprinkled over the tortilla chips. The cheese is a key component of nachos, providing a gooey, melty element that holds the toppings together.</p><p>3. *Toppings*: The toppings for Mexican nachos can vary widely based on personal preference. Common toppings include:</p><p>&nbsp; &nbsp;- *Protein*: Shredded chicken, seasoned ground beef, carnitas (pulled pork), or beans (such as black beans or refried beans).</p><p>&nbsp; &nbsp;- *Vegetables*: Diced tomatoes, sliced jalapeños, diced onions, bell peppers, corn, and black olives.</p><p>&nbsp; &nbsp;- *Sauces*: Salsa, guacamole, sour cream, and sometimes drizzles of queso or enchilada sauce.</p><p>&nbsp; &nbsp;- *Garnishes*: Chopped cilantro, sliced green onions, fresh lime wedges, and chopped fresh jalapeños can be used to add color and flavor.</p><div>Mexican nachos are a fun, customizable dish that offers a delightful combination of flavors, textures, and colors. Whether enjoyed as a snack, appetizer, or main dish, nachos are a crowd-pleaser that can be customized to suit a variety of tastes and preferences.<br></div>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:26:50', '2024-07-10 08:26:50'),
(7, 9, 'mexican_food', 'Rice Bowl', 'rice_bowl', 'media/RLbySdmuotvZRm4QTAgHeptuUTci2VK5sxqAavaB.jpg', 'media/oTYRHWIikbF41SH06pAsf6VUjnyIbyZZ49sHhwyr.jpg', 'A Mexican rice bowl is a flavorful and vibrant dish inspired by the vibrant flavors of Mexican cuisine.', '<p>1. *Base*: The base of a Mexican rice bowl is typically cooked fluffy white or brown rice. This serves as the foundation of the dish, adding heartiness and texture.</p><p>2. *Protein*: Mexican rice bowls often feature a protein source such as seasoned grilled chicken, beef, shrimp, tofu, or beans (such as black beans or pinto beans). The protein is seasoned with Mexican spices like cumin, chili powder, paprika, and garlic for added flavor.</p><p>3. *Vegetables*: A variety of colorful vegetables are a key component of a Mexican rice bowl. Common choices include bell peppers, onions, corn, tomatoes, avocado slices, shredded lettuce, and jalapeños. These vegetables add freshness, crunch, and a burst of color to the dish.</p><p>4. *Toppings*: Toppings play a crucial role in enhancing the flavors and textures of the Mexican rice bowl. Popular toppings may include grated cheese (such as cheddar or Monterey Jack), sour cream, salsa, guacamole, chopped cilantro, lime wedges, and crunchy tortilla strips.</p><p>5. *Sauce*: A flavorful sauce or dressing can tie all the elements of the Mexican rice bowl together. Options include salsa verde, chipotle sauce, cilantro lime dressing, or a drizzle of creamy lime cilantro crema.</p><div>Mexican rice bowls are not only delicious but also a wholesome and balanced meal that combines protein, grains, vegetables, and bold flavors. Whether enjoyed at home or in a restaurant, Mexican rice bowls offer a satisfying and flavorful dining experience that celebrates the vibrant culinary heritage of Mexico.<br></div>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:29:48', '2024-07-10 08:29:48'),
(8, 9, 'mexican_food', 'Spaghetti', 'spaghetti', 'media/ofLV4PPrlTuujucAmpyOSajxEMJOP1xzsY4eWtOc.jpg', 'media/cNWPGtefXAm15hdwznYwlYR7MqZK4WazOmDepl2j.jpg', 'Mexican spaghetti is a quintessential dish that embodies the simplicity and robust flavors of traditional Mexican cuisine. This classic dish features al dente spaghetti noodles, coated in a savory tomato-based sauce infused with aromatic garlic and fresh basil, and typically topped with grated Parmesan cheese.', '<p>At the heart of Mexican spaghetti is the art of balancing flavors and textures. The al dente pasta provides a satisfying chewiness, while the tomato sauce, enriched with olive oil and fragrant garlic, delivers a savory and slightly tangy essence. The addition of fresh basil lends a subtle herbal note, elevating the dish with its aromatic complexity. Topping the spaghetti with grated Parmesan cheese adds a creamy, salty element that enhances the overall taste experience.</p><p>This classic Mexican staple is not only a delight to the palate but also evokes a sense of comfort and familiarity. Whether enjoyed as a simple weeknight meal or as part of a festive gathering, Italian spaghetti embodies the culinary tradition of gathering around the table to savor wholesome, satisfying food.</p><p>Overall, Mexican spaghetti is a timeless representation of the Italian approach to cooking: honoring quality ingredients, embracing simplicity, and celebrating the joys of sharing a hearty, delicious meal with loved ones.</p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:32:46', '2024-07-10 08:32:46'),
(9, 9, 'mexican_food', 'Tacos', 'tacos', 'media/nbkr8RAuI1sEHCzky6oyBJTU8aZuocxg4At9MBkc.webp', 'media/RjdjaSdwzFEUdsiyTDaXLbQDzgB8cc12k7fRdTW4.webp', 'Mexican tacos are a beloved and iconic dish that has gained widespread popularity around the world.', '<p>Here\'s an overview of traditional Mexican tacos:</p><p><br></p><p>1. *Tortillas*: Mexican tacos are typically made using soft corn tortillas, which are a staple of Mexican cuisine. However, in some regions and modern variations, flour tortillas may also be used. The tortillas are warmed on a griddle or comal to make them soft and pliable before being used as the base for the tacos.</p><p><br></p><p>2. *Protein*: Tacos can feature a variety of protein options, including:</p><p>   - *Carnitas*: Slow-cooked, seasoned pork that\'s tender and flavorful.</p><p>   - *Asada*: Grilled and marinated beef, often thinly sliced.</p><p>   - *Pollo*: Seasoned and grilled or shredded chicken.</p><p>   - *Pescado*: Fresh fish, often grilled or fried, and served with vibrant toppings.</p><p>   - *Vegetarian*: Refried beans, grilled vegetables, or textured vegetable protein (TVP).</p><p><br></p><p>3. *Toppings*: Mexican tacos are often adorned with an array of fresh and flavorful toppings, such as:</p><p>   - *Onions and Cilantro*: Finely chopped raw onions and fresh cilantro add a burst of flavor and freshness.</p><p>   - *Salsa*: Salsa is a key component, with options ranging from pico de gallo (fresh tomato salsa) to salsa verde (green tomatillo salsa) and salsa roja (red chili salsa).</p><div>   <span style=\"text-align: var(--bs-body-text-align);\">- *Guacamole*: Creamy, ripe avocado mashed with lime juice, salt, and other seasonings.</span><br></div><div>   - *Lime Wedges*: Squeezing fresh lime juice over tacos adds a bright, citrusy note.</div><div>   - *Radishes and Cabbage*: Sliced radishes and shredded cabbage are often used to add satisfying crunch and texture.<span style=\"text-align: var(--bs-body-text-align);\"> </span></div><div>    <span style=\"text-align: var(--bs-body-text-align);\">- *Guacamole*: Creamy, ripe avocado mashed with lime juice, salt, and other seasonings.</span></div><div>   - *Lime Wedges*: Squeezing fresh lime juice over tacos adds a bright, citrusy note.</div><div>   - *Radishes and Cabbage*: Sliced radishes and shredded cabbage are often used to add satisfying crunch and texture.</div><div><br></div><div><br></div>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:35:33', '2024-07-10 08:35:49'),
(10, 8, 'italian_food', 'Pasta', 'pasta', 'media/IbjFiqoKs6WO7oPd9Z07BKSS2cdZHDhR0SkuX7zv.jpg', 'media/djZVbWgON9uwU1VuHk4taW8cdEJW91reGDjCkjg5.jpg', 'Italian pasta is a staple of Italian cuisine and has become popular worldwide for its versatility and deliciousness.', '<p>Here\'s an overview of Italian pasta:</p><p><br></p><p>1. *Varieties*: Italian pasta comes in a wide range of shapes and sizes, with each type designed to pair with different sauces and ingredients. Common types include spaghetti, penne, rigatoni, fusilli, farfalle, fettuccine, and many more. The shape of the pasta not only affects its appearance and texture but also its ability to hold onto sauces.</p><p><br></p><p>2. *Ingredients*: Traditional Italian pasta is typically made from durum wheat semolina, which gives it a firm texture and the ability to hold its shape when cooked. Some pasta varieties are made with egg, resulting in a richer flavor and a slightly different texture.</p><p><br></p><p>3. *Cooking*: Italian pasta is cooked in a large pot of boiling salted water until al dente, which means it\'s cooked through but still slightly firm to the bite. To achieve this, the cooking time is crucial, and the pasta must be stirred occasionally to prevent sticking.</p><p><br></p><p>4. *Sauces*: Italian pasta is often paired with a variety of sauces, from simple tomato-based marinara and fresh basil to creamy Alfredo and rich bolognese. Each pasta shape is well-suited to specific types of sauces, with the texture of the pasta and its ability to hold and capture the sauce being important considerations.</p><div>Italian pasta is loved for its ability to serve as a canvas for a myriad of flavors, from simple and comforting to rich and complex. It is a fundamental component of Italian cuisine and an integral part of meals enjoyed by people around the world.<br></div>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:37:21', '2024-07-10 08:37:21'),
(11, 8, 'italian_food', 'Pizza', 'pizza', 'media/YER1mSsnxjAJFSBB2fzgUaAbECtfSa4BuJMS4S0U.jpg', 'media/ZBEnt42KmFUTkFqsnqjmp5jC6TE7bMc0TnrqwWaJ.jpg', 'Pizza is an iconic and beloved dish that originated in Italy but has gained global popularity, with countless variations reflecting local and regional preferences. At its core, pizza consists of a thin, yeasted dough base, typically topped with a savory tomato sauce, mozzarella cheese, and various additional ingredients, then baked to perfection.', '<p>Here\'s a description of a classic pizza:</p><p><br></p><p>The foundation of a traditional pizza is its base, which is crafted from a simple yet artfully prepared dough, comprising flour, water, yeast, salt, and olive oil. The dough is rolled out into a thin, circular shape, then carefully stretched to achieve a desirable thickness and a slightly chewy yet crispy crust when baked.</p><p><br></p><p>The next layer is the savory tomato sauce, made from ripe tomatoes, garlic, herbs (such as basil and oregano), and olive oil, adding a burst of tangy, aromatic flavor. The tomato sauce is evenly spread over the dough, providing a vibrant and moist foundation for the toppings.</p><p><br></p><p>One of the most integral elements of a classic pizza is the mozzarella cheese. This cheese is known for its gooey, stretchy texture and mild, creamy flavor. When melted, it forms a luscious, golden layer that binds the toppings to the pizza, providing a rich, indulgent quality to each bite.</p><div><div>Toppings for pizza are diverse and can range from classic options like pepperoni, mushrooms, and bell peppers to more innovative choices such as prosciutto, arugula, and truffle oil. These toppings add layers of texture and taste, creating a harmonious blend of flavors that complement the dough, sauce, and cheese.</div><div><br></div><div>Once the toppings are in place, the pizza is baked in a hot oven, often on a stone or in a wood-fired oven, to achieve a crispy crust, bubbly cheese, and a fusion of flavors that meld together to create a delectable culinary masterpiece.</div><div><br></div><div>From its fragrant, freshly baked crust to the melty, flavorful toppings, a classic pizza offers a satisfying balance of textures, aromas, and tastes that make it a universally cherished dish enjoyed by people of all ages and backgrounds.</div><div><br></div><div>Overall, a classic pizza embodies the culinary artistry of bringing together simple, high-quality ingredients to create a dish that is both timeless and endlessly adaptable, making it a staple of global cuisine.</div></div>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:39:07', '2024-07-10 08:39:07'),
(12, 8, 'italian_food', 'Salad', 'salad', 'media/89t7dLdOT0TXC8TQfeqDqtQiZ4nQwf9am8HJGqWG.jpg', 'media/jBN7EkPLf9QjaRnM516iVvlwQdPhcTQjiDyXhrwN.jpg', 'Salad is a versatile and refreshing dish that encompasses a wide range of ingredients, flavors, and textures. From simple green salads to more elaborate composed salads', '<p>here\'s an overview of the classic elements that make up a fresh and delicious salad:</p><p><br></p><p>1. *Base*: Most salads start with a base of crisp and vibrant leafy greens, such as romaine lettuce, spinach, arugula, mixed greens, or kale. These greens provide a fresh and nutritious foundation for the rest of the ingredients.</p><p><br></p><p>2. *Vegetables and Fruits*: A variety of colorful, chopped vegetables and fruits are then added to the greens. Common choices include tomatoes, cucumbers, bell peppers, radishes, red onions, carrots, avocados, and seasonal fruits. These ingredients contribute to the salad\'s visual appeal, flavor diversity, and nutritional value.</p><p><br></p><p>3. *Protein*: Many salads incorporate sources of protein, such as grilled chicken, shrimp, tofu, hard-boiled eggs, chickpeas, or beans. Protein adds satiety and complements the vegetables and greens, transforming the salad from a side dish into a satisfying main course.</p><div><div>4. *Additional Toppings*: Other toppings such as nuts, seeds, croutons, or cheese can be included to provide texture, crunch, and savory or nutty flavors, enhancing the overall eating experience.</div><div><br></div><div>5. *Dressing*: Dressings are used to bring all the salad components together and enhance their flavors. Common dressings include vinaigrettes made with olive oil, vinegar, and herbs, as well as creamy options like ranch, Caesar, or blue cheese. The dressing\'s acidity and richness can tie the elements of the salad together and elevate its taste.</div><div><br></div><div>The beauty of salads lies in their flexibility – they can be customized to align with dietary preferences, seasonal produce, and regional culinary traditions. Whether served as a light side dish or a hearty main course, salads offer an opportunity to experiment with flavors and textures, making them a popular and versatile choice for a wide range of occasions and preferences.</div></div>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:40:44', '2024-07-10 08:40:44'),
(13, 7, 'chinese_food', 'Noodles', 'noodles', 'media/PhN3xVeBefdOKHtduI3z8QCesgU5WBsApzmcpzyS.jpg', 'media/EoovmA3Nby9Cp1FouVKeWZTcZuA68JSiovbn8r3J.jpg', 'Chinese noodles are a diverse and integral component of Chinese cuisine, with a wide variety of noodles available, each with its unique texture, shape, and flavor profile.', '<p>Here is an overview of some popular types of Chinese noodles<br></p><p>These noodles are made by repeatedly stretching and folding a dough mixture of wheat flour, water, and salt. Hand-pulled noodles have a chewy texture and are often served in savory broths or stir-fried dishes.</p><p>Chinese noodles are versatile and can be prepared in numerous ways, such as stir-frying, boiling, steaming, or serving in soups. They are often seasoned with a variety of herbs, sauces, and toppings to create a delicious and satisfying meal that reflects the diverse culinary traditions of China.<br></p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:42:49', '2024-07-10 08:42:49'),
(14, 7, 'chinese_food', 'Momos', 'momos', 'media/wZAZLyqjOZUqb7QFm9nIdBBEaPuZhtYNXawX63oe.jpg', 'media/82xE8UXjpoZE2w4VKTf6EBgdy3ilmIXg5x2bx5vf.jpg', 'Momos are a type of dumpling that originated in Tibet but have gained popularity across various regions in Asia, particularly in Nepal, Bhutan, North India, and parts of China. These delightful bite-sized parcels of dough are typically filled with a savory mixture of meat or vegetables, seasoned with aromatic herbs and spices, and then either steamed, fried, or occasionally boiled.', '<p>Here\'s a description of momos:</p><p><br></p><p>1. *Dough*: Momos are typically made with a simple dough of flour, water, and a pinch of salt. The dough is kneaded until smooth, then rolled out and cut into small rounds that are used to encase the filling.</p><p>2. *Filling*: The filling for momos can vary widely depending on regional preferences and personal taste. Common fillings include minced meat such as chicken, pork, or lamb, mixed with onions, garlic, ginger, and a blend of spices like cumin, coriander, and chili powder. Vegetarian options often feature a mix of finely chopped vegetables like cabbage, carrots, and mushrooms, seasoned similarly to the meat fillings.</p><p>3. *Wrapper*: The dough rounds are filled with a spoonful of the savory mixture in the center and then folded and pleated to create a distinctive crescent-shaped dumpling. The pleating not only enhances the visual appeal but also helps seal in the flavors during the cooking process.</p><p>4. *Cooking Methods*: Momos are cooked using various methods, with steaming being the most common. Steamed momos are placed in a steamer basket or on a perforated tray and cooked until the dough is tender and the filling is succulent.<span style=\"text-align: var(--bs-body-text-align);\">Fried momos are pan-fried in a little oil until they develop a crispy, golden-brown exterior, adding a delightful crunch to each bite.</span></p><p>5. *Dipping Sauce*: Momos are often served with a tangy and spicy dipping sauce made from ingredients like soy sauce, vinegar, chili paste, garlic, and cilantro. This sauce complements the flavors of the dumplings and adds an extra punch of taste.</p><p>6. *Accompaniments*: Momos are typically served hot as a snack or light meal, often accompanied by a side</p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:44:33', '2024-07-10 08:44:33'),
(15, 7, 'chinese_food', 'Hot Chilly Potato', 'hot_chilly_potato', 'media/4e0hfer3Rp4nzgKtrE481LScAfxOvogG73mwn6KW.jpg', 'media/bxhBWD9GafW0fsEUHGtP70rItSP3wsjRi0rUPg8k.jpg', 'Chilli potatoes are a popular Indo-Chinese dish that features crispy fried potatoes tossed in a flavorful and spicy sauce.', '<p>Here\'s a description of this delicious and savory dish:</p><p>1. *Preparation*: Chilli potatoes are typically made by first cutting potatoes into bite-sized cubes or wedges. These potato pieces are then coated with a thin layer of cornflour or cornstarch and deep-fried until they turn golden and crispy on the outside while remaining tender on the inside.</p><p>2. *Sauce*: The sauce for chilli potatoes is a key component that lends the dish its characteristic flavor and spice. The sauce is made by stir-frying a combination of minced garlic, ginger, onions, and bell peppers in a wok or skillet. To this aromatic base, a mix of soy sauce, chili sauce, ketchup, vinegar, and sometimes other seasonings like black pepper or sugar are added to create a sweet, savory, and slightly tangy sauce.</p><p>3. *Tossing*: Once the sauce reaches a desired consistency, the crispy fried potatoes are tossed in the sauce, ensuring that each piece is evenly coated. The potatoes absorb the flavors of the sauce, creating a delicious amalgamation of textures and tastes.</p><p>4. *Garnishes*: Chilli potatoes are often garnished with sliced green onions, sesame seeds, and sometimes fresh cilantro or parsley to add a pop of color and freshness to the dish. These garnishes also provide a subtle contrast to the rich flavors of the potatoes and the sauce.</p><p>Chilli potatoes are a favorite among lovers of Indo-Chinese cuisine for their addictive taste, crunchy texture, and vibrant presentation. Whether enjoyed at home, at a restaurant, or as street food, chilli potatoes offer a delightful and flavorful culinary experience that combines the best of Indian and Chinese flavors.<br></p>', 'Show', 'Yes', 'Thanvitha', '2024-07-10 08:47:18', '2024-07-10 08:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'Chinese Food', 'chinese_food', 'media/apr4SWY0jWsUOtCtZqOluj4Zw6ufpxfiJtonFNnb.jpg', 'Show', '2024-07-10 07:07:14', '2024-07-10 07:53:11', NULL),
(8, 'Italian Food', 'italian_food', 'media/X7tKJA9n0DEKmWubMV4XQGHsQaAXZ0UpUD4u6v7R.jpg', 'Show', '2024-07-10 07:19:01', '2024-07-10 07:52:55', NULL),
(9, 'Mexican Food', 'mexican_food', 'media/H1fcKgx924fzNV7tod1qCoXKeXzxYBp3kWVIJfYP.webp', 'Show', '2024-07-10 07:22:22', '2024-07-10 07:52:35', NULL),
(10, 'Indian Food', 'indian_food', 'media/t68RIekorVZBmiPvPUjTcSsb8y5m7o7YvIDnemL5.png', 'Show', '2024-07-10 07:23:26', '2024-07-10 07:52:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_21_025443_create_admins_table', 1),
(5, '2024_05_21_162606_create_site_settings_table', 1),
(6, '2024_07_10_043305_create_oauth_auth_codes_table', 1),
(7, '2024_07_10_043306_create_oauth_access_tokens_table', 1),
(8, '2024_07_10_043307_create_oauth_refresh_tokens_table', 1),
(9, '2024_07_10_043308_create_oauth_clients_table', 1),
(10, '2024_07_10_043309_create_oauth_personal_access_clients_table', 1),
(11, '2024_07_10_045645_create_categories_table', 2),
(12, '2024_07_10_060428_create_blogs_table', 3),
(13, '2024_07_10_061430_add_author_to_blogs', 4),
(14, '2024_07_10_065539_add_category_slug_to_blogs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vzcXRDpqm7wBz3ED7ScbGbrt5Sf7HmiS6cWkpLpL', NULL, 'http://localhost', 1, 0, 0, '2024-07-09 23:03:38', '2024-07-09 23:03:38'),
(2, NULL, 'Laravel Password Grant Client', 'RQzRi6TKMl6jC9V2bk9OOgAEK5kNzrUfv1lXbbif', 'users', 'http://localhost', 0, 1, 0, '2024-07-09 23:03:38', '2024-07-09 23:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-07-09 23:03:38', '2024-07-09 23:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4LAyKlIEtHw06wFUq0vgIofr07ufx6qImnasiAsa', NULL, '104.166.80.239', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEt3TE5jRzFXc2xUU09jaENNbzJkeEFJNWx6ckllZTk4MnNYVFBOYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LnRoYW52aXRoYWZvb2RzLnNwaWRlcmhpdC5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720617034),
('Ac2CXhtDvBxbFkryPSI3eRAfn4RZT7nFVR7IYilF', NULL, '49.37.133.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hRUXZOdXVNajdaeXN0dkNsZzlpNEtJZll1bURVNFJ3V1o2NFZqbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720615230),
('c04NNvvR1fBgyxPQQFkkzbfaxbhRa5rNtFoFXKFi', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOE1jNFpSWnBBMjI0M2FZM3FTN1NBWlN4T1dIOWd5MHdudzMzZHhGRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720621549),
('FDVJOaXBZYO75AuSJVqfpZvV5X3feBowOox1IwIe', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialhBcnlkZ3NqUmZ1TU13SHdaUmFWSUQzTFdHWXpmajB6NmZoTWZPdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720618394),
('HRHsfZb86et3Dy09rPC27pj6tqjqHbvwhJVYBBoT', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT0xjT2xaZE53cnBRNHFUVmpjaE45NjRpUVVHMmNzanc2aFNCWHdDUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1720615035),
('iwoSW5i8UeqwaGEMTj4icoSkXATbDfqWi8w1p6en', NULL, '49.37.133.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOHljUHllNG82T1o3d040OW9nbXBsa0tHd29laGh2b3RpdWQ4OXZkZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2NhdGVnb3J5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1720615350),
('JDI7bxRt04gs5Bk2HXGDxZhmVv93HbvmH1sj2DaA', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidk5BSEhaQlJ3OTZSdFdNbEpEa0lqeWY0YjJPY0Q4dWZWcUN5S2VDdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2Jsb2ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720619484),
('mnuA78EnXgscaZeqNfFsHopnubxSHByDS7Yal5TI', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0VFMXRiTjlWSG9oRDc5WlhNdVNxbWo2ZWdXNnYzNTN4WVBYNWJObSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720621531),
('q3UAxGizXjCzYybA346eUIL9wJYSzmmHoR2pBBVU', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnJWcTNucHlud0ZhbVhWYkhVejhRTVRzd3JsZzkwcnNmeVBkTWd3aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720618398),
('rhhgcZY42UCY6UWBHsHGpVpnbGwgVXrbEshCClGI', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM0NxOEwxZm5Jdkc5NmZRcW9mU0V2VDdCN0RCVHVwTWpoZWRxTFptMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2NhdGVnb3J5Ijt9czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1720622434),
('tl1nP2NqYMePVLf4avfqc8gFRotp5vCytepOufpQ', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVkpWd0NFZXpNRTRoeFdnT3ZqRFpxRWFVQXJQSHpPejV1elkxVmFNZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluL2FkbWluL2NhdGVnb3J5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1720615741),
('UyeswzMVBCn9OWBij86x73OwgTMYihrRKgmDbvTm', NULL, '104.166.80.6', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWNFNmZDTDJyT1Rxc3NwQkk0b2x3UmU1em9GdWEzd3VyWUhVS0ZrMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720617078),
('Wxo6Qj0qGoIuYfUACQV4SYT1ErpJcWtrJl4ho0nb', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUVhRksxY2pqZVNXd3pJeEloclJOaW1XYldCOUhjWVhBYjZkNmNXZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGhhbnZpdGhhZm9vZHMuc3BpZGVyaGl0LmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720617878);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `desgination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_care_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_line_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` double DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `franchise_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `city_id`, `logo`, `site_logo`, `favicon`, `site_name`, `description`, `short_description`, `desgination`, `experience`, `admin_logo`, `image`, `address`, `email`, `phone`, `customer_care_no`, `help_line_no`, `gst`, `delivery_charge`, `company`, `no_of_services`, `site_url`, `android_url`, `ios_url`, `customer_app_url`, `store_app_url`, `franchise_app_url`, `facebook`, `linkedin`, `youtube`, `pinterest`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, NULL, 'site/mNb95X45XEQ2NxgC1jH5ZBzKpCTvbJJuR6hglqcd.jpg', 'site/BRvES8pBCRAS64BXQ7TOvftMzcQDVpjlsUuQrOd3.jpg', NULL, 'Blog Application', NULL, 'Blog Application', NULL, NULL, NULL, NULL, NULL, 'blogapplication@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10 04:37:30', '2024-07-09 23:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` double DEFAULT '0',
  `new_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_mobile_number` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `email_verified` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_new_email_unique` (`new_email`),
  ADD UNIQUE KEY `users_new_mobile_number_unique` (`new_mobile_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
