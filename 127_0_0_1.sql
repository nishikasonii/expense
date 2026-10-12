-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2026 at 03:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--
CREATE DATABASE IF NOT EXISTS `blogs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogs`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(28, 'Technology', 1),
(29, 'Lifestyle', 0),
(35, 'Food', 1),
(37, 'Fashion & Beauty', 1),
(39, 'Finance', 0),
(40, 'Sports', 0),
(41, 'Automotive', 1),
(42, 'Marketing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `images` varchar(400) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `images`, `title`, `description`, `category_id`, `user_id`, `created_at`, `status`) VALUES
(1, 'food.jpg', 'Cafes in Ahmedabad', 'Welcome to Tasty Bites, a food blog created for everyone who loves delicious food.\nFood is not just something we eat; it is an experience that brings people together.\nOur blog is a place where you can discover new recipes and exciting flavors.\nWe share simple recipes that are easy to understand and prepare.\nFrom breakfast to dinner, we provide ideas for every meal of the day.\nOur recipes are suitable for beginners as well as experienced home cooks.\nWe believe that cooking should be enjoyable and stress-free.\nThat is why we focus on simple ingredients and easy cooking methods.\nOur blog includes traditional recipes passed down through generations.\nWe also explore modern recipes inspired by different cuisines.\nYou can find Indian, Chinese, Italian, Mexican, and many other dishes here.\nEvery recipe is prepared with taste and creativity in mind.\nWe also share delicious vegetarian and non-vegetarian food ideas.\nFor people who love sweets, we have a variety of dessert recipes.\nYou can discover cakes, cookies, puddings, ice creams, and other sweet treats.\nOur snack recipes are perfect for evening tea or small gatherings.\nWe also provide healthy food options for health-conscious readers.\nEating healthy does not have to mean eating boring food.\nWith the right ingredients, healthy meals can be both tasty and nutritious.\nOur blog provides useful cooking tips to make your kitchen experience easier.\nWe explain different cooking techniques in a simple way.\nWe also introduce readers to interesting spices and ingredients.\nSpices can completely change the taste and aroma of a dish.\nOur goal is to help readers understand how to use them effectively.\nWe believe that every dish has its own unique story.\nFood often reminds us of family, celebrations, festivals, and special moments.\nOur blog celebrates these memories through delicious recipes.\nWe encourage everyone to experiment with food and create their own recipes.\nCooking gives us an opportunity to be creative.\nEven simple ingredients can be transformed into a wonderful meal.\nOur food blog is designed to inspire people to try something new.\nYou can browse different recipes according to your taste and preferences.\nEach recipe provides clear instructions to make cooking easier.\nWe also share serving suggestions and useful preparation tips.\nOur aim is to make every recipe practical and enjoyable.\nFood photography is another important part of our blog.\nBeautiful pictures can make a delicious dish even more appealing.\nWe try to present food in a way that inspires readers.\nOur blog also explores popular food trends from around the world.\nWe love discovering new flavors and sharing them with our readers.\nStreet food is another exciting topic featured on our blog.\nStreet food reflects the culture and lifestyle of different places.\nFrom spicy snacks to delicious desserts, there is always something interesting to discover.\nWe also enjoy exploring traditional foods from different regions of India.\nEvery region has its own special ingredients and cooking styles.\nIndian cuisine is famous for its variety of flavors and spices.\nOur blog celebrates this diversity through regional recipes.\nWe also believe that food is a great way to connect with different cultures.\nTrying food from another culture can be like taking a small culinary journey.\nOur recipes are created to bring that experience into your kitchen.\nFamily meals are an important part of our food philosophy.\nSharing a meal with family can create beautiful memories.\nWe hope our recipes become part of your special moments.\nWhether you are cooking for yourself or a large family, we have something for you.\nOur quick recipes are especially useful for busy people.\nThey help you prepare tasty meals without spending too much time in the kitchen.\nWe also share special recipes for birthdays, festivals, and celebrations.\nGood food can make every celebration more memorable.\nOur blog is continuously growing with new recipes and ideas.\nWe welcome suggestions and ideas from our readers.\nWe believe that food blogging is about sharing and learning together.\nEvery reader brings a different food experience to the community.\nWe want our blog to be a friendly place for food lovers.\nYou can explore recipes, learn cooking techniques, and discover new ingredients.\nOur content is created with the goal of making cooking more enjoyable.\nWe also encourage beginners to start cooking without fear.\nMistakes are a natural part of learning how to cook.\nWith practice, anyone can become better at preparing food.\nThe kitchen can be a place for creativity, learning, and happiness.\nOur food blog aims to make that experience easier for everyone.\nWe want every recipe to inspire you to pick up your spoon and start cooking.\nFrom simple homemade meals to special dishes, there is always something new to try.\nWe believe that delicious food does not always require complicated recipes.\nSometimes the simplest dishes can be the most satisfying.\nFresh ingredients and proper preparation can make a big difference.\nOur blog focuses on bringing these simple ideas to your everyday cooking.\nWe also believe that food should look as good as it tastes.\nPresentation can make an ordinary meal feel special.\nWith a little creativity, anyone can create a beautiful plate.\nOur goal is to help you enjoy every step of the cooking process.\nWe hope you find inspiration in our recipes and food stories.\nWe hope our blog becomes a useful part of your daily cooking routine.\nWhether you are a food lover, home cook, student, or professional, you are welcome here.\nThere is always something delicious waiting to be discovered.\nExplore our recipes and find your next favorite dish.\nTry new flavors, experiment with ingredients, and enjoy the process.\nShare your food with your friends and family.\nCreate memories around the dining table.\nDiscover the joy of homemade cooking with Tasty Bites.\nThank you for visiting our food blog.\nWe hope you enjoy reading, cooking, and exploring with us.\nLet every recipe bring a little more flavor and happiness to your day.\n**Tasty Bites – where every dish tells a delicious story.\n', 35, 1, '2026-09-16 15:23:34', 1),
(2, 'technology.jpg', 'NextGen Stack', 'Welcome to Tech World, a technology blog created for people who love technology and innovation.\nTechnology has become an important part of our everyday lives.\nIt has changed the way we communicate, work, learn, and entertain ourselves.\nOur blog is dedicated to sharing the latest information about the world of technology.\nWe cover a wide range of topics related to modern technology.\nReaders can discover articles about computers, smartphones, software, and the internet.\nWe also provide useful information about artificial intelligence and machine learning.\nArtificial intelligence is changing many industries around the world.\nOur blog explains new technologies in a simple and understandable way.\nWe believe technology should be easy for everyone to understand.\nOur articles are written for students, developers, professionals, and technology enthusiasts.\nWe share information about the latest gadgets and electronic devices.\nSmartphones are one of the most important technologies used today.\nOur blog explores new smartphone features, applications, and innovations.\nWe also discuss laptops, tablets, smartwatches, and other smart devices.\nTechnology is constantly changing and introducing new possibilities.\nOur goal is to help readers stay updated with these changes.\nWe also publish articles about programming and software development.\nProgramming is an important skill in today\'s digital world.\nDevelopers use programming languages to create websites, applications, and software.\nOur blog provides useful information about popular programming languages.\nWe discuss languages such as PHP, JavaScript, Python, Java, and many others.\nWe also explore web development technologies and frameworks.\nWeb development allows businesses and individuals to create powerful online platforms.\nOur blog provides tips for beginners who want to learn development.\nWe also discuss databases and how they are used in modern applications.\nDatabase technologies help organizations store and manage large amounts of information.\nCloud computing is another important topic covered on our technology blog.\nCloud services allow users to store data and use applications over the internet.\nMany businesses depend on cloud technology for their daily operations.\nWe explain cloud computing concepts and their practical applications.\nCybersecurity is also an important part of the modern technology world.\nProtecting personal and business information has become increasingly important.\nOur blog shares information about common cybersecurity threats and safety practices.\nWe also discuss ways to protect accounts, devices, and digital information.\nThe internet has connected people from different parts of the world.\nIt has created new opportunities for communication, education, and business.\nOur blog explores how internet technologies continue to evolve.\nWe also provide information about networking and communication technologies.\n5G technology has created new possibilities for faster digital communication.\nWe discuss how new network technologies can affect our daily lives.\nArtificial intelligence is another major area of interest on our platform.\nAI can be used in education, healthcare, business, entertainment, and many other fields.\nWe explain AI concepts and their practical uses.\nOur blog also explores the development of chatbots and intelligent applications.\nAutomation is helping organizations complete many tasks more efficiently.\nWe discuss how automation is changing workplaces and industries.\nRobotics is another exciting area of modern technology.\nRobots are being developed for manufacturing, research, transportation, and other applications.\nOur articles explore the latest developments in robotics and automation.\nWe also discuss emerging technologies that may shape the future.\nVirtual reality and augmented reality are changing the way people interact with digital content.\nThese technologies are being used in gaming, education, training, and entertainment.\nBlockchain technology is also an important subject in the digital world.\nOur blog explains blockchain concepts and their possible applications.\nWe also discuss software updates and important technology announcements.\nKeeping software updated can improve features, performance, and security.\nOur technology blog aims to provide useful and informative content.\nWe try to explain complex technical concepts using simple language.\nOur articles can help beginners understand new technologies more easily.\nExperienced technology users can also discover new ideas and developments.\nWe believe learning about technology is a continuous process.\nNew tools, platforms, and technologies are introduced every day.\nStaying informed can help people make better use of technology.\nTechnology can also create new career opportunities for students and professionals.\nLearning programming and digital skills can open doors to many career paths.\nOur blog provides learning resources and useful technology tips.\nWe also share practical solutions to common technical problems.\nReaders can find guides that explain different technologies step by step.\nWe aim to make technical learning more interesting and accessible.\nTechnology is not only about devices and software.\nIt is also about solving problems and improving people\'s lives.\nInnovation helps businesses create better products and services.\nTechnology can make many everyday tasks faster and easier.\nIt also allows people to work and collaborate from different locations.\nDigital transformation is changing how businesses operate.\nOur blog explores these changes and their impact on different industries.\nWe also discuss important trends in the technology\n', 28, 1, '2026-09-17 18:12:41', 0),
(3, '', 'Thinkific Lifestyle ', 'Welcome to Life & Style, a lifestyle blog created to inspire better and happier living.\nLifestyle is about the way we live, think, work, and enjoy our everyday lives.\nOur blog brings together ideas that can make daily life more meaningful.\nWe cover a variety of topics related to modern lifestyle.\nReaders can discover articles about fashion, travel, food, hobbies, and personal growth.\nWe believe that small changes can make a big difference in everyday life.\nOur goal is to provide simple ideas that are easy to follow.\nWe share tips for creating a comfortable and enjoyable daily routine.\nFashion is an important part of personal style and self-expression.\nOur blog explores fashion trends, clothing ideas, and styling inspiration.\nWe believe everyone can develop their own unique sense of style.\nWe also share ideas for choosing outfits for different occasions.\nBeauty and personal care are other popular topics on our lifestyle blog.\nWe provide simple tips for maintaining a fresh and confident appearance.\nSelf-care is an important part of maintaining a balanced lifestyle.\nTaking time for yourself can help create a positive daily routine.\nTravel is another exciting part of the lifestyle experience.\nOur blog explores interesting destinations and travel ideas.\nWe share tips that can help make trips more enjoyable and organized.\nTravel allows people to experience different cultures, places, and traditions.\nExploring new places can also create unforgettable memories.\nOur blog provides inspiration for both short trips and longer journeys.\nWe also discuss useful ideas for planning affordable travel.\nHome and interior decoration are important parts of comfortable living.\nOur blog shares ideas for creating beautiful and welcoming spaces.\nSimple decoration changes can give a home a fresh appearance.\nWe also provide organization tips for keeping living spaces neat.\nA clean and organized environment can make everyday activities easier.\nPersonal development is another important topic on our platform.\nWe encourage readers to develop positive habits and useful skills.\nSetting realistic goals can help people move toward their dreams.\nTime management can also make daily life more productive.\nOur blog shares simple ideas for managing work and personal activities.\nWe believe that productivity should be balanced with relaxation.\nTaking regular breaks can help people enjoy their daily routines.\nHobbies are a wonderful way to spend free time.\nReading, photography, music, art, and gardening are examples of enjoyable hobbies.\nHobbies can help people discover new interests and talents.\nOur blog encourages readers to make time for activities they enjoy.\nRelationships and social connections are also an important part of life.\nSpending quality time with family and friends can create lasting memories.\nWe share ideas for enjoying meaningful moments with loved ones.\nCelebrations and special occasions can make life more enjoyable.\nOur blog provides ideas for making everyday moments feel special.\nFood and cooking are also connected to a healthy and enjoyable lifestyle.\nWe share simple meal ideas and food-related experiences.\nTrying new recipes can be a fun and creative activity.\nWe also explore different food cultures and dining experiences.\nFitness and active living are important aspects of modern lifestyles.\nRegular physical activity can become a positive part of a daily routine.\nOur blog shares general ideas for staying active and energetic.\nWe also discuss outdoor activities and recreational ideas.\nNature can provide a refreshing break from busy everyday life.\nSpending time outdoors can be a great way to relax and explore.\nTechnology has also become an important part of modern lifestyles.\nOur blog explores how technology influences everyday activities.\nSmart devices and digital services can make many tasks more convenient.\nWe also encourage readers to maintain a healthy balance with technology.\nMindful use of digital devices can create more time for other activities.\nA positive mindset can influence the way we experience everyday life.\nOur blog shares ideas for staying motivated and optimistic.\nWe believe that happiness can be found in simple everyday experiences.\nEnjoying a good meal, reading a book, or spending time with family can bring joy.\nEveryone has a different definition of a good lifestyle.\nOur goal is not to define one perfect way of living.\nInstead, we provide idea\n', 29, 1, '2026-09-17 18:23:57', 1),
(4, 'fashion.jpg', 'Style Beauty Hub', 'Welcome to Fashion Trends, a fashion blog created for people who love style and creativity.\nFashion is a powerful way to express personality, confidence, and individuality.\nOur blog brings you interesting ideas from the world of fashion.\nWe cover the latest fashion trends and styling inspiration.\nFashion is constantly changing with new designs and creative ideas.\nOur goal is to help readers discover styles that match their personality.\nWe believe that fashion should be enjoyable and accessible to everyone.\nOur blog includes fashion ideas for different seasons and occasions.\nWe share outfit inspiration for casual, formal, and everyday looks.\nReaders can discover ideas for creating stylish outfits with simple clothing.\nWe also explore popular clothing styles from different cultures.\nTraditional fashion has an important place in the modern fashion industry.\nOur blog celebrates both traditional and contemporary fashion.\nWe share ideas about ethnic wear and modern outfits.\nFashion accessories can make an outfit more attractive and complete.\nOur blog explores accessories such as bags, shoes, watches, and jewelry.\nWe also provide ideas for selecting accessories that match different outfits.\nColors play an important role in creating a fashionable look.\nWe discuss different color combinations and styling ideas.\nChoosing the right colors can help create a balanced outfit.\nWe also explore different patterns, prints, and fabric styles.\nDenim is one of the most popular and versatile fashion choices.\nOur blog shares different ways to style denim for various occasions.\nStreet fashion is another exciting part of modern style.\nStreetwear combines comfort, creativity, and individuality.\nWe explore popular streetwear trends and outfit combinations.\nFormal fashion is also an important topic on our blog.\nWe provide ideas for professional outfits and special occasions.\nChoosing the right outfit can help create a polished appearance.\nWe also discuss fashion ideas for parties and celebrations.\nSeasonal fashion allows people to experiment with different styles.\nSummer fashion often focuses on comfortable and lightweight clothing.\nWinter fashion provides opportunities to experiment with layers and accessories.\nSpring and autumn also bring unique colors and clothing trends.\nOur blog explores fashion ideas for every season.\nWe believe comfort is an important part of personal style.\nA fashionable outfit should also allow you to feel comfortable and confident.\nOur blog encourages readers to develop their own fashion identity.\nFollowing trends can be fun, but personal style is equally important.\nWe also share useful tips for building a practical wardrobe.\nA good wardrobe can include basic pieces that work with different outfits.\nMixing and matching clothes can create many different looks.\nOur blog provides ideas for making the most of existing clothes.\nFashion does not always require expensive clothing or accessories.\nCreativity can transform simple outfits into stylish looks.\nWe also explore affordable fashion ideas for budget-conscious readers.\nSustainable fashion is becoming an important topic around the world.\nOur blog discusses ways to make more thoughtful fashion choices.\nReusing and styling existing clothes can help reduce unnecessary waste.\nWe also explore the importance of choosing quality clothing.\nFashion designers play an important role in creating new styles.\nOur blog highlights interesting designs and fashion collections.\nWe explore how designers use colors, fabrics, and patterns creatively.\nFashion shows are another exciting part of the fashion industry.\nThey introduce new collections and inspire future trends.\nWe also discuss fashion events and important moments in the industry.\nCelebrity fashion often influences popular clothing trends.\nOur blog explores different celebrity-inspired fashion ideas.\nWe focus on styling concepts rather than simply following trends.\nBeauty and fashion often complement each other.\nOur blog also shares ideas about coordinating hairstyles and outfits.\nFootwear is another important element of personal style.\nWe explore sneakers, boots, sandals, heels, and other footwear styles.\nThe right footwear can change the overall appearance of an outfit.\nBags are both useful accessories and important fashion pieces.\nOur blog provides ideas for selecting bags for different occasions.\nJewelry can add personality and elegance to an outfit.\nWe explore simple and creative ways to style jewelry.\nFashion photography is another interesting part of our blog.\nGood photography can showcase clothing and accessories beautifully.\nWe also share ideas for creating attractive fashion content.\nOur blog is designed for beginners as well as experienced fashion lovers.\nYou do not need to be a fashion expert to enjoy personal style.\nEveryone can experiment with different looks and discover what works for them.\nFashion is about creativity, confidence, and personal expression.\nThere are no limits to exploring new combinations and styles.\nOur blog encourages readers to try new fashion ideas.\nWe also believe that personal comfort and confidence should come first.\nFashion should be a way to express yourself rather than a source of pressure.\nOur content provides inspiration for creating unique and practical looks.\nWe regularly explore new fashion ideas and changing trends.\nReaders can visit our blog to discover fresh styling inspiration.\nWe also welcome fashion suggestions and ideas from our readers.\nOur goal is to create a friendly community for fashion enthusiasts.\nTogether, we can explore the exciting and creative world of fashion.\nWhether you love traditional outfits or modern streetwear, there is something for everyone.\nFashion allows us to experiment, express ourselves, and have fun.\nWe hope our blog inspires you to explore your own personal style.\nDiscover new trends, experiment with outfits, and express your individuality.\nThank you for visiting **Fashion Trends**.\nWe hope our fashion ideas help you feel creative, confident, and stylish.\n**Fashion Trends – Express Yourself, Define Your Style.\n', 37, 1, '2026-09-18 15:28:18', 0),
(5, 'finance.jpg', 'Smart Finance Guide', 'Welcome to Finance World, a finance blog created to make financial topics simple and easy to understand.\nFinance is an important part of everyday life for individuals, families, and businesses.\nUnderstanding money can help people make informed financial decisions.\nOur blog provides useful information about personal finance and money management.\nWe cover a wide range of topics related to saving, budgeting, investing, and financial planning.\nBudgeting is an important step toward managing money effectively.\nOur blog explains how to create a simple and practical monthly budget.\nA good budget can help people understand where their money is being spent.\nSaving money is another important part of financial planning.\nWe share general ideas and strategies that can help develop regular saving habits.\nEmergency funds can provide financial support when unexpected expenses occur.\nOur blog explains the basic concept of emergency savings and financial preparedness.\nWe also discuss different types of bank accounts and their common uses.\nUnderstanding banking services can make everyday financial activities easier.\nCredit and loans are also important topics in personal finance.\nOur articles explain basic concepts related to borrowing and repayment.\nWe discuss interest rates and how they can affect the cost of borrowing.\nUnderstanding loan terms can help readers evaluate financial products carefully.\nCredit scores are another important part of modern personal finance.\nOur blog explains what credit scores generally represent and why they matter.\nWe also discuss responsible approaches to using credit cards.\nCredit cards can be useful financial tools when used carefully.\nInvesting is another major topic covered on our finance blog.\nWe explain basic investment concepts for people who are new to investing.\nInvestments can include different types of financial assets and products.\nEach investment option can have different levels of risk and potential return.\nOur blog focuses on helping readers understand these basic concepts.\nWe also explain the difference between saving and investing.\nSaving is generally focused on preserving money for future needs.\nInvesting generally involves putting money into assets with the possibility of growth or income.\nUnderstanding financial goals can help people decide how to manage their money.\nShort-term and long-term financial goals may require different approaches.\nOur blog provides information about setting realistic financial goals.\nWe also discuss the importance of planning for future expenses.\nRetirement planning is an important part of long-term financial preparation.\nOur articles explain basic retirement planning concepts.\nWe also discuss the importance of starting financial planning early.\nFinancial education can help people understand money-related decisions more clearly.\nOur goal is to make financial information accessible to beginners.\nWe use simple explanations instead of complicated financial terminology whenever possible.\nStudents can also find useful information about managing their personal finances.\nLearning financial basics at an early age can help develop good money habits.\nWe also provide general information about managing expenses while studying.\nFor working professionals, we discuss budgeting and financial organization.\nManaging income and expenses can help create a clearer financial picture.\nWe also explore the basics of financial planning for families.\nFamilies may have different financial goals and responsibilities.\nPlanning can help organize expenses, savings, and future requirements.\nBusinesses also depend on effective financial management.\nOur blog covers basic concepts related to business finance.\nWe discuss revenue, expenses, profits, and other fundamental financial terms.\nUnderstanding financial statements can help explain the financial position of a business.\nWe also introduce readers to basic accounting concepts.\nFinance and technology are increasingly connected in today\'s digital world.\nDigital banking has made many financial services more convenient.\nOnline payments and mobile banking are now widely used for everyday transactions.\nOur blog explores the role of technology in modern financial services.\nWe also discuss digital security and safe financial practices.\nProtecting financial information is an important part of responsible digital banking.\nReaders can learn general tips for keeping financial accounts secure.\nFinancial scams and fraud can create serious problems for individuals and businesses.\nOur blog provides awareness-focused information about common financial scams.\nLearning how scams work can help people recognize suspicious financial requests.\nWe also discuss the importance of checking information before making financial decisions.\nFinancial markets are another important part of the finance industry.\nOur blog explains basic concepts related to stocks, bonds, and other financial markets.\nWe also discuss how economic conditions can influence financial markets.\nInflation is an important economic concept that affects purchasing power.\nOur articles explain inflation and its general impact on consumers and businesses.\nInterest rates can also influence borrowing, saving, and economic activity.\nWe explain these concepts using simple examples whenever possible.\nPersonal financial planning is different for every individual.\nFinancial decisions depend on income, expenses, goals, time horizons, and risk tolerance.\nOur blog provides educational information rather than personalized financial advice.\nReaders should consider their own circumstances before making financial decisions.\nWe encourage readers to research financial products carefully.\nUnderstanding fees, terms, risks, and conditions is an important part of financial decision-making.\nOur goal is to encourage better financial awareness and education.\nWe regularly explore useful topics from the changing world of finance.\nReaders can visit our blog to learn about different financial concepts.\nWe also aim to make financial learning practical and interesting.\nWhether you are a student, professional, entrepreneur, or beginner, there is something to explore.\nFinance does not have to be complicated when concepts are explained clearly.\nSmall improvements in financial knowledge can help people understand their options better.\nOur blog encourages readers to learn, research, and plan carefully.\nWe believe financial education is a valuable skill for everyone.\nExplore our articles to discover useful information about money and finance.\nLearn the basics, understand financial concepts, and build your financial knowledge.\nThank you for visiting **Finance World**.\nWe hope our content helps you become more confident in understanding financial topics.\n**Finance World – Learn About Money, Plan for Tomorrow.**\n', 39, 1, '2026-09-18 15:31:04', 1),
(6, 'sport.jpg', 'Sports Action Hub', 'Welcome to Sports World, a sports blog created for people who love games, fitness, and competition.\nSports are an important part of entertainment and healthy living.\nThey bring people together and create memorable moments.\nOur blog provides interesting information about different sports from around the world.\nWe cover popular sports such as cricket, football, basketball, tennis, and badminton.\nWe also explore athletics, swimming, hockey, volleyball, and other exciting sports.\nOur goal is to keep sports enthusiasts informed and entertained.\nWe share news, stories, facts, and interesting information about the sporting world.\nCricket is one of the most popular sports followed by millions of fans.\nOur blog covers cricket tournaments, teams, players, and important matches.\nFootball is another sport with a huge global following.\nWe explore football competitions, clubs, players, and memorable moments.\nBasketball is known for its fast pace and exciting gameplay.\nOur blog provides interesting information about basketball and its major competitions.\nTennis is a popular individual sport played around the world.\nWe discuss tournaments, players, records, and important tennis events.\nBadminton is another exciting sport enjoyed by people of all ages.\nWe share information about badminton players, tournaments, and techniques.\nHockey has a long history and is an important sport in many countries.\nOur blog explores hockey competitions, teams, and memorable performances.\nAthletics includes many different events such as running, jumping, and throwing.\nWe discuss important athletic events and achievements.\nSports are not only about competition but also about discipline and dedication.\nAthletes spend years practicing to improve their skills and performance.\nTraining and preparation are important parts of every sport.\nOur blog explores the effort and commitment required by athletes.\nFitness is also closely connected with sports and active living.\nRegular physical activity can be an important part of a healthy lifestyle.\nWe share general information about exercise, fitness, and sports activities.\nTeamwork is one of the most valuable lessons that sports can teach.\nPlayers must work together to achieve common goals.\nSports can also help develop communication and leadership skills.\nDiscipline is another important quality developed through regular practice.\nAthletes learn to manage their time and remain committed to their goals.\nSports also teach people how to handle both success and disappointment.\nWinning can be exciting, while losing can provide valuable learning experiences.\nEvery match can teach players something new about their abilities.\nOur blog also highlights memorable sporting moments from different competitions.\nRecords and achievements are an important part of sports history.\nWe explore interesting records and milestones achieved by athletes.\nSports statistics can provide useful information about player and team performances.\nOur blog shares interesting facts and statistics for sports enthusiasts.\nWe also discuss major sporting events and championships.\nInternational competitions bring athletes from different countries together.\nThese events allow fans to experience different cultures through sports.\nSports can create a strong sense of community among fans.\nSupporters often come together to celebrate their favorite teams and players.\nOur blog explores the passion and excitement that sports create among fans.\nWe also discuss the history and development of different sports.\nUnderstanding the history of a sport can make watching it more interesting.\nRules and playing techniques are important parts of every game.\nOur articles explain basic sports rules in simple language.\nThis can help beginners understand and enjoy different sports.\nWe also provide information about sports equipment and facilities.\nThe right equipment can be important for practicing a sport safely and effectively.\nSports technology is changing the way games are played and analyzed.\nModern technology is used for performance tracking and match analysis.\nTechnology can also help officials make certain decisions during competitions.\nOur blog explores the relationship between sports and technology.\nWe also discuss the growing popularity of esports and competitive gaming.\nEsports has become an important part of the modern entertainment industry.\nYoung people around the world are showing increasing interest in competitive gaming.\nOur blog explores different aspects of this developing sports and entertainment category.\nSports also provide opportunities for people to develop confidence.\nParticipating in games can encourage teamwork and social interaction.\nSchool and college sports can help students develop valuable skills.\nWe also encourage people to participate in recreational sports.\nSports can be enjoyed professionally or simply as a hobby.\nDifferent people enjoy different sports based on their interests and abilities.\nOur blog aims to provide information for both casual fans and dedicated enthusiasts.\nWe want Sports World to be a place where readers can discover something new.\nOur articles are written in a simple and engaging style.\nWe regularly explore new sports topics and interesting sporting stories.\nReaders can learn about teams, players, competitions, and sporting traditions.\nWe also welcome sports-related ideas and discussions from our readers.\nSports create conversations that connect people across different backgrounds.\nA great sporting moment can become a lasting memory for fans.\nSports also inspire people to set goals and work toward improvement.\nHard work and consistent practice are important elements of athletic development.\nOur blog celebrates the dedication and effort involved in sports.\nWe believe sports can provide entertainment, learning, and inspiration.\nWhether you enjoy watching games or playing them, there is always something to discover.\nExplore our articles and stay connected with the exciting world of sports.\nFollow the latest stories, learn interesting facts, and discover new sporting topics.\nThank you for visiting **Sports World**.\nWe hope our blog becomes a useful destination for sports lovers everywhere.\n**Sports World – Where Passion Meets the Game.', 40, 1, '2026-09-18 17:00:34', 0),
(7, 'automotive.jpg', 'Auto Drive Hub', 'Welcome to Auto World, an automotive blog created for people who love cars, bikes, and everything related to the automobile industry.\nThe automotive world is constantly changing with new technologies and innovative vehicles.\nOur blog brings useful and interesting information about the world of automobiles.\nWe cover cars, motorcycles, electric vehicles, and automotive technology.\nOur goal is to keep automobile enthusiasts informed about the latest developments.\nWe share information about new vehicle launches and upcoming models.\nReaders can discover details about different types of vehicles and their features.\nCars have become an important part of modern transportation.\nOur blog explores different categories of cars for various needs and lifestyles.\nWe discuss hatchbacks, sedans, SUVs, luxury cars, and sports cars.\nWe also explore motorcycles and their different styles and features.\nMotorcycles are popular for daily transportation as well as recreation.\nOur blog provides interesting information about popular motorcycle categories.\nElectric vehicles are becoming an important part of the automotive industry.\nWe explore electric cars, electric bikes, and developments in EV technology.\nElectric vehicles use electric power instead of traditional fuel-based engines.\nOur blog explains basic concepts related to electric vehicle technology.\nWe also discuss charging systems and battery technology.\nAutomotive technology is improving rapidly around the world.\nModern vehicles include advanced features designed to improve comfort and safety.\nOur blog explores technologies such as driver assistance systems and connected vehicles.\nConnected vehicles can use digital technologies to provide additional services.\nWe also discuss infotainment systems and smart features found in modern vehicles.\nVehicle safety is an important topic for every driver and passenger.\nOur blog provides general information about common vehicle safety features.\nFeatures such as airbags, anti-lock braking systems, and stability control can improve vehicle safety.\nWe also discuss the importance of responsible driving and regular vehicle maintenance.\nRegular maintenance can help keep a vehicle in good operating condition.\nOur blog provides general information about servicing and vehicle care.\nEngine maintenance is an important part of owning a traditional vehicle.\nWe explain basic concepts related to engines and their components.\nWe also explore different types of engines used in modern vehicles.\nFuel efficiency is another important consideration for many vehicle owners.\nOur blog discusses general factors that can affect fuel consumption.\nDriving habits, vehicle condition, and road conditions can influence efficiency.\nTires are another important part of every vehicle.\nProper tire maintenance can contribute to safe and comfortable driving.\nOur blog shares general information about tire care and maintenance.\nWe also discuss brakes and their importance in vehicle safety.\nRegular inspection of important vehicle components can help identify potential issues.\nAutomotive design is another exciting part of the industry.\nVehicle designers combine appearance, functionality, and technology when creating new models.\nOur blog explores interesting automotive designs and styling trends.\nLuxury automobiles represent another fascinating area of the automotive world.\nLuxury vehicles often combine advanced technology, premium materials, and distinctive designs.\nSports cars are known for their performance-focused engineering and styling.\nOur blog explores the features and technology behind performance vehicles.\nWe also discuss off-road vehicles designed for challenging terrain.\nSUVs and other utility vehicles are popular for their versatility.\nThe automotive industry also plays an important role in the global economy.\nMillions of people work in automobile manufacturing, sales, servicing, and related industries.\nAutomotive companies continuously invest in research and development.\nNew technologies are helping manufacturers develop more efficient and connected vehicles.\nAutonomous driving is another developing area of automotive technology.\nOur blog explores the basic concepts behind automated and assisted driving systems.\nWe also discuss the role of sensors, cameras, and software in modern vehicles.\nAutomotive software has become increasingly important in vehicle development.\nModern vehicles can contain many electronic systems and software-controlled features.\nWe also explore how technology is changing the driving experience.\nVehicle customization is popular among many automotive enthusiasts.\nPeople customize vehicles through accessories, styling changes, and other modifications.\nOur blog discusses general automotive customization trends.\nWe also explore the history of famous automobiles and important automotive developments.\nUnderstanding automotive history helps us appreciate how vehicles have evolved.\nClassic cars remain popular among collectors and automobile enthusiasts.\nOur blog shares interesting information about classic vehicles and automotive heritage.\nMotorsports are another exciting part of the automotive world.\nRacing events demonstrate vehicle performance, engineering, and driver skill.\nWe explore different types of motorsports and their technological developments.\nAutomotive enthusiasts can learn about racing cars, motorcycles, and major competitions.\nOur blog also provides general tips for people interested in buying vehicles.\nUnderstanding vehicle features and ownership costs can help consumers compare options.\nWe encourage readers to research specifications, prices, maintenance requirements, and safety features.\nEvery driver has different transportation needs and preferences.\nOur goal is to provide information that helps readers understand their available options.\nWe also discuss developments in sustainable transportation.\nThe automotive industry is exploring new ways to reduce environmental impact.\nElectric vehicles and other alternative technologies are part of this transition.\nOur blog follows these developments and explains them in simple language.\nWe aim to make automotive topics accessible to beginners and experienced enthusiasts.\nOur articles cover both basic concepts and interesting industry developments.\nReaders can explore vehicle technology, maintenance, design, performance, and automotive history.\nWe regularly share fresh topics from the changing automotive industry.\nWe also welcome ideas and discussions from automobile enthusiasts.\nCars and motorcycles are more than machines for many people.\nThey can represent freedom, innovation, engineering, and personal interests.\nOur blog celebrates the technology and creativity behind modern automobiles.\nWhether you are a car enthusiast, motorcycle fan, driver, or technology lover, there is something to explore.\nDiscover new vehicles, learn about automotive technology, and explore the world of automobiles.\nThank you for visiting **Auto World**.\nWe hope our blog becomes a useful destination for automotive enthusiasts everywhere.\n**Auto World – Explore Cars, Discover Technology, Experience the Road.', 41, 1, '2026-09-18 17:02:25', 1),
(8, 'technology.jpg', 'How to Find the Right Tech Jobs for You', 'Finding the right tech job starts with understanding your skills, interests, and career goals. Begin by identifying the technologies you enjoy working with, such as programming, web development, data analysis, cybersecurity, cloud computing, or artificial intelligence. Research different job roles and compare their responsibilities, required skills, and career opportunities. Build a strong resume that highlights your technical abilities, projects, certifications, and experience. Creating a portfolio can also help employers see your practical skills. Use professional job platforms, company websites, networking events, and LinkedIn to discover opportunities. Finally, prepare for technical interviews and continuously improve your skills to stay competitive in the technology industry.\r\n', 28, 1, '2026-09-21 15:41:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'nishika', 'nishika@webexpertinfotech.com', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `birth_date`) VALUES
(1, 'J.K.', 'Rowling', '0000-00-00'),
(2, 'George', 'Orwell', '0000-00-00'),
(3, 'Harper', 'Lee', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `101` int(3) NOT NULL,
  `Harry potter` varchar(12) CHARACTER SET cp850 COLLATE cp850_general_ci NOT NULL,
  `1` int(1) NOT NULL,
  `12.99` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `price`, `101`, `Harry potter`, `1`, `12.99`) VALUES
(0, NULL, NULL, NULL, 101, 'Harry potter', 1, 12.99),
(102, '1984', 2, 9.99, 0, '', 0, 0.00),
(103, '1984', 3, 9.99, 0, '', 0, 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);
--
-- Database: `expense`
--
CREATE DATABASE IF NOT EXISTS `expense` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `expense`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Books'),
(2, 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `details` text NOT NULL,
  `added_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'nishika', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"expense\",\"table\":\"category\"},{\"db\":\"expense\",\"table\":\"users\"},{\"db\":\"expense\",\"table\":\"expense\"},{\"db\":\"blogs\",\"table\":\"posts\"},{\"db\":\"blogs\",\"table\":\"categories\"},{\"db\":\"blogs\",\"table\":\"users\"},{\"db\":\"student\",\"table\":\"students\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('blogs', 'posts', 'title');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-10-12 13:53:24', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":121.98600000000002}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class`) VALUES
(1, 'Amit', '9'),
(2, 'Priya', '10'),
(3, 'Rahul', '11'),
(4, 'Om', '11'),
(5, 'Neha', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
