-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2019 at 06:23 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_hunter`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `idActor` int(11) NOT NULL,
  `nameActor` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`idActor`, `nameActor`) VALUES
(1, 'Jason Momoa'),
(2, 'Amber Heard'),
(3, 'Willem Dafoe'),
(4, 'Sam Worthington'),
(5, 'Zoe Saldana'),
(6, 'Sigourney Weaver'),
(7, 'Robert Downey Jr.'),
(8, 'Chris Hemsworth'),
(9, 'Mark Ruffalo'),
(10, 'Vincent D\'Onofrio'),
(11, 'Dax Shepard'),
(12, 'Michael Peña'),
(13, 'Lizzy Caplan'),
(14, 'Jessica Lucas'),
(15, 'Mike Vogel'),
(16, 'Nicholas Brendon'),
(17, 'Maury Sterling'),
(18, 'Emily Baldoni'),
(19, 'Aaron Eckhart'),
(20, 'Heath Ledger'),
(21, 'Christian Bale'),
(22, 'Jack Nicholson'),
(23, 'Matt Damon'),
(24, 'Leonardo DiCaprio'),
(25, 'Mary McDonnell'),
(26, 'Jena Malone'),
(27, 'Jake Gyllenhaal'),
(28, 'Marton Csokas'),
(29, 'Asia Argento'),
(30, 'Vin Diesel'),
(31, 'Dominik García-Lorido'),
(32, 'Michael Angarano'),
(33, 'Jason Statham'),
(34, 'Rachel McAdams'),
(35, 'Vince Vaughn'),
(36, 'Owen Wilson'),
(37, 'Ben Foster'),
(38, 'Paula Patton'),
(39, 'Travis Fimmel'),
(40, 'Robin Wright'),
(41, 'Samuel L. Jackson'),
(42, 'Bruce Willis'),
(43, 'Orlando Bloom'),
(44, 'Eric Bana'),
(45, 'Brad Pitt'),
(46, 'Jon Hamm'),
(47, 'Rebecca Hall'),
(48, 'Ben Affleck'),
(49, 'Seth MacFarlane'),
(50, 'Mila Kunis'),
(51, 'Mark Wahlberg'),
(52, 'Sara Paxton'),
(53, 'Leslie Nielsen'),
(54, 'Drake Bell'),
(55, 'Margot Robbie'),
(56, 'Jared Leto'),
(57, 'Will Smith'),
(58, 'Naomie Harris'),
(59, 'Javier Bardem'),
(60, 'Daniel Craig'),
(61, 'Emily Mortimer'),
(62, 'Bob Gunton'),
(63, 'Morgan Freeman'),
(64, 'Tim Robbins'),
(65, 'Kevin Spacey'),
(66, 'Diane Lane'),
(67, 'Anne Hathaway'),
(68, 'Matthew McConaughey'),
(69, 'Marlon Wayans'),
(70, 'Jon Abrahams'),
(71, 'Anna Faris'),
(72, 'Michael Fassbender'),
(73, 'Logan Marshall-Green'),
(74, 'Noomi Rapace'),
(75, 'Scarlett Johansson'),
(76, 'Hugh Jackman'),
(77, 'Julia Roberts'),
(78, 'George Clooney'),
(79, 'Linda Fiorentino'),
(80, 'Tommy Lee Jones'),
(81, 'Joe Pantoliano'),
(82, 'Carrie-Anne Moss'),
(83, 'Guy Pearce'),
(84, 'Laurence Fishburne'),
(85, 'Keanu Reeves'),
(86, 'Natalie Portman'),
(87, 'Gary Oldman'),
(88, 'Jean Reno'),
(89, 'Leslie Bibb'),
(90, 'Jamie Foxx'),
(91, 'Gerard Butler'),
(92, 'Taron Egerton'),
(93, 'Colin Firth'),
(94, 'Uma Thurman'),
(95, 'Daryl Hannah'),
(96, 'David Carradine'),
(97, 'Alfie Allen'),
(98, 'Michael Nyqvist'),
(99, 'Ellen Page'),
(100, 'Joseph Gordon-Levitt'),
(101, 'Ray Liotta'),
(102, 'John Cusack'),
(103, 'Amanda Peet'),
(104, 'Linda Cardellini'),
(105, 'Mahershala Ali'),
(106, 'Viggo Mortensen'),
(107, 'Bryce Dallas Howard'),
(108, 'Edgar Ramírez'),
(109, 'Nikolaj Coster-Waldau'),
(110, 'Brenton Thwaites'),
(111, 'James Caan'),
(112, 'Al Pacino'),
(113, 'Marlon Brando'),
(114, 'Bradley Whitford'),
(115, 'Allison Williams'),
(116, 'Daniel Kaluuya'),
(117, 'Bryan Cranston'),
(118, 'Carey Mulligan'),
(119, 'Ryan Gosling'),
(120, 'Sarah Gadon'),
(121, 'Dominic Cooper'),
(122, 'Luke Evans'),
(123, 'Kiersey Clemons'),
(124, 'Tony Revolori'),
(125, 'Shameik Moore'),
(126, 'Katherine Waterston'),
(127, 'Billy Crudup');

-- --------------------------------------------------------

--
-- Table structure for table `coming_soon`
--

CREATE TABLE `coming_soon` (
  `idSoon` int(11) NOT NULL,
  `soonHeading` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soonPicture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soonDate` date NOT NULL,
  `soonDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `coming_soon`
--

INSERT INTO `coming_soon` (`idSoon`, `soonHeading`, `soonPicture`, `soonDate`, `soonDescription`) VALUES
(1, 'Ad Astra', 'adAstra.jpg', '2019-10-20', 'Astronaut Roy McBride travels to the outer edges of the solar system to find his missing father and unravel a mystery that threatens the survival of our planet.'),
(2, 'The Beach Bum', 'beachBum.jpg', '2019-06-29', 'A rebellious stoner named Moondog lives life by his own rules.'),
(3, 'Dark Phoenix', 'darkPheonix.jpg', '2019-07-07', 'Jean Grey begins to develop incredible powers that corrupt and turn her into a Dark Phoenix. Now the X-Men will have to decide if the life of a team member is worth more than all the people living in the world.'),
(4, 'Avengers: Endgame', 'endgame.jpg', '2019-04-26', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos\' actions and restore order to the universe.'),
(5, 'Once Upon a Time in Hollywood', 'hollywood.jpg', '2019-07-26', 'A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood\'s Golden Age in 1969 Los Angeles.'),
(6, 'The Irishman', 'irishman.jpg', '2019-12-18', 'Frank \"The Irishman\" Sheeran is a man with a lot on his mind, the former labour union high official and hitman, learned to kill serving in Italy during the Second World War.He now looks back on his life and the hits that defined his mob career, maintaining connections with the Buffalo crime family. '),
(7, 'John Wick: Chapter 3 - Parabellum', 'johnWick3.jpg', '2019-05-17', 'Super-assassin John Wick is on the run after killing a member of the international assassin\'s guild, and with a $14 million price tag on his head - he is the target of hit men and women everywhere.'),
(8, 'Men in Black: International', 'mibI.jpg', '2019-06-14', 'The Men in Black have always protected the Earth from the scum of the universe. In this new adventure, they tackle their biggest threat to date: a mole in the Men in Black organization.'),
(9, 'Pokémon Detective Pikachu', 'pokemon.jpg', '2019-05-10', 'In a world where people collect Pokémon to do battle, a boy comes across an intelligent talking Pikachu who seeks to be a detective.'),
(10, 'Velvet Buzzsaw', 'velvet.jpg', '2019-04-02', 'A supernatural force sets out to exact revenge against art profiteers attempting to exploit a series of paintings by an unknown artist.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `idComment` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `comment` text COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`idComment`, `idMovie`, `idUser`, `comment`) VALUES
(1, 1, 4, 'In the first 20 minutes I was so happy with Covenant. It felt sharp, atmospheric, there are interesting character situations, emotive moments and infinitely better writing than we had in Prometheus. As it progresses, this feeling continues - thankfully, a solid sci-fi film that got it right.'),
(2, 1, 5, 'I think people have too high expectation to new movies of famous franchises, and when it doesn\'t come to their expectation, they just freak out and start giving one out of ten. If you have seen lots of harsh criticism for this movie, I say it\'s not bad at all. It\'s still quite entertaining. To be fair, lots of good horror movies are barely above 6 out of ten. So don\'t avoid it just because people say they hate it. It\'s true that they throw lots of (probably too many) elements into this movie, which might turn out to be less exciting. However, the ending succeeds in opening up to more stories, which is good. Also, keep in mind that this is not meant to be like the previous alien movies. It has totally different theme. I bet Ridley is a totally different person now. I would be surprised if he makes a new alien movie with similar tone to the older ones. And it\'s sensible for the old Ridley to explore the \"creation\" stuffs. I think it\'s a fairly good sequel to Prometheus. Look, now we have a new franchise directed by Ridley Scott himself, which is some what relates to the alien franchise. That is just great.'),
(3, 2, 3, 'I don\'t know where the hype for this film comes from, because it can\'t be from the content. The dialogue and characters in this movie are often ridiculous in the least entertaining way possible. Silly can be entertaining, but it can also just feel stupid. The female characters only seem to exist to be Aquaman\'s conscience (because he can\'t think for himself, as he\'s boring), they have no flaws or vices (in other words no depth). The villain is a cheap charicature of the warmonger, with a few poorly expressed environmental ideas thrown into his perspective. The good points of this film fall mostly on the visuals. It is a stunning film in terms of the undersea beauty portrayed, a literal riot of colour across the screen. I would also say that action is pretty positive, the combat is intense and epic. Overral though, I wouldn\'t reccomend'),
(4, 2, 2, 'Everything I saw, read and heard about \'Aquaman\' before it came out had me convinced it wouldn\'t be my cup of tea. My impression was that this would be yet another bloated studio tentpole with cheesy dialog, a generic story and artificial looking CGI. However, once it opened, a passionate film fan I respect a lot started spreading so much obviously genuine enthusiasm for the movie that I eventually got over myself and watched it.'),
(5, 3, 3, 'Well, I just saw Avatar this morning, one of the press premieres which are running on these days. My opinion: you\'ve seen this story a hundred times, but never like this. Finally 3D is what it\'s supposed to be, an instrument at the service of the movie. You\'ll enjoy the visual experience, no doubt.'),
(6, 3, 2, 'A film with the scope of James Cameron\'s Avatar was always going to be a risk both artistically and financially, especially in today\'s economic climate. Whether it will pay off monetarily is a question only time can answer, but this viewer can at the very least attest to it being an artistic triumph.\r\n'),
(7, 3, 5, 'When movies are created, they are done so with intent. Different genres of film target specific audiences, a formula which has sustained Hollywood and it\'s industries since the beginning of the blockbuster movies. When a movie is created in a manner that sets in motion any given goal, said films success is pendant on whether or not that goal is reached. If a comedy creates laughter, or if a romance produces tears, then they are successes in their own right. So when a massively ambitious, seemingly impossible to create film aiming to usher in a new era manages to grab hold of it\'s audience and take them on an unprecedented cinematic roller coaster ride that delivers the goods every turn of the way, it can be considered successful. Avatar is that success.'),
(8, 3, 3, 'Avatar is a movie about two races, usually covering both the human and another race on another planet. Its simply outstanding, it has a plot, it has a structure, it has effects that are done so excellently, you\'d definitely imagine yourself in the movie. Learning how to talk, learning how to feel nature, learning how to fly and heroic love, all of these are all present.Loved it, loved it, simply loved it.\r\n'),
(9, 4, 2, 'This movie is the beginning of the culmination of Marvel\'s masterfully woven cinematic universe. Beginning back in 2008 with iron man, we are finally seeing the results of all the movies have been pointing to; and it did not disappoint. Thanos is a complex villain, with deeper and more interesting desires than just \"world domination.\" The dilemmas all the characters face in this movie (both the heroes and the villains) are truly thought provoking and leave you on the edge of your seat. No other set of movies has beeen so involved, so expanded, and encompassed so many story lines/characters and previous movies. The sheer amount of star power alone in this film is insane; and they do a masterful job of weaving all these unique and various characters into a common storyline.'),
(10, 5, 3, 'All too often people like to rag on movies like this. Not every movie to hit the cinema will be Oscar worthy, Not every movie will be written with a story that will move you to tears or challenge your thinking. Set your expectations for the movie you will see and you are less likely to be disappointed. \r\n\r\nChips is an entertaining cop buddy flick, rated R and has some adult humor. Both Pena and Shepard play their parts well and along the way the movie pokes fun at itself and the genre. There are plenty of laughs to be had here and overall the movie went at a steady pace. There is nothing ground breaking in it but I wanted a laugh, I got a laugh. Hopefully it does well enough at the box office to get a sequel.'),
(11, 6, 4, 'It was nice to finally watch movie that didn\'t seem like anything I\'d ever seen before. This, much like Spielberg\'s \"War of the Worlds\" and \"Children of Men\", completely immerses you in this incredible situation with absolutely no knowledge to comfort you. It\'s very disorienting, which adds to the experience; you never figure out what the hell is going on but you\'re so into survival that you put it past you. You\'re placed with a bunch of characters whom you get to know and eventually must join in their frenzied search for a friend while being subjected to some horrifying imagery and new threats.'),
(12, 7, 4, 'A mind-bending and very entertaining independent science-fiction film, Coherence takes place over a single night in which a group of old friends (an ex-lovers) gather for a party on a night when a comet is expected to pass unusually close to the Earth. One of which is played by Nicholas Brendon of Buffy the Vampire Slayer in a scene-stealing role. I missed him.'),
(13, 11, 5, 'I first saw this on cable tv. Thumbing through the channels I stopped just as Donnie Darko was beginning. I thought the title was weird, and readied my thumb on the remote channel selector...pointed it at the TV...and it stayed there for the rest of the movie! I couldn\'t stop watching! I\'ve never seen a movie like this. The movie has a beautiful aspect (especially the end). And there are a few chuckles as well. Contrary to the more critical commentary, there is depth and complexity to the story that kind of requires you to see it more than once. I\'m no genius, but what I gathered the basis of Donnie Darko to be is about our part in the deliberate DESIGN of our destiny, and I catch more each time I watch it. '),
(14, 11, 2, 'Donnie Darko was a great and thought provoking movie. Most people will probably not understand the movie the first time they watch it, because they don\'t know what to watch for, but the 2nd time you watch the movie most will consider it a great and profound movie. Another way to understand Donnie Darko is to have someone that has already seen the movie to watch it with you and tell you which parts of the movie to remember towards the end of the movie. This is not a movie to watch if one does not like to think during movies. Donnie Darko is also not a movie for the lazy movie watcher to watch. I normally like the easy brained movies that require no thought-process but this is one thought provoking movie that I give a 10 out of 10.'),
(15, 14, 3, 'One reviewer here suggested that instead of seeing Drive you should see what Drive was aspiring to be Layer Cake. Drive is nothing like Layer Cake nor even tries to be. They have nothing in common, and the comment is just absurd. It is a far far better film though. From it\'s title sequence written in cursive pink (which a ton of idiots just did not get for some reason) to it\'s retro soundtrack. It is a picture perfect reflection of the films from the late 60\'s, 70\'s and 80\'s. If you have not seen films from this era (i do believe so many reviewers here have not) you will not entirely get this film.'),
(16, 15, 4, 'Let\'s clear the air about this film. It\'s not a horror film. It\'s not a comedy. What it is, is a suspenseful thriller of the highest level, worthy to be compared to Hitchcock caliber. The humor is there, along with a few horror scenes, but not enough to overshadow the main theme of the story. The film hits all cylinders with almost no misfires. As far as complaints that the film is racist, it is not. It would work just as well with an all-black or all-white cast. Those complaints are from people who are uncomfortable with black people or interracial relationships and are letting it distract them from the narrative of the film. I most certainly hope that it reaches the wider audience that it so richly deserves.'),
(17, 19, 3, 'A journey of reawakening in a Country like ours - Gore Vidal called it the United States Of Amnesia - the absurdity of the behavior in the Southern communities even the kindest ones have a jarring effect. Viggo Mortensen is sheer perfection as the all American Italian. The opening of his heart and of his mind is a total joy and Mahershala Ali provides another magnetic character to his already rich list of magnetic characters but what makes this film fly so high is the humanity that Mortensen and Ali infuse their characters with. I loved them and Green Book provided me with one of the most satisfying endings of 2018. It leaves you with the hopeful thought that perhaps we\'re not there yet but that we are on our way. Happy New Year!'),
(18, 19, 2, 'I saw Don Shirley perform in college in 1966. At the time I simply thought he was a hell of a pianist, using that bass and cello to come up with a unique sound. So when this movie came along, I thought \"I saw that guy!\" I know the critics are being hard on this film, but I sat for two hours, totally captivated. I know there are stereotypes. Could that be because the repeated actions against minorities and the actions of racists have become so commonplace they seem like stereotypes. I believe the performances of these two fine actor made the show. There is a subtlety to this movie that transcends many others of its type. Yes, there are Southern cops; yes, there are men\'s rooms that are off limits; yes, there are simplistic views of racism by white New Yorkers. But what I got was a realistic presentation of an evolving friendship. Shirley is abrasive and self-centered; Lip is clueless most of the time. And I believed in them. See this film.'),
(19, 19, 3, 'I saw this at the premier at TIFF and was thrilled to learn the story is about a real friendship. This is not a typical road movie, or buddy film. Given the lead actors, I knew it would be something special, and it is. Entertaining, funny in parts, hard to accept in others - as a white american who wasn\'t around in the 1960\'s, the racism was mind boggling and I couldn\'t help but feel shame. Green Book has so many layers - family, culture, honesty, dignity, genius, respect, acceptance, stereotypes, racism, music, class, friendship, and fried chicken. Whatever your views, race, or age - this film is not \'preachy\', but you should appreciate an honest portrayal of a difficult time & place in history. I\'ll use the term an \"unlikely friendship\", but knowing the two men were real makes it fantastic. I\'m so grateful to have learned about them and their lives. I only wish there had been a Q&A afterward.'),
(20, 19, 5, 'This picture should be up for BEST PICTURE. It has everything: great acting, solid script-writing (something that Hollywood really needs), and lots of humor. I wish that Hollywood would make more pictures like this.'),
(21, 19, 4, 'I saw this at TIFF and loved it from beginning to end. It\'s a moving true story about two people who forge an unlikely friendship. Thought-provoking but never preachy.'),
(22, 23, 6, 'This is movie is unusual, but it works for me. It kept me intrigued from the beginning with the plot which is not entirely clearly, but that made it more interesting for me. There\'s a lot of action in the movie which I found excellent and enjoyed a lot. It might not be realistic, but its a movie so it doesn\'t have to be. The plot is amazing and I can\'t wait to watch volume 2 soon because of how intriguing volume 1 was.'),
(23, 23, 2, 'Probably Tarantino\'s most universal movie to date, with a little less character dependency than most of his films and a more linear approach than usual, Kill Bill Volume 1 is a great place to start for anyone new to his movies. I don\'t mean to imply this is a shallow film (far from it), i simply found it easier on the mind than Tarantino\'s other movies.'),
(24, 23, 3, 'This film\'s a sampling of the Tarantino \'fury,\' short of the Tarantino customary fiery tongue. It celebrates the Tarantino trademark of avoiding the use of computer-generated CGI special effects. It\'s almost as if I\'m watching a colorful and bloodied kabuki stage that\'s displaying a stunningly massive tournament of multi-layered kung-fu and female samura sword-fighting styles to dazzle the audience. It\'s examining how Tarantino catalogues the great stylistic elements of his favorite \'old-school\' filmmakers and transforms them into a phenomenally creative and mesmerizing film. Yep, there\'s a great deal of captivatingly artistic boldness in this film. Powerfully portrayed and not to be easily forgotten. Violently brutal and gloriously gory without doubt, and yet so aesthetically operatic and astoundingly artful. The music and lyrics that accompany the scenes are astounding. They set the moods so appropriately with the events.'),
(25, 23, 5, 'Kill Bill: Vol. 1 (2003) is a unique film. I\'ve never seen anything quite like it. My commentary for this film is almost all positive. First off, the cast really blew me away, each and every actor did a great job with their respective roles. Uma Thurman is a terrific actress and she was definitely the right choice to play the lead character. Thurman commands this role and you are transfixed by her in every scene she\'s in. It\'s not just the action sequences that she is great in, she\'s just perfect for the role all around. And it wasn\'t just her that I loved, I also liked Vivica A. Fox, Daryl Hannah, and Lucy Lui. They all showed off their acting chops here, especially Fox, I personally loved her short time she\'s in the film. The writing is well done, I especially enjoyed Thurman\'s dialogue, the well written dialogue and the impressive way that she delivers that dialogue all comes together to make something great.'),
(26, 45, 6, 'I didn\'t have any expectations for this film,and it completely blew me away!Visuals were stunning,acting really surprised me,action was incredible.I really can\'t wait for the sequel cause the ending set it up really well.Magic was also pretty damn cool.Orgrim was a ferocious bad ass.It was a damn fine film,best of the 2016 dare i say.Bring on more,and it finally broke the video game movie curse!Go see it,you won\'t regret it!10 out of 10 for me!I think that it will have a good reception from audiences and critics.Warcraft fans will love it.Direction was amazing,one of the best motion capture for a film i\'ve seen,i really hope it does well in the box office and review department cause it was really amazing!'),
(27, 45, 2, 'Quite frankly, I can\'t wait for the next movie... In the meantime, I\'ll watch this one over and over again when I can. This movie has everything that a good movie needs to have, and more. Plus, it just might bring more people to actually play WoW. Parents, maybe some scenes will frighten your kids, but this movie has almost NO blood (even though it has a good share of battle) and the foes are undeniably evil, plus it has good values in it - friendship, courage, responsibility, sacrifice for a good cause, and the belief that anyone can help to change things. That will go down in history as being one of the best ever, for sure.'),
(28, 45, 3, 'I actually thought this film would be bad. Like most other video game movies I thought this was going to be a massive flop and just suck. This movie broke the video game movie curse with style. WarCraft surprised me even though I am a WarCraft fan.'),
(29, 45, 1, 'First off, i would like to point out Duncan Jones has made another fantastic flick. Better than source code, but me personally i loved moon so.... Warcraft isn\'t good enough to beat it lol. So Everything about this movie felt right. And i would like to point out this movie is about the warcraft storyline (First game) Not World Of Warcraft. The acting was good, the pacing was great. The CGI was amazing! Gul\'dan was an awesome villain. Never heard of Daniel Wu But i feel like he will be voice acting more characters soon. I love how they wear that ridiculous armor that a normal person can\'t stand up in. Lothar was an amazing main character, and I only know Travis Fimmel because he\'s in the show vikings but i feel like if the rest of the critics like this movie this could be his breakthrough movie.'),
(30, 45, 4, 'I don\'t want to give away anything, but my god was this movie amazing! The motion capture was superb, the acting superb, and the plot itself was great. For the Warcraft fans you will see plenty of easter eggs that will make you grin or laugh. Over all it\'s what of my favorite movies I have seen this year.\r\n'),
(31, 32, 5, 'It\'s good to see that Ridley Scott still has the same vision for stylistic sets and atmospheric lighting.Lots of dripping water and eery shadows as one might expect from the old master. The special effects are impressive, the CGI is great, the technology is plausible for the turn of the next century. But - and I\'m afraid it\'s a big but - the plot is disjointed, the characters two dimensional and the script is, well, not the best. Far too many things happen which simply make no sense at all, or just don\'t tally with \"what we know already\" about the Alien universe. Far too many plot mechanisms, bits of tech and even shots and scenes are borrowed from other films - Serenity, independence day, The Mummy, Indiana Jones and the Crystal Skull, Pitch Black, X- Files. I won\'t go into detail because I can\'t do that without using spoilers, but try it yourself. Watch the film and see how many ripped off bits you can spot. Spectacular, yes. A great film? No. sadly not.'),
(32, 32, 6, '\"Prometheus\" is lucky I\'m being so generous. The Film seems to have divided people into two groups. Those that thought it was brilliant. And those who thought it was awful. And sadly I find myself swinging more toward the later. Though I can appreciate it for what it really is.'),
(33, 32, 2, 'I Was always wary off a flick which started out as a prequel, then changed its mind, and started to describe itself as something altogether \"new.\" What\'s the point off connecting it with \"Alien\" if it\'s not about \"Alien\" then? Like, really? If its something new then saying its set before \"Alien\" is just a cheap marketing ploy. Too help get noticed what is an otherwise pretty standard science fiction movie.'),
(34, 14, 4, '\'Drive\' is a visceral and brilliantly executed vision of art-house action; possibly one of the greatest art-house films to have graced the screen. Nicolas Winding Refn has created a stylised neo-noir thriller that is simply stunning; full of glorified violence and stroking imagery. The soundtrack is amazing, fully reflecting the films mood, whilst attempting to create an atmospheric feel to accompany the gritty action. \'Drive\' is a captivating mix of contemporary and retro aesthetics. A stylish and taut thriller that keeps the audience entertained from start to finish with breathtaking sequences, brutal violence and stunning cinematography, a modern masterpiece that has truly redefined the noir genre.'),
(35, 14, 3, 'You might hear one comparing this to a Tarantino film, but leave all worries at the door, this is an absorbing and tremendously unique piece of cinema from Danish director Nicolas Winding Refn. The reason it works so exquisitely well is because the film grabs hold of you and takes you inside this often dark and dream-like LA setting. So, when the end of the film hits, you feel apart of this film, and it\'s there to stay.');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `idDirector` int(11) NOT NULL,
  `nameDirector` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`idDirector`, `nameDirector`) VALUES
(1, 'David Fincher'),
(2, 'Rob Cohen'),
(3, 'Simon West'),
(4, 'David Dobkin'),
(5, 'Duncan Jones'),
(6, 'M. Night Shyamalan'),
(7, 'Wolfgang Petersen'),
(8, 'Ben Affleck'),
(9, 'Seth MacFarlane'),
(10, 'Craig Mazin'),
(11, 'David Ayer'),
(12, 'Sam Mendes'),
(13, 'Martin Scorsese'),
(14, 'Frank Darabont'),
(15, 'Steven Knight'),
(16, 'Keenen Ivory Wayans'),
(17, 'Ridley Scott'),
(18, 'Christopher Nolan'),
(19, 'Steven Soderbergh'),
(20, 'Barry Sonnenfeld'),
(21, ' Lana Wachowski'),
(22, 'Luc Besson'),
(23, ' F. Gary Gray'),
(24, 'Matthew Vaughn'),
(25, 'Quentin Tarantino'),
(26, 'Chad Stahelski'),
(27, 'James Mangold'),
(28, 'Peter Farrelly'),
(29, 'Stephen Gaghan'),
(30, 'Alex Proyas'),
(31, 'Francis Ford Coppola'),
(32, 'Jordan Peele'),
(33, 'Nicolas Winding Refn'),
(34, 'Gary Shore'),
(35, 'Rick Famuyiwa'),
(36, 'Richard Kelly'),
(37, 'James Ward Byrkit'),
(38, 'Matt Reeves'),
(39, 'Dax Shepard'),
(40, 'Joe Russo'),
(41, 'James Cameron'),
(42, 'James Wan');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `idGenre` int(11) NOT NULL,
  `genre` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`idGenre`, `genre`) VALUES
(1, 'Horror'),
(2, 'Sci-Fi'),
(3, 'Thriller'),
(4, 'Action'),
(5, 'Adventure'),
(6, 'Fantasy'),
(7, 'Comedy'),
(8, 'Crime'),
(10, 'Mystery'),
(11, 'Drama'),
(12, 'Biography'),
(13, 'History'),
(14, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idMenu` int(11) NOT NULL,
  `href` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idMenu`, `href`, `title`) VALUES
(1, 'index.php', 'HOME'),
(2, 'index.php?page=news', 'NEWS'),
(3, 'index.php?page=soon', 'COMING SOON'),
(4, 'index.php?page=login', 'LOGIN'),
(5, 'index.php?page=admin', 'ADMIN'),
(6, 'index.php?page=profile', 'PROFILE'),
(7, 'index.php?page=logout', 'LOGOUT');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `idMovie` int(11) NOT NULL,
  `movieHeading` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `moviePicture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `movieRating` float NOT NULL,
  `movieDate` date NOT NULL,
  `movieDuration` int(3) NOT NULL,
  `movieDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `movieDirector` int(11) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`idMovie`, `movieHeading`, `moviePicture`, `movieRating`, `movieDate`, `movieDuration`, `movieDescription`, `movieDirector`, `visible`) VALUES
(1, 'Alien: Covenant', 'alien.jpg', 3.5, '2017-05-19', 122, 'The crew of a colony ship, bound for a remote planet, discover an uncharted paradise with a threat beyond their imagination, and must attempt a harrowing escape.', 17, 1),
(2, 'Aquaman', 'aquaman.jpg', 3.5, '2018-12-21', 143, 'Arthur Curry, the human-born heir  to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.', 42, 1),
(3, 'Avatar', 'avatar.jpg', 4, '2009-12-18', 162, 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 41, 1),
(4, 'Avengers: Infinity War', 'avengersIW.jpg', 3.5, '2018-04-27', 149, 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 40, 1),
(5, 'CHIPS', 'chips.jpg', 3.5, '2017-03-24', 100, 'A rookie officer is teamed with a hardened pro at the California Highway Patrol, though the newbie soon learns his partner is really an undercover Fed investigating a heist that may involve some crooked cops.', 39, 1),
(6, 'Cloverfield', 'cloverfield.jpg', 3, '2008-01-18', 85, 'A group of friends venture deep into the streets of New York on a rescue mission during a rampaging monster attack.', 38, 1),
(7, 'Coherence', 'coherence.jpg', 3.5, '2014-08-06', 89, 'Strange things begin to happen when a group of friends gather for a dinner party on an evening when a comet is passing overhead.', 37, 1),
(8, 'The Dark Knight', 'darkKnight.jpg', 5, '2008-07-18', 152, 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 18, 1),
(10, 'The Departed', 'departed.jpg', 4.5, '2008-10-06', 151, 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.\r\n', 13, 1),
(11, 'Donnie Darko', 'donnieDarko.jpg', 4.5, '2001-10-26', 113, 'A troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes, after he narrowly escapes a bizarre accident.\r\n', 36, 1),
(12, 'Dope', 'dope.jpg', 3.5, '2015-06-19', 103, 'Life changes for Malcolm, a geek who\'s surviving life in a tough neighborhood, after a chance invitation to an underground party leads him and his friends into a Los Angeles adventure.\r\n', 35, 1),
(13, 'Dracula Untold', 'draculaUntold.jpg', 3, '2014-10-10', 92, 'As his kingdom is being threatened by the Turks, young prince Vlad Tepes must become a monster feared by his own people in order to obtain the power needed to protect his own family, and the families of his kingdom.\r\n', 34, 1),
(14, 'Drive', 'drive.jpg ', 3.5, '2011-10-16', 100, 'A mysterious Hollywood stuntman and mechanic moonlights as a getaway driver and finds himself in trouble when he helps out his neighbor.\r\n', 33, 1),
(15, 'Get Out', 'getOut.jpg', 4, '2017-02-24', 104, 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.\r\n', 32, 1),
(16, 'The Godfather', 'godfather.jpg', 5, '1972-03-24', 175, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.\r\n', 31, 1),
(17, 'Gods of Egypt', 'godsOfEgypt.jpg', 3, '2016-02-26', 127, 'Mortal hero Bek teams with the god Horus in an alliance against Set, the merciless god of darkness, who has usurped Egypt\'s throne, plunging the once peaceful and prosperous empire into chaos and conflict.\r\n', 30, 1),
(18, 'Gold', 'gold.jpg', 3.5, '2017-01-27', 120, 'Kenny Wells, a prospector desperate for a lucky break, teams up with a similarly eager geologist and sets off on a journey to find gold in the uncharted jungle of Indonesia.\r\n', 29, 1),
(19, 'Green Book', 'greenBook.jpg', 4, '2016-11-16', 130, 'A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.\r\n', 28, 1),
(20, 'Identity', 'identity.jpg', 3.5, '2003-04-25', 90, 'Stranded at a desolate Nevada motel during a nasty rain-storm, ten strangers become acquainted with each other when they realize that they\'re being killed off one by one.\r\n', 27, 1),
(21, 'Inception', 'inception.jpg ', 4.5, '2010-07-16', 148, 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.\r\n', 18, 1),
(22, 'John Wick', 'johnWick.jpg', 3.5, '2014-10-24', 101, 'An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.\r\n', 26, 1),
(23, 'Kill Bill: Vol. 1', 'killBill.jpg', 4, '2003-10-10', 111, 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.\r\n', 25, 1),
(24, 'Kingsman: The Secret Service', 'kingsman.jpg', 5, '2015-02-13', 129, 'A spy organization recruits an unrefined, but promising street kid into the agency\'s ultra-competitive training program, just as a global threat emerges from a twisted tech genius.\r\n', 24, 1),
(25, 'Law Abiding Citizen', 'lawAbiding.jpg', 4, '2009-10-16', 109, 'A frustrated man decides to take justice into his own hands after a plea bargain sets one of his family\'s killers free. He targets not only the killer but also the district attorney and others involved in the deal.\r\n', 23, 1),
(26, 'Léon: The Professional', 'leon.jpg', 4.5, '1994-11-18', 110, 'Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. Léon and Mathilda form an unusual relationship, as she becomes his protégée and learns the assassin\'s trade.\r\n', 22, 1),
(27, 'The Matrix', 'matrix.jpg', 4.5, '1999-03-31', 136, 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.\r\n', 21, 1),
(28, 'Memento', 'memento.jpg', 4.5, '2001-05-25', 113, 'A man with short-term memory loss attempts to track down his wife\'s murderer.\r\n', 18, 1),
(29, 'Men in Black', 'mib.jpg', 3.5, '1997-07-02', 98, 'A police officer joins a secret organization that polices and monitors extraterrestrial interactions on Earth.\r\n', 20, 1),
(30, 'Ocean\'s Eleven', 'oceanEleven.jpg', 4, '2001-12-07', 116, 'Danny Ocean and his eleven accomplices plan to rob three Las Vegas casinos simultaneously.\r\n', 19, 1),
(31, 'The Prestige', 'prestige.jpg', 4.5, '2006-10-20', 130, 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.\r\n', 18, 1),
(32, 'Prometheus', 'prometheus.jpg', 3.5, '2012-06-08', 124, 'Following clues to the origin of mankind, a team finds a structure on a distant moon, but they soon realize they are not alone.\r\n', 17, 1),
(33, 'Scary Movie', 'scaryMovie.jpg', 3.5, '2000-07-07', 88, 'A year after disposing of the body of a man they accidentally killed, a group of dumb teenagers are stalked by a bumbling serial killer.\r\n', 16, 1),
(34, 'Serenity', 'serenity.jpg ', 3.5, '2019-01-25', 106, 'A fishing boat captain juggles facing his mysterious past and finding himself ensnared in a reality where nothing is what it seems.\r\n', 15, 1),
(35, 'Seven', 'seven.jpg', 4, '1995-09-22', 127, 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.\r\n', 1, 1),
(36, 'The Shawshank Redemption', 'shawshankRedemption.jpg', 5, '1994-10-14', 142, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.\r\n', 14, 1),
(37, 'Shutter Island', 'shutterIsland.jpg', 4.5, '2010-02-19', 138, 'In 1954, a U.S. Marshal investigates the disappearance of a murderer, who escaped from a hospital for the criminally insane.\r\n', 13, 1),
(38, 'Skyfall', 'skyfall.jpg', 4, '2012-11-09', 143, 'Bond\'s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.\r\n', 12, 1),
(39, 'Suicide Squad', 'suicideSquad.jpg', 3, '2016-08-05', 123, 'A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.\r\n', 11, 1),
(40, 'Superhero Movie', 'superhero.jpg', 3, '2008-03-28', 75, 'Orphaned high school student Rick Riker is bitten by a radioactive dragonfly, develops super powers (except for the ability to fly), and becomes a hero.\r\n', 10, 1),
(41, 'Ted', 'ted.jpg', 3.5, '2012-06-29', 106, 'John Bennett, a man whose childhood wish of bringing his teddy bear to life came true, now must decide between keeping the relationship with the bear or his girlfriend, Lori.\r\n', 9, 1),
(42, 'The Town', 'town.jpg', 4.5, '2010-09-17', 125, 'As he plans his next job, a longtime thief tries to balance his feelings for a bank manager connected to one of his earlier heists, as well as the F.B.I. Agent looking to bring him and his crew down.\r\n', 8, 1),
(43, 'Troy', 'troy.jpg', 4, '2004-05-14', 163, 'An adaptation of Homer\'s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.\r\n', 7, 1),
(44, 'Unbreakable', 'unbreakable.jpg', 3.5, '2000-11-22', 106, 'A man learns something extraordinary about himself after a devastating accident.\r\n', 6, 1),
(45, 'Warcraft: The Beginning', 'warcraft.jpg', 4.5, '2016-06-10', 123, 'As an Orc horde invades the planet Azeroth using a magic portal, a few human heroes and dissenting Orcs must attempt to stop the true evil behind this war.\r\n', 5, 1),
(46, 'Wedding Crashers', 'weddingCrashers.jpg', 3.5, '2005-07-15', 119, 'John Beckwith and Jeremy Grey, a pair of committed womanizers who sneak into weddings to take advantage of the romantic tinge in the air, find themselves at odds with one another when John meets and falls for Claire Cleary.\r\n', 4, 1),
(47, 'Wild Card', 'wildCard.jpg', 3.5, '2015-01-14', 92, 'When a Las Vegas bodyguard with lethal skills and a gambling problem gets in trouble with the mob, he has one last play...and it\'s all or nothing.\r\n', 3, 1),
(48, 'xXx', 'xxx.jpg', 3.5, '2002-08-09', 124, 'An extreme sports athlete, Xander Cage, is recruited by the government on a special mission.\r\n', 2, 1),
(49, 'Zodiac', 'zodiac.jpg', 4, '2007-03-02', 157, 'In the late 1960s/early 1970s, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.\r\n', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `idMovAct` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  `idActor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`idMovAct`, `idMovie`, `idActor`) VALUES
(1, 1, 72),
(2, 1, 126),
(3, 1, 127),
(4, 2, 3),
(5, 2, 2),
(6, 2, 1),
(7, 3, 6),
(8, 3, 5),
(9, 3, 4),
(10, 4, 9),
(11, 4, 8),
(12, 4, 7),
(13, 5, 10),
(14, 5, 11),
(15, 5, 12),
(16, 6, 13),
(17, 6, 14),
(18, 6, 15),
(19, 7, 16),
(20, 7, 17),
(21, 7, 18),
(22, 11, 25),
(23, 11, 26),
(24, 11, 27),
(25, 8, 19),
(26, 8, 20),
(27, 8, 21),
(28, 10, 22),
(29, 10, 23),
(30, 10, 24),
(31, 12, 123),
(32, 12, 124),
(33, 12, 125),
(34, 13, 120),
(35, 13, 121),
(36, 13, 122),
(37, 14, 118),
(38, 14, 117),
(39, 14, 119),
(40, 15, 114),
(41, 15, 115),
(42, 15, 116),
(43, 16, 111),
(44, 16, 112),
(45, 16, 113),
(46, 17, 91),
(47, 17, 109),
(48, 17, 110),
(49, 18, 107),
(50, 18, 108),
(51, 18, 68),
(52, 19, 104),
(53, 19, 105),
(54, 19, 106),
(55, 20, 103),
(56, 20, 101),
(57, 20, 102),
(58, 21, 99),
(59, 21, 100),
(60, 21, 24),
(61, 22, 97),
(62, 22, 98),
(63, 22, 85),
(64, 23, 95),
(65, 23, 96),
(66, 23, 94),
(67, 24, 41),
(68, 24, 92),
(69, 24, 93),
(70, 25, 90),
(71, 25, 91),
(72, 25, 89),
(73, 26, 86),
(74, 26, 87),
(75, 26, 88),
(76, 27, 82),
(77, 27, 84),
(78, 27, 85),
(79, 28, 81),
(80, 28, 82),
(81, 28, 83),
(82, 29, 79),
(83, 29, 57),
(84, 29, 80),
(85, 30, 77),
(86, 30, 78),
(87, 30, 45),
(88, 31, 75),
(89, 31, 76),
(90, 31, 21),
(91, 32, 72),
(92, 32, 73),
(93, 32, 74),
(94, 33, 69),
(95, 33, 70),
(96, 33, 71),
(97, 34, 66),
(98, 34, 67),
(99, 34, 68),
(100, 35, 65),
(101, 35, 63),
(102, 35, 45),
(103, 36, 62),
(104, 36, 63),
(105, 36, 64),
(106, 37, 9),
(107, 37, 61),
(108, 37, 24),
(109, 38, 58),
(110, 38, 59),
(111, 38, 60),
(112, 39, 55),
(113, 39, 56),
(114, 39, 57),
(115, 40, 52),
(116, 40, 53),
(117, 40, 54),
(118, 41, 49),
(119, 41, 50),
(120, 41, 51),
(121, 42, 46),
(122, 42, 47),
(123, 42, 48),
(124, 43, 43),
(125, 43, 44),
(126, 43, 45),
(127, 44, 40),
(128, 44, 41),
(129, 44, 42),
(130, 45, 37),
(131, 45, 38),
(132, 45, 39),
(133, 46, 34),
(134, 46, 35),
(135, 46, 36),
(136, 47, 31),
(137, 47, 32),
(138, 47, 33),
(139, 48, 28),
(140, 48, 29),
(141, 48, 30),
(142, 49, 9),
(143, 49, 7),
(144, 49, 27);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `idMovGen` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`idMovGen`, `idMovie`, `idGenre`) VALUES
(1, 49, 8),
(2, 49, 11),
(3, 49, 10),
(4, 48, 4),
(5, 48, 5),
(6, 48, 3),
(7, 47, 4),
(8, 47, 8),
(9, 47, 11),
(10, 46, 7),
(11, 46, 14),
(12, 45, 4),
(13, 45, 5),
(14, 45, 6),
(15, 44, 11),
(16, 44, 10),
(17, 44, 2),
(18, 43, 11),
(19, 43, 13),
(20, 42, 8),
(21, 42, 11),
(22, 42, 3),
(23, 41, 7),
(24, 41, 6),
(25, 40, 4),
(26, 40, 7),
(27, 39, 4),
(28, 39, 5),
(29, 39, 6),
(30, 38, 5),
(31, 38, 4),
(32, 38, 3),
(33, 37, 10),
(34, 37, 3),
(35, 36, 11),
(36, 35, 8),
(37, 35, 11),
(38, 35, 10),
(39, 34, 11),
(40, 34, 10),
(41, 34, 2),
(42, 33, 7),
(43, 32, 5),
(44, 32, 10),
(45, 32, 2),
(46, 31, 11),
(47, 31, 10),
(48, 31, 2),
(49, 30, 8),
(50, 30, 3),
(51, 29, 5),
(52, 29, 7),
(53, 29, 10),
(54, 28, 10),
(55, 28, 3),
(56, 27, 4),
(57, 27, 2),
(58, 26, 4),
(59, 26, 8),
(60, 26, 11),
(61, 25, 8),
(62, 25, 11),
(63, 25, 3),
(64, 24, 4),
(65, 24, 5),
(66, 24, 7),
(67, 23, 4),
(68, 23, 8),
(69, 23, 3),
(70, 22, 4),
(71, 22, 8),
(72, 22, 3),
(73, 21, 4),
(74, 21, 5),
(75, 21, 2),
(76, 20, 10),
(77, 20, 3),
(78, 19, 12),
(79, 19, 7),
(80, 19, 11),
(81, 18, 5),
(82, 18, 11),
(83, 18, 3),
(84, 17, 4),
(85, 17, 5),
(86, 17, 6),
(87, 16, 8),
(88, 16, 11),
(89, 15, 1),
(90, 15, 10),
(91, 15, 3),
(92, 14, 8),
(93, 14, 11),
(94, 13, 4),
(95, 13, 11),
(96, 13, 6),
(97, 12, 7),
(98, 12, 8),
(99, 12, 11),
(100, 11, 11),
(101, 11, 2),
(102, 11, 3),
(103, 10, 8),
(104, 10, 11),
(105, 10, 3),
(106, 8, 4),
(107, 8, 8),
(108, 8, 11),
(109, 7, 1),
(110, 7, 10),
(111, 7, 2),
(112, 6, 4),
(113, 6, 1),
(114, 6, 2),
(115, 5, 4),
(116, 5, 7),
(117, 5, 8),
(118, 4, 4),
(119, 4, 5),
(120, 4, 2),
(121, 3, 4),
(122, 3, 5),
(123, 3, 6),
(124, 2, 4),
(125, 2, 5),
(126, 2, 6),
(127, 1, 1),
(128, 1, 2),
(129, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `idNews` int(11) NOT NULL,
  `newsHeading` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newsTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `newsText` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`idNews`, `newsHeading`, `newsTime`, `newsText`) VALUES
