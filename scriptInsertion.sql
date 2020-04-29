INSERT INTO users(email, pseudo, mdp) VALUES 
('root','root', 'root'),
('admin','admin', 'admin'),
('mael','mael@orange.fr', 'mael'),
('mattis','mattis@orange.fr', 'mattis'),
('quentin','quentin@orange.fr', 'quentin'),
('theo','theo@outlook.fr', 'theo'),
('kevin','kevin@outlook.fr', 'kevin'),
('benjo','benjo@outlook.fr', 'benjo'),
('leo','leo@outlook.fr', 'leo'),
('lea','lea@sfr.fr', 'lea'),
('romane','romane@sfr.fr', 'romane'),
('sylvie','sylvie@sfr.fr', 'sylvie'),
('charlotte','charlotte@sfr.fr', 'charlotte'),
('sarah','sarah@sfr.fr', 'sarah'),
('laura','laura@sfr.fr', 'laura'),
('chloe','chloe@sfr.fr', 'chloe'),
('margaux','margaux@sfr.fr', 'margaux');

INSERT INTO amities (idUser1,idUser2) VALUES 
(1,2),
(1,3),
(1,5),
(1,6),
(1,7),
(1,8),
(5,6),
(5,7),
(5,9),
(5,10),
(5,13),
(7,8),
(7,9),
(7,14),
(7,15),
(7,17),
(7,18),
(17,18),
(17,16),
(17,14),
(17,5),
(17,1);

INSERT INTO demandeamis (idDemandeur,idReceveur) VALUES 
(1,4),
(1,13),
(1,18),
(9,10),
(9,8),
(9,14),
(6,17),
(6,11),
(13,6);

INSERT INTO posts (titre, texte, idUser) VALUES
('L\'Albatros','Souvent, pour s\'amuser, les hommes d'équipage
Prennent des albatros, vastes oiseaux des mers,
Qui suivent, indolents compagnons de voyage,
Le navire glissant sur les gouffres amers.

A peine les ont-ils déposés sur les planches,
Que ces rois de l\'azur, maladroits et honteux,
Laissent piteusement leurs grandes ailes blanches
Comme des avirons traîner à côté d'eux.

Ce voyageur ailé, comme il est gauche et veule!
Lui, naguère si beau, qu'il est comique et laid!
L\'un agace son bec avec un brûle-gueule,
L\'autre mime, en boitant, l'infirme qui volait!
Le Poète est semblable au prince des nuées
Qui hante la tempête et se rit de l\'archer;
Exilé sur le sol au milieu des huées,
Ses ailes de géant l\'empêchent de marcher.',5),

('Le Chêne et le Roseau','Le Chêne un jour dit au Roseau :
"Vous avez bien sujet d\'accuser la Nature ;
Un Roitelet pour vous est un pesant fardeau.
Le moindre vent, qui d\'aventure
Fait rider la face de l\'eau,
Vous oblige à baisser la tête :
Cependant que mon front, au Caucase pareil,
Non content d'arrêter les rayons du soleil,
Brave l\'effort de la tempête.
Tout vous est Aquilon, tout me semble Zéphyr.
Encor si vous naissiez à l\'abri du feuillage
Dont je couvre le voisinage,
Vous n\'auriez pas tant à souffrir :
Je vous défendrais de l\'orage ;
Mais vous naissez le plus souvent
Sur les humides bords des Royaumes du vent.
La nature envers vous me semble bien injuste.
- Votre compassion, lui répondit l\'Arbuste,
Part d\'un bon naturel ; mais quittez ce souci.
Les vents me sont moins qu\'à vous redoutables.
Je plie, et ne romps pas. Vous avez jusqu\'ici
Contre leurs coups épouvantables
Résisté sans courber le dos ;
Mais attendons la fin. "Comme il disait ces mots,
Du bout de l\'horizon accourt avec furie
Le plus terrible des enfants
Que le Nord eût portés jusque-là dans ses flancs.
L\'Arbre tient bon ; le Roseau plie.
Le vent redouble ses efforts,
Et fait si bien qu\'il déracine
Celui de qui la tête au Ciel était voisine
Et dont les pieds touchaient à l\'Empire des Morts.',6),

