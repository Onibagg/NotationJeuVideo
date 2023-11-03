-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 25 oct. 2022 à 13:32
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `r310jeuxrt`
--
CREATE DATABASE IF NOT EXISTS `r310jeuxrt` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `r310jeuxrt`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `Id_Article` int(11) NOT NULL,
  `TitreArticle` varchar(250) NOT NULL,
  `ContenuArticle` text NOT NULL,
  `Synopsis` text NOT NULL,
  `NomJeu` varchar(250) NOT NULL,
  `PrixJeu` double NOT NULL,
  `NoteJeu` double NOT NULL,
  `DateCreationArticle` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`Id_Article`, `TitreArticle`, `ContenuArticle`, `Synopsis`, `NomJeu`, `PrixJeu`, `NoteJeu`, `DateCreationArticle`) VALUES
(1, 'Zelda', 'Breath of the Wild porte en lui les espoirs et les doutes d\'un nombre considérable de personnes. Celles qui ont une Wii U et veulent un dernier grand jeu avant que le rideau tombe, celles qui veulent un system seller pour justifier l\'achat d\'une Switch, celles qui guettent religieusement chaque nouveau Zelda en se gardant le maximum de surprises, celles qui ont perdu foi en la série mais pourraient la retrouver avec cet épisode moins traditionnel... Nintendo doit composer avec toutes ces attentes depuis plusieurs années, sans tomber dans le fan service complet ou le reboot à peu de frais. A l\'heure où la légende vient de fêter son 31e anniversaire au Japon, a-t-elle encore des choses intéressantes à transmettre et à explorer ? Réponse rapide : oui, plus que jamais. Boulapoire', 'The Legend of Zelda : Breath of the Wild est un jeu d\'action/aventure sur Switch. Link se réveille d\'un sommeil de 100 ans dans un royaume d\'Hyrule dévasté. Il lui faudra percer les mystères du passé et vaincre Ganon, le fléau. L\'aventure prend place dans un gigantesque monde ouvert et accorde ainsi une part importante à l\'exploration. Le titre a été pensé pour que le joueur puisse aller où il veut dès le début, s\'éloignant de la linéarité habituelle de la série.', 'The Legend of Zelda : Breath of the Wild', 50, 9, '2022-10-19 20:50:30'),
(2, 'Deponia', 'Graphismes soignés, personnages attachants, humour omniprésent... Difficile de reprocher quoi que ce soit à Deponia sur le fond. L’histoire et son héros se révèlent finalement plus complexes qu’au premier abord, et on aura plaisir à les voir prendre de l’ampleur, au fil de dialogues ciselés avec soin et d’énigmes assez retorses pour nous tenir en haleine sans jamais devenir frustrantes. Dommage que l’animation ne se montre pas toujours à la hauteur et que les arrières plans soient souvent inertes. Le plus gênant reste toutefois l’absence de localisation française sur la version digitale qui exclura d’emblée les réfractaires aux langues de Goethe et de Shakespeare. Ceux-là devront se tourner vers la copie physique distribuée par Micro Application mais pour peu qu’ils se donnent cette peine, ils retrouveront la saveur si particulière des grands jeux d’aventure qui firent la gloire du PC durant les années 90.', 'Deponia est loin d’être la destination idéale pour des vacances de rêve… Elle sert de vide-ordure aux riches habitants des planètes alentour et les déchets s’y entassent à perte de vue ! Mais les habitants ne sont pas tous résignés. Rufus, par exemple, en a ras le bol. Rien ne lui tient plus à cœur que de pouvoir, un jour, quitter son village natal. Chaque jour, il tente désespérément de fuir ce trou perdu.  Son destin bascule lorsque Goal, une jeune et mystérieuse demoiselle lui tombe (littéralement) dans les bras. Rufus voit en elle une occasion unique de sortir de sa vie de misère: il va ramener Goal dans son monde, Elysium, où tout un chacun vit dans le luxe et sans soucis.  Vivez avec Rufus une aventure hilarante, dans laquelle vous allez devoir sauver une planète, mettre à jour une sombre conspiration mais aussi conquérir le cœur de sa bien-aimée ! Prenez garde, au cours de votre périple, vous rencontrerez un étrange sosie, de nouveaux amis mais aussi des ennemis insoupçonnés. La route vers l’Eldorado est semée d’embûches! \r\n', 'Deponia', 5, 7, '2022-10-19 20:51:32'),
(3, 'Okami', 'Okami apparaît au départ comme un hommage au Japon traditionnel, à ses mythes et légendes, à son art atemporel. Son esthétique si particulière confère au jeu une ambiance inouïe, poétique et envoûtante. Le titre de Capcom s\'enrichit, qui plus est, d\'un gameplay évoquant beaucoup un certain Zelda et qui promet une aventure riche et passionnante oscillant entre drame et légèreté. Les sources d\'inspiration paraissent nombreuses, mais elles n\'empêchent pas un instant Okami de se distinguer comme une production hors normes qui impressionne par sa cohérence et sa justesse. Preuve que pour la PS2, il n\'est jamais trop tard pour se trouver des jeux cultes. Amaebi', 'Okami est un jeu d\'aventure et d\'action. Le titre dispose d\'un aspect graphique très particulier, et vous propose d\'incarner la déesse Amaterasu réincarnée en un magnifique loup blanc, dans une quête pour redonner de la vie et de la couleur dans votre monde, terrorisé par de nombreux ennemis qui font régner les ténèbres. Battez-vous au moyen d\'un pinceau, véritable prolongement du personnage qu\'on incarne, et utilisez-le également pour avancer dans l\'histoire.', 'Okami', 20, 9, '2022-10-19 20:52:10'),
(4, 'The Witcher 3', 'On réservera surtout cette version Switch de The Witcher 3 à deux publics bien distincts. D\'un côté les \'bons clients\', ceux qui ont retourné le jeu dans tous les sens mais sont prêts à raquer plein pot pour un Geralt dans le sac-à-dos. Ceux-là devront faire le deuil des sauvegardes cross-platform, qui manquent tristement à l’appel de ce qui ressemble pourtant très fort à une version d’appoint. De l\'autre côté du spectre, on trouve évidemment les nouveaux curieux, à condition cependant que la portabilité mérite selon eux des trésors d\'indulgence. Si en revanche vous espérez découvrir l’excellence à la polonaise sans sacrifices ou que vous jouez principalement en mode docké, gardez précieusement vos Orins. Seuls d’authentiques magiciens auraient pu réaliser pareil tour de passe-passe, et Saber Interactive n’est qu’excellent technicien. Gautoz', 'Porté par son scénario, The Witcher 3: Wild Hunt est un jeu de rôles en monde ouvert, dévoilant un univers fantastique visuellement bluffant et plein de choix déterminants. Dans The Witcher, vous incarnez Geralt de Riv, un chasseur de monstres professionnel chargé de retrouver l\'enfant de la prophétie dans un vaste monde ouvert, rempli de villes marchandes, d\'îles pirates, de cols montagneux dangereux et de cavernes oubliées à explorer. \r\n\r\nINCARNEZ UN TUEUR DE MONSTRES PROFESSIONNEL EXTRÊMEMENT BIEN ENTRAÎNÉ \r\nFormés dès leur plus jeune âge et soumis à des mutations leur conférant des capacités, une force et des réflexes surhumains, les sorceleurs sont un contrepoids dans un monde infesté de monstres.\r\nExterminez vos ennemis avec la brutalité d\'un chasseur de monstres professionnel, pourvu d\'un arsenal d\'armes améliorables, de potions de mutation et de magie de combat.\r\nTraquez un vaste éventail de monstres exotiques, allant des bêtes sauvages rôdant dans les cols montagneux jusqu\'aux prédateurs surnaturels rusés, tapis dans l\'ombre des villes densément peuplées.\r\nUtilisez vos récompenses pour améliorer vos armes, acheter des armures personnalisées, miser sur des courses de chevaux, des jeux de cartes et des combats à mains nues, ou profiter des autres plaisirs de la nuit.', 'The Witcher 3 : Wild Hunt ', 30, 8, '2022-10-19 20:52:40'),
(5, 'Pokémon Épée et Bouclier', 'Oui, Pokémon a changé. Ce duo Epée et Bouclier parachève la transition lente mais ferme amorcée depuis la sixième génération : moins de donjons, moins d’allers-retours et un peu plus de liberté et de fluidité pour une aventure incroyablement calibrée, mais encore un peu trop linéaire et guidée malgré les Terres sauvages. Au-delà de cette belle promesse d’un monde ouvert ne reste qu’une vaste zone où apparaissent certes de nombreux Pokémon, mais où l’on aurait souhaité un peu plus de vie et d’exploration active. Le gameplay, lui, est heureusement toujours aussi efficace, et s’enrichit de nouvelles créatures originales et bien conçues, aux associations de types parfois inédites, mais hélas trop peu nombreuses.\r\nIl se dégage néanmoins de cet épisode une certaine maîtrise, que ce soit dans le rythme ou dans le rendu, mais cette course à l’efficacité aura au passage gommé certains aspects pourtant marquants des titres de la saga, comme les interactions avec l’environnement : on ne s’ennuie jamais, toujours emporté par cette intrigue qui sait ménager ses effets, mais on traverse sans doute un peu trop vite cette nouvelle région que l’on aurait voulu découvrir plus en profondeur. Pokémon Épée et Bouclier offrent une aventure très agréable à suivre, indéniablement, et proposent assurément de nombreuses nouvelles fonctionnalités qui feront la joie des joueurs. Cependant, étant donné certains sacrifices structurels, à commencer par l’absence totale de plusieurs centaines de créatures et la suppression d’éléments de gameplay comme la méga-évolution, difficile de considérer cette nouvelle version comme étant l’apogée de la licence. Voyons-y plutôt un bon épisode de plus. ALS\r\n', 'Pokémon Épée / Bouclier est le nouvel épisode de la série Pokémon, exclusif à la console de salon de Nintendo. Le jeu prend place dans la nouvelle région de Galar et donne accès à trois nouveaux Pokémons de départ : Ouistempo (plante), Flambino (feu) et Larméléon (eau).', 'Pokémon Épée et Bouclier', 45, 7, '2022-10-19 20:53:29'),
(6, 'FIFA 21', 'Cette édition next-gen de FIFA 21 ne réserve pas de grandes surprises de par son statut de titre Smart Delivery. On pourra bien évidemment se réjouir d\'un aspect graphique bien plus fin que son penchant One/PS4 et des temps de chargement désormais inexistants, mais toutes les autres \'nouveautés\' sont de l\'ordre de l\'anecdotique dans le fond. On croise désormais les doigts pour que FIFA 22 s\'appuie sur cette refonte visuelle et chamboule son contenu pour un vrai épisode de transition. Un objectif à tenir pour EA Sports, afin d\'effacer le passage décevant de sa licence sur la dernière génération de consoles. Izokay', 'FIFA 21 est une simulation de football éditée par Electronic Arts. Comme chaque année, le jeu promet des améliorations techniques pour toujours plus de réalisme ainsi que des animations et des comportements toujours plus poussés. Les modes carrière et Ultimate Team disposent également de nouveaux ajouts.', 'FIFA 21', 45, 7, '2022-10-19 20:54:12');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `Id_Avis` int(11) NOT NULL,
  `TitreAvis` varchar(250) NOT NULL,
  `TexteAvis` text,
  `NoteAvis` int(11) NOT NULL,
  `DateCreationAvis` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Id_Membre` int(11) NOT NULL,
  `Id_Article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`Id_Avis`, `TitreAvis`, `TexteAvis`, `NoteAvis`, `DateCreationAvis`, `Id_Membre`, `Id_Article`) VALUES