(1, 'Box Office: ‘Aladdin’ Conjures $110 Million-Plus Over Memorial Day Weekend', '2019-05-28 10:34:59', 'Disney’s live-action “Aladdin” soared far above the competition in North America, with an estimated $112.7 million at 4,476 sites over four days.\r\n\r\nIt’s the fifth-highest Memorial Day weekend total ever, topping “X-Men: Days of Future Past’s” 2014 mark of $110.4 million. Disney holds the record for the holiday, with 2007’s “Pirates of the Caribbean: At World’s End” at $139 million.\r\n\r\n“Aladdin” easily outperformed Disney’s pre-opening domestic projections, which were in the $75 million to $85 million range for the four days — and underlined the validity of the studio’s strategy of rebooting its animated classics such as “Beauty and the Beast” and “The Jungle Book.” In this case, it remade the original 1992 animated movie with Mena Massoud as Aladdin, Will Smith as the Genie, Naomi Scott as Jasmine and Marwan Kenzari as Jafar. Guy Ritchie directed.'),
(2, 'Netflix Orders Arabic Horror Series \'Paranormal\' From Mohamed Hefzy, Amr Salama', '2019-05-28 10:35:33', 'Netflix has greenlit its most ambitious Middle East series to date, and from two of the region\'s most established names.\r\n\r\nParanormal, based on the best-selling Arabic horror books by late author Ahmed Khaled Tawfik that have sold more than 15 million copies, also marks the streaming giant\'s first foray into Egyptian drama, and will be produced by Mohamed Hefzy and Amr Salama. The latter — who directed the Egyptian Oscar entry Sheikh Jackson and local box office hit Excuse My French — will helm the series and serve as showrunner.'),
(3, 'For ‘The Haunting Of Hill House,’ Production Designer Patricio M. Farrell Built 15,000 Square-Foot Mansion On Atlanta Soundstage', '2019-05-28 10:35:59', 'A terrifying spin on Shirley Jackson’s classic horror novel of the same name, The Haunting of Hill House was a production designer’s dream, a series in which the central location was the star—a living, breathing, decomposing and perturbing character unto itself. Joining Mike Flanagan on the first season of his Netflix horror anthology, production designer Patricio M. Farrell embraced the challenge of creating the space, which was elegant and overpowering, with surprises lurking around every corner.\r\n\r\nAlternating between three timelines, Hill House centers on the Crains, a family that moves into a New England mansion in the summer of 1992, only to encounter paranormal experiences that haunt them for the rest of their lives. Shooting The Haunting in Atlanta, Farrell scouted the surrounding area for a mansion that felt like Hill House, and could serve as his exterior.'),
(4, 'Tarantino, Malick, Banderas: A Dozen New Oscar Contenders, Courtesy of Cannes', '2019-05-28 10:36:17', 'Launching a film at the Cannes Film Festival is equal measures honor and risk. For every “The Artist,” there’s a “Grace of Monaco;” others are happy to leave unscathed. Historically it’s a relative few who leave poised for Oscar consideration, but 2019 proved to be a strong year.\r\n\r\nAmong these are the two splashiest festival debuts, both showbiz sagas: Quentin Tarantino’s $90-million “Once Upon A Time In Hollywood”, starring Leonardo DiCaprio, Brad Pitt, and Margot Robbie, and Dexter Fletcher’s flashy $40 million bio-musical “Rocketman”, starring Taron Egerton as Elton John.\r\n\r\nStudios tend to premiere their movies in Cannes as a launch pad for international release. Ten years ago, Tarantino’s “Inglourious Basterds” was a smash at Cannes in 2009 and delivered $321 million worldwide along with eight Oscar nominations and one win, for Christoph Waltz. This time, the movie’s megastar wattage lit up every news outlet around the world.'),
(5, 'Bill Yoast Dies: Inspiration For Coach Portrayal In ‘Remember The Titans’ Was 94', '2019-05-28 10:36:36', 'Bill Yoast, the football coach whose personality was portrayed by Will Patton in the film Remember The Titans, has died. He was 94 and passed at an assisted living facility in Springfield, Virginia, according to a news release from the Alexandria City Public Schools.\r\n\r\nYoast coached at Francis C. Hammond High School, an all-white school, before integration in the city high schools of Alexandria in 1971. He became defensive coach and assistant to head coach Herman Boone, who is black.\r\n\r\nThe relationship between the two men, who were portrayed by Will Patton and Denzel Washington, was the focus of the 2000 film.'),
(6, '‘Moonfall’ Among Films Acquired by KKR-Fred Kogel’s New Company', '2019-05-28 10:36:57', 'Roland Emmerich’s action-packed disaster movie “Moonfall” has been acquired by the joint venture between KKR and Fred Kogel. The unnamed new company, which will emerge from Tele München Group (Tmg), Universum Film, I&U TV and Wiedemann & Berg Film, will handle the theatrical release of “Moonfall” in Germany.\r\n\r\n“Moonfall,” which was written by Emmerich, Spenser Cohen (“Extinction”) and Harald Kloser, is one of the several titles picked up by the new German banner rolling off Cannes.\r\n\r\nOther films acquired by the joint venture include Robert Lorenz (“Trouble with the Curve”)’s “Minuteman” with Liam Neeson (“Taken”); Philip John (“Outlander”)’s “Let There Be Rock;” Derrick Borte (“American Dreamer”)’s “Unhinged;” and Jon S. Baird’s (“Stan & Ollie”) “Rotchild.”'),
(7, 'The Mars Volta Say Reunion Is ‘Happening’', '2019-05-28 10:37:16', 'A reunion of The Mars Volta is in the cards, according to band member Cedric Bixler-Zavala. After a fan tweeted, “I dream of you guys giving Tmv a new chapter,” Bixler-Zavala replied, “It’s happening.”\r\n\r\nThe musician followed up the confirmation with more details in a tweet that has since been deleted, suggesting that the band is writing new music and has plans to tour. While there is no word on when any of this might emerge, it sounds like Bixler-Zavala and bandmate Omar Rodríguez-López will be back.'),
(8, 'Barbara Sarasola-Day on ‘White Blood’ a Cannes’ Acid Argentine Highlight', '2019-05-28 10:37:31', 'Cannes — Programmed by France’s Association for the Diffusion of Independent Cinema, Cannes’ Acid section turned its spotlight this year on Argentine cinema.\r\n\r\nAs access to talent – creative and crews – becomes a predominant challenge for producers worldwide, given the huge production demand driven by global platforms, the radar can hardly be spread too wide in search of young emerging writer-directors Rich in talent and benefiting from a distinguished national cinema heritage, Argentina’s independent sector faces, however, the immediate challenge of finding an audience in and outside its domestic market. Acid, a parallel section at Cannes, provided an invaluable international platform.\r\n\r\nOne of three features in its Argentine focus, “Sangre blanca” (“White Blood”) marks the sophomore feature of Barbara Sarasola-Day (“Belayed”). It also underscores how much upscale foreign-language cinema is developing a genre edge.'),
(9, 'Cannes Winner ‘Parasite’ Poised to Head Korean Box Office', '2019-05-28 10:38:12', 'South Korean film director Bong Joon-ho touched down to a hero’s welcome at Seoul’s Incheon Airport on Monday afternoon, after winning the top prize at the Cannes Film Festival on Saturday with his black drama “Parasite’. He also received the news that the film is off to a flying start at the Korean box office.\r\n\r\nAccording to ticket pre-sales data from the Kobis box office service of the Korean Film Council, “Parasite” should open as the top film next weekend. That puts it ahead of currently in theaters “Aladdin” and Wednesday release “Godzilla: King of the Monsters.” Kobis shows over 207,000 tickets sold ahead of the film’s Thursday release through Cj Entertainment.\r\n\r\nThe unanimous jury decision was the first Palme d’Or at Cannes for a Korean film and rectified a surprising omission, considering how many Korean films over the past 25 years have enjoyed global critical and commercial success.'),
(10, 'Daniel Wright, Former ‘Biggest Loser’ Contestant, Dies at 30', '2019-05-28 10:38:49', 'Daniel Wright, a Season 7 contestant on “The Biggest Loser,” died Sunday almost two years after being diagnosed with leukemia. He was 30.\r\n\r\nSeveral of his fellow castmates from NBC’s weight loss show confirmed the sad news on social media, including Courtney Crozier Respess.\r\n\r\n“I am so so heartbroken to hear about Daniel Wright this morning. He has fought So Hard during his battle with cancer & more,” Respess wrote on Facebook. “This man is one of the kindest people I have ever met & is a true difference maker in this world!”\r\n\r\nAccording to a GoFundMe page, Wright was first diagnosed with cancer in October 2017 and was on the road to getting his life back to normal when he relapsed with a more severe case of leukemia in December 2018.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_role`, `role_name`) VALUES
(1, '\0\0\0u\0\0\0s\0\0\0e\0\0\0r'),
(2, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `idSubmenu` int(11) NOT NULL,
  `href` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`idSubmenu`, `href`, `title`) VALUES
(1, 'index.php?page=all', 'SHOW ALL'),
(2, '#', 'LATEST MOVIES'),
(3, '#', 'TOP RATED'),
(4, '#', 'MOST COMMENTED');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `idRole` int(11) NOT NULL DEFAULT '1',
  `firstName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userPicture` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `idRole`, `firstName`, `lastName`, `email`, `username`, `password`, `userPicture`) VALUES
