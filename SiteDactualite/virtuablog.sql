-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 15 nov. 2020 à 02:03
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `virtuablog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(10) NOT NULL,
  `btitle` varchar(150) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `country` varchar(75) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `category` varchar(100) NOT NULL,
  `bbody` text NOT NULL,
  `bpa` varchar(50) NOT NULL,
  `bpb` varchar(50) NOT NULL,
  `dbc` varchar(50) NOT NULL,
  `posted_at` varchar(30) NOT NULL,
  `approved` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `btitle`, `fullname`, `phone`, `email`, `country`, `state`, `city`, `category`, `bbody`, `bpa`, `bpb`, `dbc`, `posted_at`, `approved`) VALUES
(10, 'Priyanka Chopra, Kareena Kapoor ', 'test', '9872778144', 'test@test.com', '', '', 'Ludhiana', 'bollywood', 'On Friday evening, Kareena Kapoor drove down all the way from Pune to Mumbai for shooting her televised act for an award ceremony. What should have ended in a few hours took them forever, thanks to Priyanka Chopra.\r\n\r\nBebo finished with her make-up and hair and arrived on the stage to see that it was already occupied by Priyanka Chopra. She had to wait for four hours before she could actually shoot her performance.\r\n\r\nA source present at the awards revealed, â€œKareena landed at Yash Raj Studios around midnight; she found that the stage was occupied by Priyanka. She waited patiently for sometime. On spotting her, PC came down from the stage and told her that she could not give the stage until 1 am (although Kareena was assigned the stage at 12 am).â€\r\n\r\nPC continued to rehearse till 4 am, by that time, the exhausted Kareena had left for home.\r\n\r\nThe next morning, Kareena asked her manager Zahid to cancel the shooting (with Salman for Bodyguard), which was scheduled on Saturday in Pune and then came back to the studio to finish her song.\r\n\r\nNormally, the fiery Bebo would have flared up because she was kept waiting for more than four hours. Although, she was smarting with humiliation, she maintained her cool. Later, she gave a call to the organizers and gave her piece.\r\n\r\nThey explained it to her that because of some technical problems, Priyankaâ€™s act took a longer time.\r\n\r\nPCâ€™s spokesperson said, â€œPriyanka was not aware that Bebo had to wait for hours. Not that I am aware of. Priyanka had a long act with many changes.â€\r\n\r\nBebo remained unavailable for comment.', 'uploads/436611priyanka-and-kareena.jpg', 'uploads/424298', 'uploads/11573', 'undefined', 'approve'),
(11, 'Rimi Sen Likes Irfan Khan A Lot', 'raman', '9872778144', 'y@gmail.com', '', '', 'Lucknow', 'bollywood', 'Very recently we read somewhere that actress Rimi Sen had said in an interview that she was not keen on doing multi-starrers. However, contrary to her statement, in todayâ€™s release, Rimi Sen will be seen in a multistarrer, the Anees Bazmee directed THANK YOU, featuring Akshay Kumar, Suneil Shetty, Irrfan Khan, Sonam Kapoor and of course Rimi herself. \r\n\r\nWhen we clarified the same from Rimi, the straight forward actress, without batting an eyelid, accepted that she had indeed made such a statement. She told us, â€œActually most muti-starrers donâ€™t have much role for actresses.\r\n\r\nThat is why I am not very keen on them.â€ So, why did she decide to do THANK YOU? And Rimi replied, â€œI really like Irrfan Khan, both as an actor and as a person and thatâ€™s why I wanted to act with him. Another reason is that I like the way Anees Bazmee makes his films and thatâ€™s why I chose to do THANK YOU.â€ About the duration of her shoot she said, â€œI shot for about a month.', 'uploads/290108rimi-sen-hot-phoot-shoot-278x300.jpg', 'uploads/432461', 'uploads/419529', 'undefined', 'approve'),
(12, 'Ranbir Kapoor - The New Face Of Tata Docomo', 'madi', '', '', '', '', 'Adoni', 'bollywood', 'Bollywood actor Ranbir Kapoor has added Tata Docomo to his endorsement kitty. Telecom company Tata DOCOMO has launched its new brand campaign â€˜Keep It Simpleâ€™ that will be endorsed by Kapoor.\r\n\r\nâ€˜With impactful rendition of many an act(s) that mark our daily experiences in life and with our mobile phones, Ranbir will drive home the Keep It Simple message through the April and May months of the IPL series,â€™ said a company spokesperson. \r\n\r\nSpeaking on the occasion, S Ramakrishna, Regional Head - South East, TATA Docomo, said: â€˜As a youth icon, Ranbir is a trend-setter and appeals to young audience-he is professional, dynamic and youthful. This is a perfect match with Tata Docomo, and we welcome him to the family and look forward to a long and meaningful association.â€™\r\n\r\nâ€˜I have always believed in being different and doing things in a unique and new way-which is what made me jump at the chance to associate with Tata DOCOMO, which is such a close replica of my own persona,â€™ said Kapoor, expressing his excitement at this new connection in his life.', 'uploads/54310rk.jpg', 'uploads/125186', 'uploads/277113', 'undefined', 'approve'),
(13, 'Hrithik Roshan Bleeds On The Sets Of Agneepath', 'madi', '', '', '', '', 'Alibag', 'bollywood', 'We all know that Hrithik Roshan is starring in the remake of â€˜Agneepathâ€™ â€“  the cult bollywood gangster acted by the magnificent Amitabh Bachchan. Produced by Dharma productions, the movie fetched the national award for the best actor to Amitabh Bachchan and best supporting actor to Mithun Da ( Mithun Chakraborty) in 1990.\r\n\r\nThe cult in his 2011 version is said to have the slick and the â€˜inâ€™ look where the B-town handsome hunk Hrithik will play the role of Vijay Dinanath Chauhan and dreaded Kaacha Chhena wil be enacted by none other than Sanju baba who returns to his good bad ways with a punch.\r\n\r\nWhile shooting for the film in Versova, Hrithik Roshan got injured.  The scene required Hrithik to break a coconut on the ground.', 'uploads/392109hr.jpg', 'uploads/46091', 'uploads/456359', 'undefined', 'approve'),
(14, 'Mahendra Singh Dhoni Becomes Trendsetter Once more with His Hair, or rather No Hair', 'madi', '9872778144', '', '', '', 'Adilabad', 'cricket', 'One of the most talked about issues since India won the ICC Cricket World Cup 2011 was about Gurujis of the cricketers as well as Yuvraj Singhâ€™s mystery dedication and also, Mahendra Singh Dhoniâ€™s changing hair styles.\r\nThe pictures of the Indian captain over the years tells a story of how the Indian cricketer has set trends over the years that have been emulated by several since.\r\n\r\nDhoni looks bald in the pictures released with the ICC Cricket World Cup 2011. But no, the Indian skipper has not suffered hair loss en route to Indiaâ€™s glory. Rather the decision to clean shave his pate had apparently to do with a religious vow he took and the fulfillment of his wish, Indian winning the World Cup, meant that he would keep his vow.\r\n\r\nOne would have to say that the look sits rather well with the captain known to experiment a lot. Besides, not many can argue that it is the right look for the summer as the heat will well and truly descend upon India in the course of the IPL 4 season. ', 'uploads/213144mahendra-singh-dhoni-shaved_pRsRf_17', 'uploads/29927', 'uploads/394493', 'undefined', 'terminate'),
(15, 'Akshay Kumarâ€™s â€˜Thank Youâ€™ To Hit The Theatres Today', 'Raman', '', '', '', '', 'Almora', 'bollywood', 'The sole release of the week is â€˜Thank Youâ€™ and it has everything going in itâ€™s favour as far as release timing and positioning amongst the audience is concerned. There is no competition due to absence of any newer releases, from the earlier releases there is only F.A.L.T.U. to contend with and that too basically has a restricted market for itself. Next week too there is just one small film arriving in theaters - â€˜Teen Thay Bhaiâ€™. Though IPL is kick starting, it is no threat as viewers have had enough of cricket and they would rather step into theaters to watch a film.\r\n \r\nAll of this means that the sole requirement for â€˜Thank Youâ€™ to earn mega bucks for itself is to be a good film. Period. The cast is huge, the director has a great track record and the promos are giving an impression of a fun watch. All of this means that it is a given that â€˜Thank Youâ€™ would take one of the better starts for Akshay Kumar in the recent months. While â€˜Patiala Houseâ€™ opening would comfortably be left behind, it now has to be seen whether Akshay can surpass the weekend opening of â€˜Tees Maar Khanâ€™ and â€˜Housefullâ€™, both of which had crossed the 30 crores mark.\r\n \r\nAs things stand today, both Akshay Kumar as well as the makers would be happy if â€˜Thank Youâ€™ indeed manages over 25 crores opening for itself, something which is on the cards. Once such an opening is accomplished and the film finds decent to good word of mouth for itself, it would be a winning situation for â€˜Thank Youâ€™ as it could then benefit out of an open fortnight ahead.', 'uploads/273504akshay-kumar12.jpg', 'uploads/197613', 'uploads/492276', 'undefined', 'approve'),
(16, 'Hrithikâ€™s Mind Blowing Abs In His Upcoming Film', 'raman', '', '', '', '', 'Aizawl', 'bollywood', 'Director Zoya Akhtarâ€™s Zindagi Na Milegi Dobara has been creating a lot of pomp in the recent times. With its multi-starrer cast and an uncommon name, the film has managed to grab the audience attention from day one. The filmmakers have finally launched the first look (poster) of the film.\r\n\r\nThe poster features, the three male lead of the film, namely Farhan Akhtar, Hrithik Roshan and Abhay Deol. The poster tries to fill a curiosity among the viewers, by only showing a portion of the actors face and by hiding the eyes and forehead. Hrithik Roshan is seen flaunting his chiseled body, while Farhan and Abhay are donning a cool look. The pictures shows the actors on a road trip.\r\n\r\nApart from Farhan, Hrithik and Abhay Zindagi Na Milegi Dobara also stars Katrina Kaif, Kalki Koechlin and Ariadna Cabrol as its female lead. The film is being produced by Riteish Sidhwani and Farhan Akhtar and is being directed by Zoya Akhtar. The music for Zindagi Na Milegi Dobara has been composed by Shankar Ehsaan Loy.', 'uploads/205649zindagi-na-milegi-b-070411-207x300.j', 'uploads/51611', 'uploads/294472', 'undefined', 'terminate'),
(17, 'Is Shahrukh Khan Performing At The IPL Ceremony Today ?', 'raman', '', '', '', '', 'Alwaye', 'bollywood', 'The fourth season of Indian Premier League just got bigger! According to sources, Bollywood superstar Shah Rukh Khan is most likely to perform at the opening ceremony of IPL on Friday.\r\n\r\nThe actor is all set to inaugurate the ceremony with a rocking performance. The actorâ€™s team Kolkata Knight Riders would be playing the first match against Chennai Super Kings on the same day.\r\n\r\nConfirming the news, N Srinivasan of Team Chennai told a leading daily, â€œYes, he`s performing at the event.â€ So Badshah Khan will be seen dancing on the tunes of hit hindi film numbers.\r\n\r\nAccording to a source, â€œThe actor is rehearsing in Mumbai at the moment for the big event. He will land in the city this afternoon.â€\r\n\r\nCaptain of Chennai Super Kings, M S Dhoni, is looking forward to the match and joked â€œI simply cut my hair after the World Cup win,â€ he said, â€œBut, considering the heat in Chennai, I think it`s a good decision!â€', 'uploads/120521shahrukh_khan_ipl_20080616-300x233.j', 'uploads/11223', 'uploads/121632', 'undefined', 'terminate'),
(18, 'Amitabh Bachchan To Turn Action Hero Again', 'Madi', '', '', '', '', 'Bahraich', 'bollywood', 'Megastar Amitabh Bachchan will be seen doing action sequences in his home production Bbuddah-Hoga Tera Baap, with the actor admitting that he missed the thrill of punching and kicking.\r\n\r\nâ€œI had not punched, kicked or walloped a guy in ages! At least not in the past 15 years or so. But finding myself in those climes for Bbuddah-Hoga Tera Baap, I must admit I was really missing something,â€ he wrote on his blog bigb.bigadda.com.\r\n\r\nâ€œIts nostalgic to be in the presence of action directors againâ€¦had not been there for yearsâ€¦homesick for it!!â€ he said.\r\n\r\nâ€œThe stride has been firmer, the heart pumping the blood through the veins as rapidly as one would imagine and that strange feel of having conquered all, fills me up with enthusiasm, hope and a brighter tomorrow. There is a strange connect in this and I sometimes wonder why the earlier films got the kind of attention they did when they did,â€ he said.', 'uploads/153366amitabh-bachchan.jpg', 'uploads/227601', 'uploads/266396', 'undefined', 'approve'),
(19, 'Shahid Kapoor On His Role In Mausam', 'madi', '', '', '', '', 'Adilabad', 'bollywood', 'Shahid Kapoor will be seen rocking four different looks in the love story â€˜Mausamâ€™, having Sonam Kapoor as his love interest. Their characters are Rohan and Aayat respectively.\r\n\r\nShahid tells to the journalists, â€œI have four different looks in the film and my first look of an air force pilot is just one of them. It will be wrong if I say that I cannot surpass any of my previous performances, especially Kaminey. All characters I portray in films are different and cannot be compared. There are lot of films Iâ€™ve done and some performances that are very close to my heart. Mausam is again a special film for meâ€\r\n\r\nThe movie is being directed by his father Pankaj Kapoor.\r\n\r\nCurrently, every look has logic behind it. It represents the four seasons in a year, moving from Summer to Winter, Autumn to Spring. Mausam is slated to be one of the actorâ€™s most romantic movies so far in his career.', 'uploads/360406mausam.jpg', 'uploads/148133', 'uploads/191352', 'undefined', 'approve'),
(20, 'BMCK', 'BMCK', 'BMCK', 'BMCK', '', '', 'Ludhiana', 'cricket', 'Finally it took a \'badshah\' to publicly tell Sunny bhai to shut his trap. Whether the 4 captain theory put forward by John Buchanan works or not, Gavaskar\'s smugness was getting more than irritating.\r\n\r\nWhile there is no doubting Gavaskar\'s greatness in his playing days, once he hung up his boots, his contribution to Indian cricket or any cricket for that matter has been zilch. For that reason itself, the smug righteousness with which he makes his comments gets my goat.\r\n\r\nOne of his big arguments is that John Buchanan is a failed cricketer? Maybe that is true but I would politely suggest that 99.9% of the Indian population is a failed cricketer. Who in our country wouldn\'t be a world class cricketer if he had the choice? I would, for one. If Sunny bhai feels that to be a factor, then first he should tell the Indian public to shut up with their thoughts on how cricket should be run and who the captain and the playing eleven should be for every match. Would he dare?\r\n\r\nGavaskar\'s article brings forward a stalemate with its suggestion that a failed cricketer shouldn\'t go about telling players what to do. The successful cricketers, a la Gavaskar himself, would never put themselves in such a position of accountability as that of a coach. So who does that leave? Madan Lals, Gaekwads, Rajputs and other sundry names which keep popping up every now and then whenever the foreigner vs Indian debate comes up? Give me a break! When a franchise, KKR or any other, has money to hire good people, why would they even look at these non-entities? SRK\'s idea is really good in that way; maybe Gavaskar can buy one of the franchises and appoint the Gaekwads as coach?\r\n\r\nGavaskar\'s diatribe against Buchanan loading up the KKR support staff with his friends and family - with the team owners, \'poor souls\', having no clue of being milked - is again a bit over the top. For someone who has been on thousands of committees, sub-committees, panels and advisory teams, his notable contributions to cricket after retirement are notable by their absence. Sunny also is not someone who would just be on some committee or other for the betterment of the game; like they say \'it takes a milker to know one\'. I also wonder if Gavaskar knows what these pals, including Buchanan\'s son, does at KKR? Sunny\'s son not being so good at what he does doesn\'t really mean Buchanan\'s son isn\'t good at whatever he is supposed to be doing.', 'uploads/113391', 'uploads/15123', 'uploads/23062', 'undefined', 'terminate'),
(21, ' The curious case of will power', 'madi', '', '', '', '', 'Ajmer', 'cricket', 'I\'ve seen this happen several times before and yet never quite understood it. Cricket is a game that is played between two opposing sides, where generally the side that executes better on the day ends up winning. On a more macro level the same is fundamental to any sport. Even those played between individuals, like tennis or golf. The individual or the team that executes the skill or set of skills which are on display, better than the opposition, generally comes up trumps.\r\n\r\nHowever, sometimes this is not necessarily the case. Teams or individuals who are better placed to win at the start of the game and/or may also display a better performance during the course of the game are stalled in their march to victory by an intangible element. This intangible may on some occasions delay the onset of victory for the opposition, if not completely deny it.\r\n\r\nIn the game between Kolkata Knight Riders and Rajasthan Royals, this past Thursday, this latent intangible manifested itself yet again. It once again donned the guise of a champion sportsman\'s will power, his tenacity not to give in without a fight, his ability to inspire his team from a seemingly hopeless position. Since the time Shane Warne came out to bat in the penultimate over of the Royals innings, he had a tonic like effect on the fortunes of his side. The little known Abhishek Raut looked to be feeding off Warne\'s energy and played a cameo late in the Royals innings that proved to be invaluable in the overall scheme of things.', 'uploads/106347rajsthan_225.jpg', 'uploads/35349', 'uploads/414233', 'undefined', 'approve'),
(22, 'Happy Birthday Sachin', 'raman', '', '', '', '', 'Jaipur', 'cricket', 'Sachin Ramesh Tendulkar â€“ the name that elicits genuine admiration and awe the world over. Today Sachin celebrates his 36th birthday and while there are so many things about Tendulkar that endear him to each and every one of us, here is my list of TEN reasons that put Tendulkar ahead of every other cricketer. So without further ado, here goes:\r\n\r\n1. Because in 1989, at the tender age of sixteen he tore into a thirty four year old veteran - Abdul Qadir with gusto and made the world take note of his precocious talent.\r\n\r\n2. Because on witnessing his innings of 114 at the WACA in the fifth test of 1991-1992 series against Australia, the eminent cricket journalist John Woodcock stood up, put out his hands and called for silence. \"Gentlemen,\" Woodcock declared, \"he is the best batsman I have seen in my life.\" A pause later: \"And unlike most of you, I have seen Bradman.\"\r\n\r\n3. Because he gave a whole new meaning to the \'desert storm\' that preceded his innings of 143 when he took India to the finals of the Coca Cola cup in Sharjah on the 22nd of April in 1998.', 'uploads/343574sachin_birthday.jpg', 'uploads/175485', 'uploads/308246', 'undefined', 'approve'),
(23, 'IPL - Preview 2', 'madi', '', '', '', '', 'Bapatla', 'cricket', 'In my last blog on this forum (http://cricketblog.aol.in/2009/04/14/ipl-preview-1/ ), I had previewed the chances of the Punjab Kings XI, the Delhi Daredevils, and the Rajasthan Royals in the upcoming edition of the IPL. Of the lot, I had bet only on the Daredevils making it through to the semifinals. In this blog, I shall preview the remaining teams in the tournament.\r\n\r\nThe Bangalore Royal Challengers made news in last year\'s tournament with the sacking of their CEO Charu Sharma for the team\'s disastrous performance. This year also there is already a buzz about the team given that the Royal Challenger\'s made history by buying Kevin Pietersen at USD 1.55 million. However, this does not necessarily translate into more wins for the Royal Challengers since Pietersen will not be available for more than 50% of the league stage (on international duty for the series against West Indies in early May 09).\r\n\r\nJesse Ryder is a good acquisition given his recent scores in international cricket and this would add to the batting strength of the side (Dravid, Kallis, Uthappa & Vira Kohli) even in Pietersen\'s absence. But with Zaheer Khan moving to the Mumbai Indians in exchange for Robin Uthappa, the bowling department will be largely dependent on Dale Steyn. This and how they will field their four best foreign players with Pietersen and Chanderpaul around, adds to their problems.\r\n\r\nThe losing finalists from last year â€“ the Chennai Super Kings should continue their good run into this year\'s tournament. Their acquisition of Andrew Flintoff (also at USD 1.55 million) should pay rich dividends till the time he is available (off on international duty for the series against West Indies in early May 09). Also with Mathew Hayden, Mahendra Singh Dhoni and Suresh Raina expected to bludgeon bowling attacks into submission, it would be difficult to stop the Super Kings from winning the second edition of the tournament. The presence of Makhaya Ntini, Manpreet Gony, Albie Morkel and Muttiah Muralitharan also gives a well rounded feel to their bowling attack. It would be a huge disappointment if this side underperforms and crashes out after the league stages of the tournament.', 'uploads/372197cheerleaders.jpg', 'uploads/108577', 'uploads/24073', 'undefined', 'terminate'),
(24, 'IPL - Preview 1', 'madi', '', '', '', '', 'Bhimavaram', 'cricket', 'The IPL in its second edition shall kickoff in less than a week in South Africa. Eight teams shall traverse the length and breadth of this vibrant nation to do battle with bat and ball. With the experience of the last season in India counting for nothing and the absence of home ground advantage in this edition, it will clearly be a case of which team adapts quickly to the different conditions on offer at each venue in South Africa. This makes previewing the fortunes of each team even more interesting, something akin to taking a shot in the dark. In this post, I hope to shed some light on the three teams from the north which include the defending champions.\r\n\r\nThe Kings XI Punjab, were one of the firebrand franchisees from the last edition with a strong batting lineup that boasted of names like Shaun Marsh, Yuvraj Singh, Kumara Sangakkara and Mahela Jayawardene. Had they played to their potential in last year\'s semi final they should have beaten the Chennai Super Kings, but their batting let them down on that day. Even so they finished the 2008 edition as the team with the second most wins in the league stage (10 wins) of the competition, just next to the Rajathan Royals (11 wins). ', 'uploads/35317620_cheerleaders_ipl_1304_40.jpg', 'uploads/264499', 'uploads/401555', 'undefined', 'approve'),
(25, 'Yuvraj Singh - An enigma unravelled', 'madi', '', '', '', '', 'Khopoli', 'cricket', 'Yuvraj Singh could well be facing a quarter life crisis. For at 27 years and 115 days old, Yuvraj is having to play a constant game of catch with the promise he had shown in the early days of his career. What would leave many of his fans nonplussed is how someone so prodigious in the one day format of the game, can more often than not, look so woefully at sea when confronted by the tide of test cricket.\r\n\r\nIt must be conceded in Yuvraj\'s favour, that at the start of his test career, he always played with the pressure of knowing that his inclusion in the side was always an arrangement for the short term. But then history has waxed eloquent of folks who have challenged the odds. In Yuvraj\'s case, other than for a superb century in the second test of the historic Indian tour to Pakistan in early 2004, he has hardly ever been guilty of such an assault. And so a poor showing at home against Australia in late 2004 brought the curtains down on scene one of Yuvraj\'s first act in test cricket.\r\n\r\nAct two also proved to be short-lived, as Yuvraj struggled to cope with the rigours of test cricket, both at home against England and on tour to the West Indies in 2006. Once Sourav Ganguly made his way back into the test side in late 2006, it was always going to be a waiting game for the talented southpaw. Meanwhile a consistent showing in one day cricket and some spectacular performances in 20:20 meant that Yuvraj would always have another throw of the dice at the number six position in tests. With Ganguly\'s eventual retirement in 2008, one would have hoped for a seamless transition between the two left handed batsmen. ', 'uploads/177242yuvraj.jpg', 'uploads/362323', 'uploads/464331', 'undefined', 'approve'),
(26, 'Ritesh Deshmukh Is A Producer Now', 'Raman', '', '', '', '', 'Allahabad', 'bollywood', 'Actors turning into producers is a usual sight in Bollywood now-a-days. While recently, it was actress Lara Dutta, who launched her home production house with her upcoming film Chalo Dilli, it news one to join the league is actor Riteish Deshmukh.\r\n\r\nActor Riteish Deshmukh will soon be turning into a producer. His first home production will be a Marathi film. All the Maharashtrain artistes will be given first preference in his film. Presently, Riteish is still looking for good scripts to go ahead with the film. The actor however, plans to release the film by next year.\r\n\r\nThe actor was last seen in Vashu Bhagnaniâ€™s comedy flick, Faltu, which turned out to be a money spinner for the makers.', 'uploads/405377ritesh_deshmukh.jpg', 'uploads/5529', 'uploads/465215', 'undefined', 'approve'),
(52, 'Celina Jaitleyâ€™s Role Been Cropped In â€˜Thank Youâ€™', 'madi', '', '', '', '', 'Agartala', 'bollywood', 'Celina Jaitly got a raw deal with Thank You but the actress is putting on a brave front. She was cast opposite Sunil Shetty. This is her second film with director Anees Bazmee after 2005â€™s No Entry. She was surprised to know that she is missing from most of the second half, only to pop up during the climax.\r\n\r\nInterestingly enough, co-stars Sonam and Rimi enjoy more screen time by comparison.\r\n\r\nAlso, CJâ€™s absence from the filmâ€™s premiere on Thursday night raised eyebrows. While Sonam was unwell, Celina was in Dubai on â€œa personal breakâ€.\r\n\r\nSays a source, â€œSheâ€™s got a raw deal despite working with Bazmee before this and sharing a great rapport with him.â€\r\n\r\nThe source adds, â€œThe film suffered due to lack of coordination of the castâ€™s dates. Most of the scenes were rushed because Akshay and Sonam had other commitments.', 'uploads/299118celina.jpg', 'uploads/2965', 'uploads/347243', 'undefined', 'terminate'),
(53, 'New Test Post', 'Happy', '456455', '1233', '', '', '', '', '', 'uploads/247240', 'uploads/377566', 'uploads/154471', 'undefined', 'no'),
(54, 'Test', 'happy', 'ggg', '2454', '', '', 'Ludhiana', 'others', 'Heloooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo', 'uploads/97647student-zone.jpg', 'uploads/276571travel-n-tourism.jpg', 'uploads/458206', 'undefined', 'no'),
(55, 'hola', 'ramandeep', '1515', 's.ramaninfinite@live.com', '1', '4', '3', 'politics', '', 'uploads/244599Tulips.jpg', 'uploads/244599', 'uploads/244599', '2011-08-22 09:54:57', 'no'),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_date` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_edit_date` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_status` varchar(10) COLLATE utf8_bin NOT NULL,
  `cat_priority` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `cat_title`, `cat_desc`, `cat_slug`, `cat_date`, `cat_edit_date`, `cat_status`, `cat_priority`) VALUES