(1, 'Zelda, un incontournable', 'Zelda,une série ayant actuellement plus de 30 ans d\'existence,a réussi à se renouveler avec le dernier en date : Breath of The wild\r\n\r\nC\'est littéralement une expérience inoubliable.Un véritable appel à la nature et une vrai liberté d\'action dans un monde ouvert vaste,très vaste. Malgré ça,l\'OW de ce Zelda est très rempli après avoir obtenu le paravoile dans le plateau du prélude.\r\n\r\nLes environnements sont variés et certain paysages sont magnifiques malgré la technique assez faiblarde du jeu mais ça se rattrape largement avec un D.A. inspiré des films de Miyazaki,qui est somptueuse.\r\n\r\nLe Gameplay s\'est complexifié et est devenu plus dynamique ! L\'IA des monstres est très bonne et on peut assister à des événements assez inattendus comme un Mob géant pouvant tenir un squelette et le jeter sur nous !\r\n\r\nLe contenu du jeu est énorme ! Malgré le peu de donjons (6) il y a 76 quêtes annexes et de nombreuses tenues,armes,bouclier !\r\n\r\nEn Bref ce jeu est un incontournable ! Ce jeu est pour moi la retranscription de l\'aventure !\r\n\r\nBon jeu ! ;)\r\n\r\nDreamkicks[456]', 10, '2021-05-21 11:41:35', 1, 1),
(2, 'Du grand Nintendo, du grand Monolith, du grand jeu vidéo.', 'Dès le lancement du jeu la première fois on est embarqué dans une aventure épique et qui se limite à l\'essentiel. Pas d\'écran titre la première fois qu\'on lance le jeu, on est directement plongé dans une cinématique. Très peu de musique aussi, mais elles suffisent et sont souvent excellentes. Un tutoriel totalement libre, pour une découverte ensuite qui se veut encore plus déroutante tant on est lâché dans la nature. On s\'attaque à tout ce qui bouge jusqu\'à ce qu\'on tombe innocemment sur un groupe d\'ennemi bien trop fort et on se fait one shot ... Cette idée de mélanger les niveaux de difficulté au sein de toutes les zones renforce cette sensation que le jeu est tout sauf linéaire, et que malgré les apparences, ce Zelda est bien une révolution dans le genre.\r\n\r\nCar oui, ce Zelda n\'a rien à voir avec les anciens. Le scénario est moins dirigé, on perd en cinématique, mais on gagne en liberté. D\'ailleurs la liberté est poussée ici au paroxysme, entre le craft de nourriture et le farm d\'armes pour combattre, on se retrouve vraiment loin des canons du genre et on se rapproche parfois d\'un jeu de survie.\r\n\r\nDurée de vie titanesque, musique grandiose, le seul bas qui blesse, c\'est l\'aspect technique, qui loin d\'être irréprochable, reste quand même largement supportable. Oui on a déjà vu des open world plus beau graphiquement, mais la direction artistique magistrale de ce Zelda compense pleinement. Oui il y a des chutes de FPS de temps à autre, surtout sur le grand plateau en vérité, mais c\'est pas vraiment gênant et quand bien même, faut rappeler qu\'on a affaire avant tout à une machine portable ! Les rageux crieront au scandale en disant que c\'est aussi une console de salon, mais le fait est que le format reste portable, et que technologiquement parlant, on pouvait difficilement faire mieux que ça.\r\n\r\nAu final, de ce Zelda, je retiens une attente interminable, et une satisfaction incroyable d\'une aventure au delà de tout ce que j\'avais pu espérer.\r\n\r\nUkkonen', 10, '2022-10-20 11:43:14', 3, 1),
(3, 'Une planète poubelle ', 'Visuellement superbe, les animations sont un peu trop lentes à mon goût pour profiter pleinement de cette débauche de détail. L\'humour omniprésent donne envie de parcourir toutes les options de dialogue pour ne pas en perdre une miette. Le problème avec cet humour c\'est que beaucoup d\'énigmes sont tirées par les cheveux. Les aller-retour étant particulièrement longs, du fait des animation lentes, j\'ai parfois préféré regarder une solution plutôt que de gâcher mon plaisir de découverte. Je recommande tout de même aux amateurs d\'univers loufoque. ', 7, '2022-08-15 11:43:18', 1, 2),
(4, 'Une vrai réussite', 'Le ton est donné dès les premières minutes du jeu. On trouve un personnage tellement arrogant, égoïste et sur de lui qu\'on s\'y attache facilement. Le croisement réussi d\'un full throtle et de monkey island. Graphiquement, c\'est sympa, les dialogues sont drôles, même si la localisation française ne retranscrit pas tout à fait les jeux de mots, les énigmes ne sont pas toujours évidentes puisque qu\'on part dans le délire d\'un monkey island, sans pour autant être bloqué pendant 5 heures. L\'histoire se suit avec plaisir et c\'est un bonheur de voir Daedalic Entertainment continuer dans un genre devenu trop rare. Merci à eux, car j\'ai adoré les chroniques de sadwick et A new beginning. Ils montrent qu\'ils sont capables d\'exceller dans le point and click même en changeant d\'univers.\r\nCompter une bonne dizaine d\'heure pour venir à bout du soft sans soluce et passer les énigmes.\r\n\r\nImpalaxx22', 8, '2022-10-20 11:44:14', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `Id_Categorie` int(11) NOT NULL,
  `NomCategorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`Id_Categorie`, `NomCategorie`) VALUES
(1, 'Plate-forme'),
(2, 'Sport'),
(3, 'Point & click'),
(4, 'RPG'),
(5, 'Action/Aventure'),
(6, 'FPS'),
(7, 'Divers');

-- --------------------------------------------------------

--
-- Structure de la table `classer`
--

CREATE TABLE `classer` (
  `Id_Article` int(11) NOT NULL,
  `Id_Categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classer`
--

INSERT INTO `classer` (`Id_Article`, `Id_Categorie`) VALUES
(6, 2),
(2, 3),
(4, 4),
(1, 5),
(3, 5),
(5, 5),
(2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `Id_Image` int(11) NOT NULL,
  `Chemin` varchar(250) NOT NULL,
  `Id_Article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`Id_Image`, `Chemin`, `Id_Article`) VALUES