(1, 2, 'Strahinja', 'Popadić', 'strahinja.popadic.281.18@ict.edu.rs', 'admin', '79294919a18286802ae30db46e394d7d', 'user-admin.jpg'),
(2, 1, 'Danijela', 'Nikitin', 'danijela.nikitin@ict.edu.rs', 'danijela', '28a4fc21276765acf2d2b0f014e172c9', 'user.png'),
(3, 1, 'Pera', 'Perić', 'pera.peric@gmail.com', 'pera', '84b90ebb62cb2a59d5d525582ded3a9e', 'user.png'),
(4, 1, 'Marko', 'Marković', 'marko.markovic@gmail.com', 'marko', 'bab590844c4879c70e8c05234c9243b2', 'user.png'),
(5, 1, 'Milica', 'Jovanović', 'milica22@gmail.com', 'mica22', 'j3k1j2kk4j5n5kkjnhh5luyfvb988kih12gjh', 'user.png'),
(6, 1, 'Stefan', 'Pejović', 'stefan@gmail.com', 'stefke', 'fb3f3450d36fbb0626631fdbb2d43b1a', 'user.png'),
(11, 1, 'Milena', 'Vesic', 'milena@gmail.com', 'milenaa', '9003b132ea8a45eaf748e2933f8db6e7', 'user.png'),
(13, 1, 'Luka', 'Lukic', 'luka.lukic@ict.edu.rs', 'lukaL', '54b4e559477074c1e9feac76ad06cd9e', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`idActor`);

