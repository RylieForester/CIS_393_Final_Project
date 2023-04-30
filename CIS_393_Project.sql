-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2023 at 09:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CIS_393_Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Book_Recommendation_List`
--

CREATE TABLE `Book_Recommendation_List` (
  `ISBN` varchar(16) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Book_Recommendation_List`
--

INSERT INTO `Book_Recommendation_List` (`ISBN`, `Title`, `Author`, `Genre`) VALUES
('9780060530945', 'The Graveyard Book', 'Neil Gaiman', 'Horror'),
('9780060530945', 'The Graveyard Book', 'Neil Gaiman', 'Mystery'),
('9780062060624', 'The Song of Achilles', 'Madeline Miller', 'Mythology'),
('9780062073471', 'And Then There Were None', 'Agatha Christie', 'Horror'),
('9780062073471', 'And Then There Were None', 'Agatha Christie', 'Mystery'),
('9780062662583', 'The Poppy War', 'R. F. Kuang', 'Fantasy'),
('9780062662583', 'The Poppy War', 'R. F. Kuang', 'Historical'),
('9780062802798', 'World Travel: An Irreverent Guide', 'Anthony Bourdain', 'Travel'),
('9780063065406', 'A Thousand Ships', 'Natalie Haynes', 'Historical'),
('9780063065406', 'A Thousand Ships', 'Natalie Haynes', 'Mythology'),
('9780063070714', 'Stardust', 'Neil Gaiman', 'Adventure'),
('9780063070714', 'Stardust', 'Neil Gaiman', 'Fantasy'),
('9780063234581', 'The Watchmaker\'s Daughter: The True Story of World War II Heroine Corrie ten Boom', 'Larry Loftis', 'Biography'),
('9780063234581', 'The Watchmaker\'s Daughter: The True Story of World War II Heroine Corrie ten Boom', 'Larry Loftis', 'History'),
('9780140053203', 'Travels with Charley: In Search of America', 'John Steinbeck', 'Autobiography'),
('9780140053203', 'Travels with Charley: In Search of America', 'John Steinbeck', 'Memoir'),
('9780140053203', 'Travels with Charley: In Search of America', 'John Steinbeck', 'Travel'),
('9780143119685', 'A Discovery of Witches', 'Deborah Harkness', 'Fantasy'),
('9780143119685', 'A Discovery of Witches', 'Deborah Harkness', 'Romance'),
('9780307887443', 'Ready Player One', 'Ernest Cline', 'Sci-Fi'),
('9780374500016', 'Night', 'Elie Wiesel', 'Autobiography'),
('9780374500016', 'Night', 'Elie Wiesel', 'History'),
('9780374500016', 'Night', 'Elie Wiesel', 'Memoir'),
('9780385494786', 'Into Thin Air: A Personal Account of the Mount Everest Disaster', 'Jon Krakauer', 'Autobiography'),
('9780385494786', 'Into Thin Air: A Personal Account of the Mount Everest Disaster', 'Jon Krakauer', 'Memoir'),
('9780399178610', 'Hyperion', 'Dan Simmons', 'Adventure'),
('9780399178610', 'Hyperion', 'Dan Simmons', 'Fantasy'),
('9780399178610', 'Hyperion', 'Dan Simmons', 'Sci-Fi'),
('9780441013593', 'Dune', 'Frank Herbert', 'Sci-Fi'),
('9780525486275', 'Fair Blows the Wind', 'Louis L\'Amour', 'Adventure'),
('9780525486275', 'Fair Blows the Wind', 'Louis L\'Amour', 'Historical'),
('9780525486275', 'Fair Blows the Wind', 'Louis L\'Amour', 'Western'),
('9780525559474', 'The Midnight Library', 'Matt Haig', 'Fantasy'),
('9780525559474', 'The Midnight Library', 'Matt Haig', 'Sci-Fi'),
('9780525619338', 'The Ride of Her Life: The True Story of a Woman, Her Horse, and Their Last-Chance Journey Across America', 'Elizabeth Letts', 'Biography'),
('9780525619338', 'The Ride of Her Life: The True Story of a Woman, Her Horse, and Their Last-Chance Journey Across America', 'Elizabeth Letts', 'History'),
('9780525619338', 'The Ride of Her Life: The True Story of a Woman, Her Horse, and Their Last-Chance Journey Across America', 'Elizabeth Letts', 'Travel'),
('9780547336954', 'Through a Window: My Thirty Years with the Chimpanzees of Gombe', 'Jane Goodall', 'Biography'),
('9780547928227', 'The Hobbit', 'J. R. R. Tolkien', 'Adventure'),
('9780547928227', 'The Hobbit', 'J. R. R. Tolkien', 'Fantasy'),
('9780553276862', 'Sackett\'s Land', 'Louis L\'Amour', 'Adventure'),
('9780553276862', 'Sackett\'s Land', 'Louis L\'Amour', 'Historical'),
('9780553276862', 'Sackett\'s Land', 'Louis L\'Amour', 'Western'),
('9780593490679', 'A Private Spy: The Letters of John Le Carré', 'John le Carré', 'Biography'),
('9780593490679', 'A Private Spy: The Letters of John Le Carré', 'John le Carré', 'History'),
('9780593490679', 'A Private Spy: The Letters of John le Carré', 'John le Carré', 'Memoir'),
('9780593498071', 'Solito: A Memoir', 'Javier Zamora', 'Memoir'),
('9780618871711', 'Fun Home: A Family Tragicomic', 'Alison Bechdel', 'Memoir'),
('9780679781585', 'Memoirs of a Geisha', 'Arthur Golden', 'Historical'),
('9780684842677', 'Angela\'s Ashes', 'Frank McCourt', 'Autobiography'),
('9780684842677', 'Angela\'s Ashes', 'Frank McCourt', 'Memoir'),
('9780743273282', 'Shakespeare\'s Sonnets and Poems', 'William Shakespeare', 'Poetry'),
('9780743412285', 'Pet Sematary', 'Stephen King', 'Horror'),
('9780767902526', 'A Walk in the Woods: Rediscovering America on the Appalachian Trail', 'Bill Bryson', 'History'),
('9780767902526', 'A Walk in the Woods: Rediscovering America on the Appalachian Trail', 'Bill Bryson', 'Travel'),
('9780767903868', 'In a Sunburned Country', 'Bill Bryson', 'Memoir'),
('9780767903868', 'In a Sunburned Country', 'Bill Bryson', 'Travel'),
('9780786838653', 'The Lightning Thief', 'Rick Riordan', 'Adventure'),
('9780786838653', 'The Lightning Thief', 'Rick Riordan', 'Fantasy'),
('9780786838653', 'The Lightning Thief', 'Rick Riordan', 'Mythology'),
('9780811225823', 'Envelope Poems', 'Emily Dickinson', 'Poetry'),
('9780812550702', 'Ender\'s Game', 'Orson Scott Card', 'Sci-Fi'),
('9781250027436', 'Shadow and Bone', 'Leigh Bardugo', 'Adventure'),
('9781250027436', 'Shadow and Bone', 'Leigh Bardugo', 'Fantasy'),
('9781250768889', 'Cinder', 'Marissa Meyer', 'Fantasy'),
('9781250768889', 'Cinder', 'Marissa Meyer', 'Romance'),
('9781250768889', 'Cinder', 'Marissa Meyer', 'Sci-Fi'),
('9781250770288', 'Me: Elton John Official Autobiography', 'Elton John', 'Autobiography'),
('9781250773616', 'Elektra', 'Jennifer Saint', 'Historical'),
('9781250773616', 'Elektra', 'Jennifer Saint', 'Mythology'),
('9781250891211', 'A Darker Shade of Magic', 'V. E. Schwab', 'Adventure'),
('9781250891211', 'A Darker Shade of Magic', 'V. E. Schwab', 'Fantasy'),
('9781250891211', 'A Darker Shade of Magic', 'V. E. Schwab', 'Historical'),
('9781338282818', 'Child of the Dream (A Memoir of 1963)', 'Sharon Robinson', 'History'),
('9781338282818', 'Child of the Dream (A Memoir of 1963)', 'Sharon Robinson', 'Memoir'),
('9781401284770', 'The Sandman Vol. 1: Preludes & Nocturnes', 'Neil Gaiman', 'Fantasy'),
('9781411432376', 'The Iliad', 'Homer', 'Mythology'),
('9781435154469', 'The Complete Tales and Poems of Edgar Allan Poe', 'Edgar Allan Poe', 'Poetry'),
('9781435158153', 'Grimm\'s Fairy Tales', 'Brothers Grimm', 'Fantasy'),
('9781435158153', 'Grimm\'s Fairy Tales', 'Brothers Grimm', 'Mythology'),
('9781435158962', 'Selected Poems', 'Robert Frost', 'Poetry'),
('9781435159624', 'Frankenstein', 'Mary Shelley', 'Horror'),
('9781439195260', 'Lonesome Dove', 'Larry McMurty', 'Historical'),
('9781439195260', 'Lonesome Dove', 'Larry McMurtry', 'Western'),
('9781449474256', 'Milk and Honey', 'Rupi Kaur', 'Poetry'),
('9781481456029', 'The Clockwork Angel', 'Cassandra Clare', 'Fantasy'),
('9781481456029', 'The Clockwork Angel', 'Cassandra Clare', 'Romance'),
('9781484721469', 'The Enemy', 'Charlie Higson', 'Adventure'),
('9781484721469', 'The Enemy', 'Charlie Higson', 'Horror'),
('9781492670124', 'The 7½ Deaths of Evelyn Hardcastle', 'Stuart Turton', 'Mystery'),
('9781501142970', 'It', 'Stephen King', 'Horror'),
('9781542036702', 'Beyond the Moonlit Sea', 'Julianne MacLean', 'Historical'),
('9781542036702', 'Beyond the Moonlit Sea', 'Julianne MacLean', 'Mystery'),
('9781542036702', 'Beyond the Moonlit Sea', 'Julianne MacLean', 'Romance'),
('9781594634024', 'The Girl on the Train', 'Paula Hawkins', 'Mystery'),
('9781604502800', 'The Last Trail', 'Zane Grey', 'Adventure'),
('9781604502800', 'The Last Trail', 'Zane Grey', 'Historical'),
('9781604502800', 'The Last Trail', 'Zane Grey', 'Western'),
('9781604504088', 'The Untamed', 'Max Brand', 'Adventure'),
('9781604504088', 'The Untamed', 'Max Brand', 'Historical'),
('9781604504088', 'The Untamed', 'Max Brand', 'Western'),
('9781639550494', 'A Hurting Kind', 'Ada Limón', 'Poetry'),
('9781649221483', 'The Man of the Forest', 'Zane Grey', 'Historical'),
('9781649221483', 'The Man of the Forest', 'Zane Grey', 'Romance'),
('9781649221483', 'The Man of the Forest', 'Zane Grey', 'Western'),
('9781728242576', 'The Woman They Could Not Silence: The Shocking Story of a Woman Who Dared to Fight Back', 'Kate Moore', 'Biography'),
('9781728242576', 'The Woman They Could Not Silence: The Shocking Story of a Woman Who Dared to Fight Back', 'Kate Moore', 'History'),
('9781728274867', 'Twisted Love', 'Ana Huang', 'Romance'),
('9781982143886', 'The Princess Spy: The True Story of World War II Spy Aline Griffith, Countess of Romanones', 'Larry Loftis', 'Biography'),
('9781982143886', 'The Princess Spy: The True Story of World War II Spy Aline Griffith, Countess of Romanones', 'Larry Loftis', 'History'),
('9781982186180', 'Tasting History: Explore the Past through 4,000 Years of Recipes (A Cookbook)', 'Max Miller', 'History'),
('9781982186951', 'An American in Provence: Art, Life and Photography', 'Jamie Beck', 'Autobiography'),
('9781982186951', 'An American in Provence: Art, Life and Photography', 'Jamie Beck', 'Travel'),
('9781984878892', 'Agent Running in the Field', 'John le Carré', 'Historical'),
('9781984878892', 'Agent Running in the Field', 'John le Carré', 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`ID`, `First_Name`, `Last_Name`) VALUES
(1, 'Henry', 'Holiday'),
(3, 'Marie', 'Curie'),
(5, 'Bobby', 'Fischer'),
(6, 'Lynn', 'Hill'),
(7, 'Eliza', 'Taylor');

-- --------------------------------------------------------

--
-- Table structure for table `User_Wishlist`
--

CREATE TABLE `User_Wishlist` (
  `ID` int(11) NOT NULL,
  `Book_Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User_Wishlist`
--

INSERT INTO `User_Wishlist` (`ID`, `Book_Title`) VALUES
(1, 'It'),
(3, 'Stardust'),
(5, 'Lonesome Dove'),
(6, 'Dune'),
(6, 'The Hobbit'),
(7, 'Night');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Book_Recommendation_List`
--
ALTER TABLE `Book_Recommendation_List`
  ADD PRIMARY KEY (`ISBN`,`Genre`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `User_Wishlist`
--
ALTER TABLE `User_Wishlist`
  ADD PRIMARY KEY (`ID`,`Book_Title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