(59, 'Sport', 'Catégorie du Sport', 'hardware', '', '', '1', '2'),
(60, 'Economie', 'Catégorie de l\'économie', 'software', '', '16/04/2019', '1', '1'),
(61, 'Industries', 'Catégorie des industries', 'games', '16/04/2019', '16/04/2019', '1', '1'),
(62, 'Agricuture', 'Catégorie de l\'agriculture', 'mobile', '17/05/2019', '17/05/2019', '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `postid` int(10) NOT NULL,
  `comm_autor` varchar(255) COLLATE utf8_bin NOT NULL,
  `comm_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `comm_text` text COLLATE utf8_bin NOT NULL,
  `comm_status` varchar(50) COLLATE utf8_bin NOT NULL,
  `comm_date` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `postid`, `comm_autor`, `comm_email`, `comm_text`, `comm_status`, `comm_date`) VALUES
(33, 34, '28', 'brad@gmail.com', 'je vous suggere cet excellent article', '1', '17/05/2019'),
(35, 34, 'Nikolas ', 'nikolas@e.com', 'Excellent Article....Great', '1', '02/08/2019'),
(36, 34, '33', 'papeousseynoudiop@esp.sn', 'ceci est un bon article', '0', '10/11/2020'),
(37, 23, 'Baye Cheikh fall', 'bayecheikhfall249@gmail.com', 'Bon article', '0', '10/11/2020');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `post_category` varchar(10) COLLATE utf8_bin NOT NULL,
  `post_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_autor` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_date` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_edit_date` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_image` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_text` text COLLATE utf8_bin NOT NULL,
  `post_tag` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_visit_counter` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_status` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_priority` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `post_category`, `post_title`, `post_autor`, `post_date`, `post_edit_date`, `post_image`, `post_text`, `post_tag`, `post_visit_counter`, `post_status`, `post_priority`) VALUES