--
-- Indexes for table `coming_soon`
--
ALTER TABLE `coming_soon`
  ADD PRIMARY KEY (`idSoon`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`idComment`),
  ADD KEY `idMovie` (`idMovie`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`idDirector`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`idGenre`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`idMovie`),
  ADD KEY `movieDirector` (`movieDirector`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`idMovAct`),
  ADD KEY `idMovie` (`idMovie`),
  ADD KEY `idActor` (`idActor`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`idMovGen`),
  ADD KEY `idMovie` (`idMovie`),
  ADD KEY `idGenre` (`idGenre`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idNews`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`idSubmenu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idRole` (`idRole`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `idActor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `coming_soon`
--
ALTER TABLE `coming_soon`
  MODIFY `idSoon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `idComment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `idDirector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `idMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `idMovie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `movie_actor`
--
ALTER TABLE `movie_actor`
  MODIFY `idMovAct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `idMovGen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `idNews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `idSubmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `movies` (`idMovie`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`movieDirector`) REFERENCES `directors` (`idDirector`);

--
-- Constraints for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `movies` (`idMovie`),
  ADD CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`idActor`) REFERENCES `actors` (`idActor`);

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `movies` (`idMovie`),
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`idGenre`) REFERENCES `genres` (`idGenre`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idRole`) REFERENCES `roles` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