(1, 'ImagesBD/1/Zelda_1.jpg', 1),
(2, 'ImagesBD/1/Zelda_2.jpg', 1),
(3, 'ImagesBD/1/Zelda_3.jpg', 1),
(4, 'ImagesBD/1/Zelda_4.jpg', 1),
(5, 'ImagesBD/1/Zelda_5.jpg', 1),
(6, 'ImagesBD/1/Zelda_6.jpg', 1),
(7, 'ImagesBD/2/Deponia_1.jpg', 2),
(8, 'ImagesBD/2/Deponia_2.jpg', 2),
(9, 'ImagesBD/2/Deponia_3.jpg', 2),
(10, 'ImagesBD/2/Deponia_4.jpg', 2),
(11, 'ImagesBD/2/Deponia_5.jpg', 2),
(12, 'ImagesBD/2/Deponia_6.jpg', 2),
(13, 'ImagesBD/3/Okami_1.jpg', 3),
(14, 'ImagesBD/3/Okami_2.jpg', 3),
(15, 'ImagesBD/3/Okami_4.jpg', 3),
(16, 'ImagesBD/3/Okami_5.jpg', 3),
(17, 'ImagesBD/3/Okami_6.jpg', 3),
(18, 'ImagesBD/4/Witcher_1.jpg', 4),
(19, 'ImagesBD/4/Witcher_2.jpg', 4),
(20, 'ImagesBD/4/Witcher_4.jpg', 4),
(21, 'ImagesBD/4/Witcher_5.jpg', 4),
(22, 'ImagesBD/5/Pokemon_1.jpg', 5),
(23, 'ImagesBD/5/Pokemon_2.jpg', 5),
(24, 'ImagesBD/5/Pokemon_3.jpg', 5),
(25, 'ImagesBD/5/Pokemon_4.jpg', 5),
(26, 'ImagesBD/5/Pokemon_5.jpg', 5),
(27, 'ImagesBD/5/Pokemon_6.jpg', 5),
(28, 'ImagesBD/6/FIFA_1.jpg', 6),
(29, 'ImagesBD/6/FIFA_2.jpg', 6),
(30, 'ImagesBD/6/FIFA_3.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `Id_Membre` int(11) NOT NULL,
  `Login` varchar(100) NOT NULL,
  `MotDePasse` varchar(100) NOT NULL,
  `EMail` varchar(100) NOT NULL,
  `DateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateDerniereConnexion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Role` enum('Utilisateur','Administrateur') NOT NULL DEFAULT 'Utilisateur'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`Id_Membre`, `Login`, `MotDePasse`, `EMail`, `DateCreation`, `DateDerniereConnexion`, `Role`) VALUES