('Le Rat de ville et le Rat des champs','Autrefois le Rat de ville
Invita le Rat des champs,
D\'une façon fort civile,
A des reliefs d'Ortolans.

Sur un Tapis de Turquie
Le couvert se trouva mis.
Je laisse à penser la vie
Que firent ces deux amis.

Le régal fut fort honnête,
Rien ne manquait au festin ;
Mais quelqu\'un troubla la fête
Pendant qu'ils étaient en train.

A la porte de la salle
Ils entendirent du bruit :
Le Rat de ville détale ;
Son camarade le suit.

Le bruit cesse, on se retire :
Rats en campagne aussitôt ;
Et le citadin de dire :
Achevons tout notre rôt.

- C\'est assez, dit le rustique ;
Demain vous viendrez chez moi :
Ce n\'est pas que je me pique
De tous vos festins de Roi ;

Mais rien ne vient m\'interrompre :
Je mange tout à loisir.
Adieu donc ; fi du plaisir
Que la crainte peut corrompre.',17),

('Demain, dès l\’aube…','Demain, dès l\’aube, à l\’heure où blanchit la campagne,
Je partirai. Vois-tu, je sais que tu m\’attends.
J\’irai par la forêt, j\’irai par la montagne.
Je ne puis demeurer loin de toi plus longtemps.

Je marcherai les yeux fixés sur mes pensées,
Sans rien voir au dehors, sans entendre aucun bruit,
Seul, inconnu, le dos courbé, les mains croisées,
Triste, et le jour pour moi sera comme la nuit.

Je ne regarderai ni l\’or du soir qui tombe,
Ni les voiles au loin descendant vers Harfleur,
Et quand j\’arriverai, je mettrai sur ta tombe
Un bouquet de houx vert et de bruyère en fleur.',13),

('Ma Bohème','Je m\’en allais, les poings dans mes poches crevées ;
Mon paletot aussi devenait idéal ;
J\’allais sous le ciel, Muse ! et j\’étais ton féal ;
Oh ! là ! là ! que d\’amours splendides j\’ai rêvées !

Mon unique culotte avait un large trou.
– Petit-Poucet rêveur, j\’égrenais dans ma course
Des rimes. Mon auberge était à la Grande-Ourse.
– Mes étoiles au ciel avaient un doux frou-frou

Et je les écoutais, assis au bord des routes,
Ces bons soirs de septembre où je sentais des gouttes
De rosée à mon front, comme un vin de vigueur ;

Où, rimant au milieu des ombres fantastiques,
Comme des lyres, je tirais les élastiques
De mes souliers blessés, un pied près de mon coeur !',8),

('Il n\'y a pas d'amour heureux','Rien n\'est jamais acquis à l\'homme Ni sa force
Ni sa faiblesse ni son coeur Et quand il croit
Ouvrir ses bras son ombre est celle d\'une croix
Et quand il croit serrer son bonheur il le broie
Sa vie est un étrange et douloureux divorce
Il n\'y a pas d'amour heureux

Sa vie Elle ressemble à ces soldats sans armes
Qu\'on avait habillés pour un autre destin
À quoi peut leur servir de se lever matin
Eux qu\'on retrouve au soir désoeuvrés incertains
Dites ces mots Ma vie Et retenez vos larmes
Il n\'y a pas d'amour heureux

Mon bel amour mon cher amour ma déchirure
Je te porte dans moi comme un oiseau blessé
Et ceux-là sans savoir nous regardent passer
Répétant après moi les mots que j'ai tressés
Et qui pour tes grands yeux tout aussitôt moururent
Il n\'y a pas d\'amour heureux

Le temps d\'apprendre à vivre il est déjà trop tard
Que pleurent dans la nuit nos coeurs à l\'unisson
Ce qu\'il faut de malheur pour la moindre chanson
Ce qu\'il faut de regrets pour payer un frisson
Ce qu\'il faut de sanglots pour un air de guitare
Il n\'y a pas d'amour heureux.

Il n\'y a pas d'amour qui ne soit à douleur
Il n\'y a pas d'amour dont on ne soit meurtri
Il n\'y a pas d'amour dont on ne soit flétri
Et pas plus que de toi l\'amour de la patrie
Il n\'y a pas d'amour qui ne vive de pleurs
Il n\'y a pas d'amour heureux
Mais c\'est notre amour à tous les deux',11),

('Chanson d\’automne','Les sanglots longs
Des violons
De l\’automne
Blessent mon coeur
D\’une langueur
Monotone.

Tout suffocant
Et blême, quand
Sonne l\’heure,
Je me souviens
Des jours anciens
Et je pleure

Et je m\’en vais
Au vent mauvais
Qui m\’emporte
Deçà, delà,
Pareil à la
Feuille morte.

Paul Verlaine, Poèmes saturniens',5),

('Le cancre','Il dit non avec la tête
mais il dit oui avec le coeur
il dit oui à ce qu\'il aime
il dit non au professeur
il est debout
on le questionne
et tous les problèmes sont posés
soudain le fou rire le prend
et il efface tout
les chiffres et les mots
les dates et les noms
les phrases et les pièges
et malgré les menaces du maître
sous les huées des enfants prodiges
avec des craies de toutes les couleurs
sur le tableau noir du malheur
il dessine le visage du bonheur',12),

('Le dormeur du val','C\’est un trou de verdure où chante une rivière,
Accrochant follement aux herbes des haillons
D\’argent ; où le soleil, de la montagne fière,
Luit : c’est un petit val qui mousse de rayons.

Un soldat jeune, bouche ouverte, tête nue,
Et la nuque baignant dans le frais cresson bleu,
Dort ; il est étendu dans l\’herbe, sous la nue,
Pâle dans son lit vert où la lumière pleut.

Les pieds dans les glaïeuls, il dort. Souriant comme
Sourirait un enfant malade, il fait un somme :
Nature, berce-le chaudement : il a froid.

Les parfums ne font pas frissonner sa narine ;
Il dort dans le soleil, la main sur sa poitrine,
Tranquille. Il a deux trous rouges au côté droit.

Arthur Rimbaud',18),

('Mignonne, allons voir si la rose','A Cassandre

Mignonne, allons voir si la rose
Qui ce matin avoit desclose
Sa robe de pourpre au Soleil,
A point perdu ceste vesprée
Les plis de sa robe pourprée,
Et son teint au vostre pareil.

Las ! voyez comme en peu d'espace,
Mignonne, elle a dessus la place
Las ! las ses beautez laissé cheoir !
Ô vrayment marastre Nature,
Puis qu\'une telle fleur ne dure
Que du matin jusques au soir !

Donc, si vous me croyez, mignonne,
Tandis que vostre âge fleuronne
En sa plus verte nouveauté,
Cueillez, cueillez vostre jeunesse :
Comme à ceste fleur la vieillesse
Fera ternir vostre beauté.',8),

('Nous dormirons ensemble','Que ce soit dimanche ou lundi
Soir ou matin minuit midi
Dans l'enfer ou le paradis
Les amours aux amours ressemblent
C\'était hier que je t'ai dit
Nous dormirons ensemble

C\'était hier et c\'est demain
Je n\'ai plus que toi de chemin
J\'ai mis mon cœur entre tes mains
Avec le tien comme il va l\'amble
Tout ce qu\'il a de temps humain
Nous dormirons ensemble

Mon amour ce qui fut sera
Le ciel est sur nous comme un drap
J\'ai refermé sur toi mes bras
Et tant je t\'aime que j\'en tremble
Aussi longtemps que tu voudras
Nous dormirons ensemble.

Louis Aragon.',16),

('La Grenouille qui veut se faire aussi grosse que le Boeuf','Une Grenouille vit un Boeuf
Qui lui sembla de belle taille.
Elle, qui n\'était pas grosse en tout comme un oeuf,
Envieuse, s\'étend, et s\'enfle, et se travaille,
Pour égaler l\'animal en grosseur,
Disant : "Regardez bien, ma soeur ;
Est-ce assez ? dites-moi ; n\'y suis-je point encore ?
- Nenni. - M\'y voici donc ? - Point du tout. - M\'y voilà ?
- Vous n\'en approchez point. "La chétive pécore
S\'enfla si bien qu\'elle creva.
Le monde est plein de gens qui ne sont pas plus sages :
Tout bourgeois veut bâtir comme les grands seigneurs,
Tout petit prince a des ambassadeurs,
Tout marquis veut avoir des pages.',10),

('Le loup et l’agneau','La raison du plus fort est toujours la meilleure :
Nous l\’allons montrer tout à l\’heure.

Un Agneau se désaltérait
Dans le courant d\’une onde pure.
Un Loup survient à jeun qui cherchait aventure,
Et que la faim en ces lieux attirait.
Qui te rend si hardi de troubler mon breuvage ?
Dit cet animal plein de rage :
Tu seras châtié de ta témérité.
– Sire, répond l’Agneau, que votre Majesté
Ne se mette pas en colère ;
Mais plutôt qu\’elle considère
Que je me vas désaltérant
Dans le courant,
Plus de vingt pas au-dessous d\’Elle,
Et que par conséquent, en aucune façon,
Je ne puis troubler sa boisson.
– Tu la troubles, reprit cette bête cruelle,
Et je sais que de moi tu médis l\’an passé.
– Comment l\’aurais-je fait si je n\’étais pas né ?
Reprit l\’Agneau, je tette encor ma mère.
– Si ce n\’est toi, c\’est donc ton frère.
– Je n\’en ai point.
– C\’est donc quelqu’un des tiens :
Car vous ne m\’épargnez guère,
Vous, vos bergers, et vos chiens.
On me l\’a dit : il faut que je me venge.
Là-dessus, au fond des forêts
Le Loup l\’emporte, et puis le mange,
Sans autre forme de procès.

Jean de La Fontaine',7),

('J\'ai dans mon coeur','J\'ai dans mon coeur, dont tout voile s\'écarte,
Deux bancs d\'ivoire, une table en cristal,
Où sont assis, tenant chacun leur carte,
Ton faux amour et mon amour loyal.

J\'ai dans mon coeur, dans mon coeur diaphane,
Ton nom chéri qu\'enferme un coffret d\'or ;
Prends-en la clef, car nulle main profane
Ne doit l\'ouvrir ni ne l\'ouvrit encor.

Fouille mon coeur, ce coeur que tu dédaignes
Et qui pourtant n\'est peuplé que de toi,
Et tu verras, mon amour, que tu règnes
Sur un pays dont nul homme n\'est roi ! 

Théophile Gautier, Espana, 1845.',17),

('Le Corbeau et le Renard','Maître Corbeau, sur un arbre perché,
Tenait en son bec un fromage.
Maître Renard, par l\'odeur alléché,
Lui tint à peu près ce langage :
"Hé ! bonjour, Monsieur du Corbeau.
Que vous êtes joli ! que vous me semblez beau !
Sans mentir, si votre ramage
Se rapporte à votre plumage,
Vous êtes le Phénix des hôtes de ces bois. "
A ces mots le Corbeau ne se sent pas de joie ;
Et pour montrer sa belle voix,
Il ouvre un large bec, laisse tomber sa proie.
Le Renard s\'en saisit, et dit : "Mon bon Monsieur,
Apprenez que tout flatteur
Vit aux dépens de celui qui l\'écoute :
Cette leçon vaut bien un fromage, sans doute. "
Le Corbeau, honteux et confus,
Jura, mais un peu tard, qu\'on ne l\'y prendrait plus.',13),

('Le Pont Mirabeau','Sous le pont Mirabeau coule la Seine
Et nos amours
Faut-il qu\’il m’en souvienne
La joie venait toujours après la peine

Vienne la nuit sonne l\’heure
Les jours s\’en vont je demeure

Les mains dans les mains restons face à face
Tandis que sous
Le pont de nos bras passe
Des éternels regards l’onde si lasse

Vienne la nuit sonne l\’heure
Les jours s\’en vont je demeure

L\’amour s’en va comme cette eau courante
L\’amour s’en va
Comme la vie est lente
Et comme l\’Espérance est violente

Vienne la nuit sonne l\’heure
Les jours s\’en vont je demeure

Passent les jours et passent les semaines
Ni temps passé
Ni les amours reviennent
Sous le pont Mirabeau coule la Seine

Vienne la nuit sonne l\’heure
Les jours s\’en vont je demeure

Guillaume Apollinaire, Alcools, 1913',1),
('Le bateau ivre','Comme je descendais des Fleuves impassibles,
Je ne me sentis plus guidé par les haleurs :
Des Peaux-Rouges criards les avaient pris pour cibles,
Les ayant cloués nus aux poteaux de couleurs.

J\’étais insoucieux de tous les équipages,
Porteur de blés flamands ou de cotons anglais.
Quand avec mes haleurs ont fini ces tapages,
Les Fleuves m\’ont laissé descendre où je voulais.

Dans les clapotements furieux des marées,
Moi, l\’autre hiver, plus sourd que les cerveaux d’enfants,
Je courus ! Et les Péninsules démarrées
N\’ont pas subi tohu-bohus plus triomphants.

La tempête a béni mes éveils maritimes.
Plus léger qu\’un bouchon j\’ai dansé sur les flots
Qu\’on appelle rouleurs éternels de victimes,
Dix nuits, sans regretter l\’oeil niais des falots !

Plus douce qu\’aux enfants la chair des pommes sûres,
L\’eau verte pénétra ma coque de sapin
Et des taches de vins bleus et des vomissures
Me lava, dispersant gouvernail et grappin.

Et dès lors, je me suis baigné dans le Poème
De la Mer, infusé d’astres, et lactescent,
Dévorant les azurs verts ; où, flottaison blême
Et ravie, un noyé pensif parfois descend ;

Où, teignant tout à coup les bleuités, délires
Et rhythmes lents sous les rutilements du jour,
Plus fortes que l\’alcool, plus vastes que nos lyres,
Fermentent les rousseurs amères de l’amour !

Je sais les cieux crevant en éclairs, et les trombes
Et les ressacs et les courants : je sais le soir,
L\’Aube exaltée ainsi qu\’un peuple de colombes,
Et j\’ai vu quelquefois ce que l\’homme a cru voir !

J\’ai vu le soleil bas, taché d\’horreurs mystiques,
Illuminant de longs figements violets,
Pareils à des acteurs de drames très antiques
Les flots roulant au loin leurs frissons de volets !

J\’ai rêvé la nuit verte aux neiges éblouies,
Baiser montant aux yeux des mers avec lenteurs,
La circulation des sèves inouïes,
Et l\’éveil jaune et bleu des phosphores chanteurs !

J\’ai suivi, des mois pleins, pareille aux vacheries
Hystériques, la houle à l’assaut des récifs,
Sans songer que les pieds lumineux des Maries
Pussent forcer le mufle aux Océans poussifs !

J\’ai heurté, savez-vous, d\’incroyables Florides
Mêlant aux fleurs des yeux de panthères à peaux
D\’hommes ! Des arcs-en-ciel tendus comme des brides
Sous l\’horizon des mers, à de glauques troupeaux !

J\’ai vu fermenter les marais énormes, nasses
Où pourrit dans les joncs tout un Léviathan !
Des écroulements d\’eaux au milieu des bonaces,
Et les lointains vers les gouffres cataractant !

Glaciers, soleils d’argent, flots nacreux, cieux de braises !
Échouages hideux au fond des golfes bruns
Où les serpents géants dévorés des punaises
Choient, des arbres tordus, avec de noirs parfums !

J\’aurais voulu montrer aux enfants ces dorades
Du flot bleu, ces poissons d’or, ces poissons chantants.
– Des écumes de fleurs ont bercé mes dérades
Et d\’ineffables vents m\’ont ailé par instants.

Parfois, martyr lassé des pôles et des zones,
La mer dont le sanglot faisait mon roulis doux
Montait vers moi ses fleurs d\’ombre aux ventouses jaunes
Et je restais, ainsi qu\’une femme à genoux…

Presque île, ballottant sur mes bords les querelles
Et les fientes d’oiseaux clabaudeurs aux yeux blonds.
Et je voguais, lorsqu\’à travers mes liens frêles
Des noyés descendaient dormir, à reculons !

Or moi, bateau perdu sous les cheveux des anses,
Jeté par l\’ouragan dans l\’éther sans oiseau,
Moi dont les Monitors et les voiliers des Hanses
N\’auraient pas repêché la carcasse ivre d’eau ;

Libre, fumant, monté de brumes violettes,
Moi qui trouais le ciel rougeoyant comme un mur
Qui porte, confiture exquise aux bons poètes,
Des lichens de soleil et des morves d’azur ;

Qui courais, taché de lunules électriques,
Planche folle, escorté des hippocampes noirs,
Quand les juillets faisaient crouler à coups de triques
Les cieux ultramarins aux ardents entonnoirs ;

Moi qui tremblais, sentant geindre à cinquante lieues
Le rut des Béhémots et les Maelstroms épais,
Fileur éternel des immobilités bleues,
Je regrette l\’Europe aux anciens parapets !

J\’ai vu des archipels sidéraux ! et des îles
Dont les cieux délirants sont ouverts au vogueur :
– Est-ce en ces nuits sans fonds que tu dors et t\’exiles,
Million d’oiseaux d’or, ô future Vigueur ?

Mais, vrai, j\’ai trop pleuré ! Les Aubes sont navrantes.
Toute lune est atroce et tout soleil amer :
L\’âcre amour m\’a gonflé de torpeurs enivrantes.
Ô que ma quille éclate ! Ô que j’aille à la mer !

Si je désire une eau d\’Europe, c\’est la flache
Noire et froide où vers le crépuscule embaumé
Un enfant accroupi plein de tristesse, lâche
Un bateau frêle comme un papillon de mai.

Je ne puis plus, baigné de vos langueurs, ô lames,
Enlever leur sillage aux porteurs de cotons,
Ni traverser l\’orgueil des drapeaux et des flammes,
Ni nager sous les yeux horribles des pontons.

Arthur Rimbaud, Poésies',1);


INSERT INTO commentaires (idPost, idUser, texte) VALUES
(1,1,'Belle poèsie'),
(3,3,'Le roseau plie mais jamais ne rompt'),
(5,5,'Moquerie d\'un rat de ville sur la vie d\'un rat de campagne '),
(7,7,'Poème en rimes embrassées. Pas toujours facile à apprendre'),
(9,9,'Trop triste'),
(11,11,'Poème triste sur la mort d\'un soldat'),
(13,13,'Magnifique poème chanté par jean Ferrat'),
(15,15,'Fable moralisatrice sur les plus forts et les plus faibles et les violences de l\'epoque'),
(17,17,'Jolie critique de la vanité de l\'être humain'),
(2,2,'Trop difficile à apprendre pour ma part. ');