(23, '59', 'City vs Liverpool – Jurgen Klopp met en place un quatuor offensif : Mané -Salah – Firminho et Jota titulaires', '25', '17/05/2019', '09/11/2020', 'Liverpool.jpg', '<p>La rencontre d&eacute;marre &agrave; 16 heures. Et face au grand rival Manchester City, Jurgen Klopp sort la grande artillerie. D&eacute;sormais, ce ne sera pas un trio mais un quatuor.</p>\r\n\r\n<p>Sadio Man&eacute; (4buts et une PD), Salah (7 buts), Firminho (1 but et 2 PD) et Diogo Jota (3 buts) sont tous les 4 titularis&eacute;s pour cette rencontre.</p>\r\n', '', '8', '1', '1'),
(24, '62', 'A Kaolack : Le syndicat national des techniciens et travailleurs de l\'agriculture en grève.', '25', '17/05/2019', '09/11/2020', 'téléchargement (3).jpg', '<p><strong>72 heures de gr&egrave;ve , c&#39;est le mot d&#39;ordre decider par le syndicat national des techniciens et travailleurs de l&#39;agriculture du S&eacute;n&eacute;gal. D&#39;apr&egrave;s le secr&eacute;taire g&eacute;n&eacute;ral ...</strong></p>\r\n\r\n<hr />\r\n<p>72 heures de gr&egrave;ve , c&#39;est le mot d&#39;ordre decider par le syndicat national des techniciens et travailleurs de l&#39;agriculture du S&eacute;n&eacute;gal. D&#39;apr&egrave;s le secr&eacute;taire g&eacute;n&eacute;ral du SYNTTAS, Samba Gaye, il s&#39;agira de boycotter leurs activit&eacute;s respectives entre le 17 et le 19 ao&ucirc;t 2020.</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p>Le syndicat national des techniciens et travailleurs de l&#39;agriculture du S&eacute;n&eacute;gal va ainsi en gr&egrave;ve pour que l&#39;&Eacute;tat&nbsp; honore ses engagements li&eacute;s aux indemnit&eacute;s de logement, de risque, de responsabilit&eacute; et&nbsp; de technicit&eacute;. L&#39;on peut &eacute;galement signaler des indemnit&eacute;s pour les agents du minist&egrave;re de l&#39;agriculture, la construction des b&acirc;timents d&eacute;labr&eacute;s au niveau de certains services, de la dotation de v&eacute;hicules et de motos pour les services.</p>\r\n', '', '0', '1', '1'),
(25, '60', 'COVID-19 : LES TRANSFERTS DES ÉMIGRÉ ONT BAISSÉ DE 9% EN 2020', '25', '17/05/2019', '09/11/2020', 'argent-cfa.jpg', '<p>A cause de la pand&eacute;mie de Covid-19 et la crise &eacute;conomique engendr&eacute;e, les envois de fonds des travailleurs migrants vers leurs pays d&rsquo;origine devraient reculer de 14% d&rsquo;ici 2021 par rapport au niveau d&rsquo;avant la pand&eacute;mie en 2019. Selon les derni&egrave;res estimations de la note d&rsquo;information de la Banque mondiale sur les migrations et le d&eacute;veloppement, le repli enregistr&eacute; en Afrique subsaharienne va s&rsquo;&eacute;tablir en 2020 et 2021 respectivement &agrave; 9 et 6%.</p>\r\n\r\n<p>Face &agrave; cet ennemi mondial, les migrants courent plus le risque d&rsquo;attraper le virus que de se retrouver au ch&ocirc;mage. Un &eacute;tat de fait qui a induit un repli des envois de fonds vers leurs pays d&rsquo;origine. En Afrique subsaharienne, notamment au S&eacute;n&eacute;gal, les familles qui d&eacute;pendent de ces fonds sont rudement &eacute;prouv&eacute;es.</p>\r\n\r\n<p>Selon les projections de la Banque Mondiale, les envois de fonds vers l&rsquo;Afrique subsaharienne devraient reculer d&rsquo;environ 9% en 2020, &agrave; 44 milliards de dollars. M&ecirc;me si, signalent-ils, les flux &agrave; destination du Kenya restent pour l&rsquo;instant positifs, ils devraient finir par plonger en 2021. &laquo; Les transferts vers tous les grands pays b&eacute;n&eacute;ficiaires devraient baisser. La pand&eacute;mie de COVID-19 touchant &agrave; la fois les pays d&rsquo;origine et de destination des migrants subsahariens, ce tassement des remises migratoires devrait aggraver l&rsquo;ins&eacute;curit&eacute; alimentaire et la pauvret&eacute; &raquo;, renseigne la note d&rsquo;information consult&eacute;e par &laquo; L&rsquo;As &raquo;.</p>\r\n\r\n<p>Mieux, les co&ucirc;ts des transferts, indique-t-on, notamment le tarif moyen pour l&rsquo;envoi de 200 dollars vers la r&eacute;gion, s&rsquo;&eacute;tablissent &agrave; 8,5% au troisi&egrave;me trimestre 2020, en l&eacute;ger repli par rapport &agrave; l&rsquo;an dernier (9%). Non sans pr&eacute;ciser, &agrave; cet effet, que l&rsquo;Afrique subsaharienne reste la r&eacute;gion la plus ch&egrave;re du monde compar&eacute;e aux autres r&eacute;gions du monde. &laquo; Le d&eacute;ploiement de technologies num&eacute;riques, conjugu&eacute; &agrave; la mise en place d&rsquo;un environnement r&eacute;glementaire favorisant la concurrence entre op&eacute;rateurs et &agrave; un examen de la r&eacute;glementation en mati&egrave;re de lutte contre le blanchiment des capitaux et le financement du terrorisme, est indispensable pour faire baisser le co&ucirc;t des transferts de fonds dans la r&eacute;gion &raquo;, recommande le groupe de la Banque Mondiale.</p>\r\n\r\n<p>Par ailleurs, la note d&rsquo;information de l&rsquo;institution financi&egrave;re internationale signale que les envois de fonds devraient reculer dans toutes les r&eacute;gions en 2020 et 2021, avec un repli particuli&egrave;rement marqu&eacute; en Europe et en Asie centrale (de respectivement 16 et 8%), devant l&rsquo;Asie de l&rsquo;Est et le Pacifique (11 et 4%), le Moyen Orient et l&rsquo;Afrique du Nord (8% pour les deux ann&eacute;es), l&rsquo;Asie du Sud(4et11%) et l&rsquo;Am&eacute;rique Latine et les Cara&iuml;bes (0,2 et 8%).&laquo; Les transferts d&rsquo;argent vers les pays &agrave; revenu faible et interm&eacute;diaire devraient se replier &agrave; 508 milliards de dollars en 2020, en recul de 7%, avant de conna&icirc;tre un nouvel effondrement en 2021, &agrave; 470 milliards de dollars (-7,5%) &raquo;, annonce la Banque Mondiale.</p>\r\n\r\n<p>Cet effondrement des envois de fonds des travailleurs migrants s&rsquo;explique en grande partie, d&rsquo;apr&egrave;s ladite institution financi&egrave;re, par l&rsquo;atonie de la croissance &eacute;conomique, l&rsquo;insuffisance des niveaux d&rsquo;emplois dans les pays d&rsquo;accueil des migrants, la faiblesse des cours du p&eacute;trole et la d&eacute;pr&eacute;ciation des monnaies des pays d&rsquo;origine des transferts d&rsquo;argent par rapport au dollar. C&rsquo;est pour cela qu&rsquo;elle recommande aux pays de trouver des solutions pour favoriser la r&eacute;installation des migrants de retour en les aidant &agrave; trouver un emploi ou &agrave; cr&eacute;er une entreprise.</p>\r\n\r\n<p>Enfin, le groupe de la Banque Mondiale r&eacute;v&egrave;le que pour la premi&egrave;re fois dans l&rsquo;histoire r&eacute;cente, le nombre de migrants internationaux va baisser cette ann&eacute;e, &agrave; la faveur d&rsquo;un ralentissement des nouveaux d&eacute;parts et d&rsquo;une hausse des retours vers les pays d&rsquo;origine. Ce qui, informe la note, va accentuer la hausse du ch&ocirc;mage parmi les migrants et les r&eacute;fugi&eacute;s, provoqu&eacute;e par des restrictions plus strictes en mati&egrave;re de visas.<br />\r\nL&#39;As</p>\r\n', 'Security, PCs, Laptops', '1', '1', '1'),
(26, '59', 'Basket BAL : Adversaire de l’AS Douane : L’AS Police, sacrée championne du Mali', '25', '17/05/2019', '09/11/2020', '86500436_172260197540944_8547178639244918784_n.jpg', '<p>L&rsquo;AS Police du Mali, adversaire de l&rsquo;S Douane dans la basket-ball Africa League (BAL), qui se tiendra du 5 au 20 d&eacute;cembre au Rwanda, est sacr&eacute;e championne du Mali de premi&egrave;re division. Un sacre obtenu vendredi dernier 6 novembre 2020.</p>\r\n\r\n<p>Les Policiers se sont impos&eacute;s face &agrave; l&rsquo;Attar, club de Kidal, en finale de play-off sur le score de 91 &agrave; 87. Cette courte victoire, obtenue au bout du suspens, &eacute;tait la troisi&egrave;me de la s&eacute;rie que les hommes de tenue ont remport&eacute; par 3 &agrave; 1.</p>\r\n\r\n<p>La Douane trouvera ainsi un adversaire de taille sur son chemin, non seulement couronn&eacute;, mais aussi qui a plus de comp&eacute;tition.</p>\r\n\r\n<p>Au lendemain du sacre des hommes, les dames se sont &eacute;galement adjug&eacute;es me titre de championne du mali de basket f&eacute;minin 2019-2020. Les polici&egrave;res ont remport&eacute; samedi l&rsquo;ultime match des play-offs face au Djoliba AC 48-37.</p>\r\n', '', '1', '1', '1'),
(27, '59', 'Mercato – Bordeaux : Youssouf Sabaly vers un départ… libre ?', '25', '17/05/2019', '09/11/2020', 'Youssouf-Sabaly-Icon_RUH_041020_13_70.jpg', '<p>Sur le d&eacute;part depuis deux saisons, Youssouf Sabaly pourrait quitter les Girondins de Bordeaux par la plus petite des portes.</p>\r\n\r\n<p>Courtis&eacute; par l&rsquo;Angleterre, Youssouf Sabaly a bien failli partir &agrave; plusieurs reprises. A Fulham, notamment, qui avait pratiquement boucl&eacute; le dossier &agrave; l&rsquo;hiver 2019. Mais le lat&eacute;ral est finalement rest&eacute; &agrave; Bordeaux, o&ugrave; son contrat prend fin en juin prochain.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Mauvaise op&eacute;ration pour Bordeaux</p>\r\n\r\n<p>Si l&rsquo;opportunit&eacute; de le vendre cet hiver existe, Bordeaux aura bien du mal &agrave; r&eacute;duire la casse dans le dossier Sabaly. En effet, le joueur a tout int&eacute;r&ecirc;t &agrave; attendre juin prochain pour signer libre o&ugrave; il veut, avec la prime &agrave; la signature qui va avec. Une mauvaise op&eacute;ration pour Bordeaux qui pouvait esp&eacute;rer r&eacute;cup&eacute;rer plus de 10 millions d&rsquo;euros, il y a un an, sur ce dossier.</p>\r\n', '', '3', '1', '1'),
(28, '60', 'Économie maritime : Le Port Autonome de Dakar perd en compétitivité', '25', '17/05/2019', '09/11/2020', 'port-de-dakar-696x423.png', '<p>L&rsquo;outil de production du Port Autonome de Dakar (PAD) n&rsquo;est plus en phase avec la croissance &eacute;conomique nationale. La cons&eacute;quence imm&eacute;diate de cette situation est &nbsp;la congestion portuaire qui repr&eacute;sente un goulot d&rsquo;&eacute;tranglement &eacute;touffant les performances dans les diff&eacute;rents terminaux. Ceci place souvent la plateforme portuaire dans des zones de turbulence aux cons&eacute;quences d&eacute;sastreuses pour l&rsquo;&eacute;conomie nationale.</p>\r\n', '', '1', '1', '1'),
(29, '62', 'Le chef de l’Etat offre 1600 boeufs aux Mosquées de Dakar, Pikine, Guédiawaye et Rufisque a l\'occasion de la tamkharite', '25', '17/05/2019', '09/11/2020', 'téléchargement (1).jpg', '<p>le journal Observateur partage l&#39;information dans sa livraison de ce lundi,le Chef de l&#39;Etat Macky Salla offert 1600 boeufs aux Mosqu&eacute;es de Dakar, Pikine, Guediawaye et Rufisque.</p>\r\n\r\n<p>Comme &agrave; l&#39;approche des precedents &eacute;v&eacute;nements religieux, le pr&eacute;sident de la R&eacute;publique a jug&eacute; utile de venir en aide aux n&eacute;cessiteux en cette p&eacute;riode de pand&eacute;mie o&ugrave; les temps sont durs.</p>\r\n\r\n<p>Lors de la f&ecirc;te de tabaski, le Chef de l&#39;Etat avait offert environ 3000 moutons aux populations d&eacute;munies. Cette fois, ce sont les boeufs qui sont distribu&eacute;s aux Mosqu&eacute;es pour la f&ecirc;te de Tamxarit ou Achoura pr&eacute;vue samedi prochain.</p>\r\n\r\n<p>C&#39;est un troupeau d&#39;envions 1600 taureaux que le pr&eacute;sident Macky Sall a pay&eacute; au profit des lieux de culte.</p>\r\n', 'Mobile, Emerging Technology, Smartphones, Smartwatches', '1', '1', '1'),
(30, '59', 'Un joueur de Pro D2 parmi les Bleus', '25', '17/05/2019', '09/11/2020', 'oyonnax-750x368.jpg', '<p><strong>Le fameux &laquo; joueur de Pro D2 &raquo; &eacute;voqu&eacute; en d&eacute;cembre 2019 &agrave; Hossegor lors de sa prise de fonctions par Fabien Galthi&eacute; &eacute;tait donc Sacha Z&eacute;gueur (21 ans).</strong>&nbsp;Ce dernier a rejoint les Bleus &agrave; Marcoussis ce lundi, a annonc&eacute; son club sur Facebook. Devant la presse, le successeur de Jacques Brunel dans le surv&ecirc;tement de s&eacute;lectionneur des Bleus avait avou&eacute; suivre de pr&egrave;s un total de 90 joueurs, dont un &eacute;voluant en Pro D2.</p>\r\n\r\n<p>S&rsquo;amusant avec les journalistes, le Cadurcien avait consenti &agrave; r&eacute;v&eacute;ler deux indices pour les plus curieux: &laquo; Oyonnax &raquo; et &laquo; champion du monde U20 &raquo;. Du c&ocirc;t&eacute; de l&rsquo;Ain, les fervents supporters des Oyomen avait naturellement tout de suite d&eacute;chiffr&eacute; l&rsquo;&eacute;nigme et trouv&eacute; le nom de Z&eacute;gueur, mont&eacute; sur le toit du monde avec l&rsquo;&eacute;quipe de France U20 en 2018 puis en 2019 de nouveau. Toutefois, au moment pour Galthi&eacute; de jouer avec les envoy&eacute;s sp&eacute;ciaux il y a presque un an, le prometteur troisi&egrave;me ligne de l&rsquo;USO n&rsquo;avait pas encore eu le droit ni les honneurs d&rsquo;humer l&rsquo;atmosph&egrave;re du XV de France. Cette semaine, ce sera le cas.</p>\r\n', 'Mouse', '7', '1', '1'),
(34, '60', 'Pourquoi l’économie sénégalaise ne va pas bien ?', '25', '17/05/2019', '09/11/2020', '4117092-6247855.jpg', '<p>La situation &eacute;conomique l&eacute;gu&eacute;e par le r&eacute;gime sortant, et jug&eacute;e &laquo;&nbsp;d&eacute;licate&nbsp;&raquo; par le nouveau ministre charg&eacute; du budget n&rsquo;a pas fini de d&eacute;frayer la chronique. En effet, le pr&eacute;sident de la CNES, en tant qu&rsquo;acteur &eacute;conomique voit une &eacute;conomie s&eacute;n&eacute;galaise qui &laquo;&nbsp;ne va pas bien&nbsp;&raquo; parce qu&rsquo;ayant un taux de croissance qui, dans l&rsquo;Afrique subsaharienne est faible avec 2,6% en 2011, d&eacute;crit-il.<br />\r\n&nbsp;<br />\r\nUn fait que Mansour Kama explique n&eacute;anmoins par &laquo;&nbsp;une &eacute;conomie dont la structure repose sur un paradoxe&nbsp;&raquo;. &laquo;&nbsp;C&rsquo;est la faiblesse de la productivit&eacute; d&rsquo;abord, puisque plus de 50% de la population est rurale et que la contribution dans le Produit International Brut (PIB) n&rsquo;est que 13% pendant que vous avez les services combin&eacute;s par le secteur secondaire qui repr&eacute;sentent peut-&ecirc;tre moins de 48% de la population active&nbsp;&raquo;, analyse-t-il dans l&rsquo;&eacute;mission &laquo;&nbsp;Grand jury&nbsp;&raquo; de la RFM de ce dimanche dont il est l&rsquo;invit&eacute;.<br />\r\nToutefois, si le S&eacute;n&eacute;gal veut renverser la donne concernant son &eacute;conomie, il importe d&rsquo;attaquer le secteur agricole en le modernisant, sugg&egrave;re M. Kama qui pense d&rsquo;ailleurs que le pr&eacute;sident Macky Sall l&rsquo;a compris. &laquo;&nbsp;Il faut booster la m&eacute;canisation dans des conditions qui devraient permettre aux paysans d&rsquo;y acc&eacute;der sans avoir &agrave; payer des prix trop forts et r&eacute;gler les questions de gouvernance de ce secteur&nbsp;&raquo;, propose le pr&eacute;sident de la CNES.<br />\r\n&nbsp;</p>\r\n', 'Chromebooks, PCs, Operating Systems, Google Business', '27', '1', '1'),
(35, '60', 'LE FMI ET LA COVID-19 (CORONAVIRUS)', '28', '17/05/2019', '09/11/2020', 'BLOG-570x312-EUR-Maria-Dimitrova-Arias-iStock-by-Getty-Images-iStock-1240397902.jpg', '', '', '1', '1', '1'),
(36, '59', 'Bouna Sarr appelé chez les Bleus et retenu par le Bayern', '28', '17/05/2019', '09/11/2020', 'SARR-1.jpg', '<p><strong>Ruben Aguilar a &eacute;t&eacute; appel&eacute; en renfort par Didier Deschamps ce lundi. Un joker d&eacute;fensif qui aurait pu &ecirc;tre Bouna Sarr si le Bayern ne s&rsquo;&eacute;tait pas oppos&eacute; &agrave; cette convocation.</strong></p>\r\n\r\n<p>Une premi&egrave;re convocation en &eacute;quipe de France peut parfois tenir &agrave; peu de choses. Le Mon&eacute;gasque Ruben Aguilar a eu la bonne surprise d&rsquo;&ecirc;tre appel&eacute; par Didier Deschamps ce lundi, alors que les Bleus font face &agrave; une v&eacute;ritable p&eacute;nurie de d&eacute;fenseurs lat&eacute;raux. Si le Munichois Benjamin Pavard a bien ralli&eacute; Clairefontaine, sa g&ecirc;ne musculaire &agrave; une cuisse le rend pour l&rsquo;heure incertain pour les rencontres &agrave; venir face &agrave; la Finlande, le Portugal et la Su&egrave;de. Aussi le patron des Bleus a-t-il jug&eacute; n&eacute;cessaire d&rsquo;&eacute;toffer son groupe</p>\r\n', 'Graphics Cards, Hardware, Games, Gaming, Nvidia, AMD, Holiday Gift, Guide', '7', '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `valeur` text NOT NULL,
  `client` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tokens`
--

INSERT INTO `tokens` (`id`, `valeur`, `client`, `date_creation`, `date_expiration`) VALUES
(1, 'ab4f63f9ac65152575886860dde480a1', '25f9e794323b453885f5181f1b624d0b', '2020-11-11 16:00:00', '2021-04-13 00:00:00'),
(2, '20c8d69d0580c43b533f6cd628eed279', '55722118e8b7648e5385b65528a77712', '2020-11-11 16:00:00', '2021-04-13 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `gender`, `image`, `code`, `status`, `type`) VALUES
(26, 'Nikola Špirić', 'nikola', 'nikola@gmail.com', '123', '2', 'user1.png', '', '1', '1'),
(28, 'Abdos Seyed', 'abderahmane', 'abdosseyed@gmail.com', '202cb962ac59075b964b07152d234b70', '2', 'WhatsApp Image 2020-11-09 at 23.27.23.jpeg', '', '1', '1'),
(42, 'Pape Ousseynou', 'papisridial', 'papeousseynoudiop@esp.sn', '202cb962ac59075b964b07152d234b70', '2', 'pp.jpg', '', '1', '1'),
(43, 'Baye Cheikh', 'baye', 'bayecheikh@gmail.com', '202cb962ac59075b964b07152d234b70', '2', 'pp.jpg', '', '1', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