(1, 'mouton', 'motdepasse', 'mouton@mouton.mouton', '2022-10-19 20:28:09', '2022-10-19 20:28:09', 'Utilisateur'),
(2, 'RT', 'motdepasse', 'RT@StMaloRT.fr', '2022-10-19 20:29:57', '2022-10-19 20:29:57', 'Administrateur'),
(3, 'doooo', 'motdepasse', 'doooo@oo.oo', '2022-10-19 20:33:36', '2022-10-19 20:33:36', 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `rediger`
--

CREATE TABLE `rediger` (
  `Id_Article` int(11) NOT NULL,
  `Id_Membre` int(11) NOT NULL,
  `DateModificationArticle` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rediger`
--

INSERT INTO `rediger` (`Id_Article`, `Id_Membre`, `DateModificationArticle`) VALUES
(1, 1, '2022-10-21 17:22:39'),
(2, 2, '2022-10-21 17:22:39'),
(3, 1, '2022-10-21 17:23:01'),
(4, 3, '2022-10-21 17:23:01'),
(5, 1, '2022-10-21 17:23:17'),
(6, 2, '2022-10-21 17:23:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`Id_Article`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`Id_Avis`),
  ADD KEY `fk_membre_avis` (`Id_Membre`),
  ADD KEY `fk_article_avis` (`Id_Article`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`Id_Categorie`);

--
-- Index pour la table `classer`
--
ALTER TABLE `classer`
  ADD PRIMARY KEY (`Id_Article`,`Id_Categorie`),
  ADD KEY `fk_categorie_illlustrer` (`Id_Categorie`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Id_Image`),
  ADD KEY `fk_article` (`Id_Article`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`Id_Membre`);

--
-- Index pour la table `rediger`
--
ALTER TABLE `rediger`
  ADD PRIMARY KEY (`Id_Article`,`Id_Membre`),
  ADD KEY `fk_membre_redaction` (`Id_Membre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `Id_Article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `Id_Avis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `Id_Categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `Id_Image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `Id_Membre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `fk_article_avis` FOREIGN KEY (`Id_Article`) REFERENCES `article` (`Id_Article`),
  ADD CONSTRAINT `fk_membre_avis` FOREIGN KEY (`Id_Membre`) REFERENCES `membre` (`Id_Membre`);

--
-- Contraintes pour la table `classer`
--
ALTER TABLE `classer`
  ADD CONSTRAINT `fk_article_illustrer` FOREIGN KEY (`Id_Article`) REFERENCES `article` (`Id_Article`),
  ADD CONSTRAINT `fk_categorie_illlustrer` FOREIGN KEY (`Id_Categorie`) REFERENCES `categorie` (`Id_Categorie`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_article` FOREIGN KEY (`Id_Article`) REFERENCES `article` (`Id_Article`);

--
-- Contraintes pour la table `rediger`
--
ALTER TABLE `rediger`
  ADD CONSTRAINT `fk_article_redaction` FOREIGN KEY (`Id_Article`) REFERENCES `article` (`Id_Article`),
  ADD CONSTRAINT `fk_membre_redaction` FOREIGN KEY (`Id_Membre`) REFERENCES `membre` (`Id_Membre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
