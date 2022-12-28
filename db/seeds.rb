# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "trash"


Booking.destroy_all
Flat.destroy_all
User.destroy_all


puts "create users"

samy = User.new(email: "samy@hotmail.fr", password: "password", last_name: "Rjob", first_name: "Samy", phone_number: "0987654326", description: "Je viens de Nantes et avec plaisir je cherche à me loger en vrai !.")
denis = User.new(email: "denis@hotmail.fr", password: "password", last_name: "vidic", first_name: "denis", phone_number: "0989854326", description: "Je viens de Paris et cherche un appart à louer à Nantes svp !")


puts "create flats"

flat1 = Flat.create!(
  owner: samy,
  name: "Beau T1  à Nantes",
  description: "Venez découvrir notre appartement de 65m² situé au 1er étage d’un immeuble récent de bon standing.

  Vous serez séduits par sa terrasse très bien exposée et sans vis-à-vis, son emplacement de parking sécurisé ainsi que sa proximité avec la vallée du Cens pour profiter d’agréables balades dans la nature.

  Idéalement situé à seulement 10/15 minutes du centre-ville de Nantes, vous profiterez des nombreux commerces de proximité du quartier tout en profitant d'un emplacement calme et silencieux.
  Le logement
  > literie de bonne qualité ;
  > connexion internet avec fibre ;
  > TV écran plat avec système de son ;
  > cuisine équipée avec notamment micro-ondes, lave-linge, cafetière à dosettes, bouilloire, etc. ;
  > épicerie de base : café, thé, sel, poivre, huile, denrées alimentaires de base, etc. ;
  > salle de bain avec douche, sèche-serviettes, sèche-cheveux, savon et shampoing compris ;
  > table et fer à repasser ;
  > livres ;
  > draps et linge de maison fournis ;
  > Nombreux rangements ;
  > …
  Accès des voyageurs
  > à 3 minutes des commerces de proximité et des transports (arrêt de bus « Américains pour un accès rapide et direct au centre-ville en 10 minutes) ;
  > à 5 minutes à pieds de la Vallée du Cens ;
  > à 10 minutes à pieds d’une station de Bicloo (vélos en libre-service type Vélib’) ;
  > à 15 minutes à pieds de l’université de Nantes.
  Autres remarques
  > clés remises en main propre à votre arrivée ;
  > arrivée à partir de 16h selon disponibilité jusqu'à 20h, une arrivée tardive est possible moyennant un complément de 10€ par heure supplémentaire après 20h ;
  > départ de 8h à 11h ;
  > pas de fête ni soirée ;
  > logement strictement non-fumeur ;
  > animaux interdits.
  Numéro d'enregistrement
  4410900265957",
  price_per_day: 67,
  town: "Nantes",
  address: "3 rue des bons français, Nantes"
)


file = File.open(Rails.root.join('db/seeds/images/flat1test.jpg'))
flat1.photo.attach(io: file, filename: "flat1test.jpg", content_type: "image/jpeg")


flat2 = Flat.create!(
  owner: samy,
  name: "T2 familial Nantes - Centre",
  description: "Nous sommes à 2 pas de Graslin, place emblématique de la ville de NANTES. Face au musée DOBREE, quartier calme, espaces verts...Le logement au 5 ème et dernier étage( ascenseur jusqu'au 4 ème) a été entièrement rénové. Lumineux, exposé Sud, vous profitez de superbes vues sur les toits de Nantes et sur la Loire. Belle chambre indépendante équipée en suite parentale. La cuisine est aménagée et équipée.
  Le logement
  Pour le petit déjeuner vous avez à votre disposition, café et thé.
  Grille pain. Une télévision avec accès à toutes les chaines. WIFI
  Numéro d'enregistrement
  441090005386F",
  price_per_day: 77,
  town: "Nantes",
  address: "29 rue de Strasbourg, Nantes"
)


file = File.open(Rails.root.join('db/seeds/images/flat2test.jpg'))
flat2.photo.attach(io: file, filename: "flat2test.jpg", content_type: "image/jpeg")


flat3 = Flat.create!(
  owner: denis,
  name: "T3  à Paris",
  description: "itué dans le très résidentiel quartier Guist’hau, à quelques minutes à pieds du centre historique de Nantes, le Clair Obscur est un appartement à la décoration et aux prestations haut de gamme.
  Le logement
  Le temps d'une nuit ... ou de plusieurs, laissez-vous gagner par la volupté de l'espace balnéo, cédez à la tentation d'un moment cocooning devant la cheminée et rêvez dans le lit rond... peut-être à la recherche de la clef des trois mystères du Clair Obscur....
  Lieu glamour, où aménagements, jeux de lumière et ambiance musicale s’allient pour vous offrir un espace hors du temps, le Clair Obscur vous invite non seulement à explorer votre côté clair et romantique mais aussi à céder à la tentation de mettre, pourquoi pas, un peu plus de piment en dévoilant le côté –un tout petit peu, un peu, très – obscur  de vos fantasmes...Vous vous laisserez emporter par la magie de sa scénographie avec son magnifique mur végétalisé, sa tapisserie « drapé velours », son immense suspension graphique et aérienne, son mobilier design, ses origamis… chaque détail y est pensé pour en faire un lieu à la fois original et élégant.
  Vous pourrez profiter de ses nombreux équipements tels qu’une balnéo deux places, un lit rond, une vaste douche à l’italienne,  une cheminée suspendue, une cuisine entièrement équipée, un écran plat, le wifi... Au gré de vos envies, vous créerez votre propre ambiance grâce à une tablette tactile qui vous permettra de varier la couleur et l’intensité des lumières, de choisir des playlists de musique préprogrammées …
  Afin d’agrémenter votre séjour, petit déjeuner, bouteille de champagne (sauf du dimanche au jeudi), soft drinks, café, thé vous sont offerts. Nous proposons également, en option, bouquet de fleurs ou service traiteur, avec deux menus différents -gastronomique ou verrines-.
  Numéro d'enregistrement
  4410900003544",
  price_per_day: 107,
  town: "Paris",
  address: "9 rue d'Argenteuil, Paris"
)


file = File.open(Rails.root.join('db/seeds/images/flat3test.jpg'))
flat3.photo.attach(io: file, filename: "flat3test.jpg", content_type: "image/jpeg")


flat4 = Flat.create!(
  owner: denis,
  name: "Villa Paris saint denis",
  description: "Nous vous accueillons avec plaisir dans ce gîte de charme qui jouit d’un cadre exceptionnel, au bord de la rivière.
  Découvrez un logement douillet et confortable, appréciez la beauté du paysage et profitez de la détente offerte par le SPA.
  Le logement
  Perchés dans votre nid douillet au milieu d’un écrin de verdure, vous apprécierez la tranquillité et la vue sur l’une des plus belles rivières de France !
  Vous serez séduits par le confort de ce gîte à la décoration raffinée mêlant couleurs naturelles, matières douces et souci du détail pour éveiller vos sens… Une ambiance chaleureuse pour passer un séjour ressourçant.

  Nous vous donnons l'accès à notre SPA extérieur... Laissez vous bercer
  par les bruits de la nature et profitez des effets conjugués par la
  chaleur, l’apesante­ur et les jets de ma­ssage.
  Nous conviendrons ensemble du créneau horaire ou celui-ci vous sera
  entièrement dédié.
  Vous disposez égale­ment d’un accès priv­atif aux rives de l’­Erdre. Une
  terrasse et du mobi­lier de jardin sont à votre entière disp­osition pour
  vous détendre et pi­corer votre apéritif dinatoire…

  Le Nid de L’Erdre est situé sur une vaste propriété familiale. L’accès et les aménagements ont été pensé pour préserver l’intimité des locataires. Le logement entièrement meublé et équipé peut accueillir deux adultes et un jeune enfant.

  Nous vous proposons en supplément une prestation massage couple. N'hésitez pas à ma contactez pour en savoir plus et réserver : leniddelerdre fr
  Accès des voyageurs
  Le Nid de l’Erdre est situé à côté de notre maison de famille où nous vivons avec nos 2 enfants.
  Nous avons aménagé l’accès et orienté le gîte de façon à préserver l’intimité de chacun.
  Nous partageons bien entendu les espaces extérieurs, la terrasse et le SPA.
  Autres remarques
  Entrée personnelle
  Parking gratuit voiture et vélo
  Terrasse privative au bord de la rivière
  Wifi
  Sèche-cheveux
  Linge de toilettes fournis (y compris peignoirs)
  Playlist musicale
  Jeux et lectures…
  Télévision connectéeBelle villa à louer en famille , cuisine aménagée chauffage électrique pour 6 personnes max avec 5 lits!",
  price_per_day: 277,
  town: "Paris",
  address: "3 Boulevard Haussmann, Paris"
)


file = File.open(Rails.root.join('db/seeds/images/flat4test.jpg'))
flat4.photo.attach(io: file, filename: "flat4test.jpg", content_type: "image/jpeg")

flat5 = Flat.create!(
  owner: denis,
  name: "Villa Monaco pas mal saint denis",
  description: "L'urban'appart a la particularité d'être au rez de chaussé sans aucun logement au-dessus.
  L'appartement est fraichement renové, la decoration allie le metal ( meubles) et le bois donnant un style urbain/loft.
  Une attention particulière a été apporté a la qualité de la literie de façon à ce que votre séjour soit le plus reposant possible.
  Le logement
  Conscient que nous sommes tous des consommacteurs pour un monde meilleur, vous trouverez des produits consommables principalement labelisés bio, faire trade et le plus locale possible.
  Accès des voyageurs
  Après être rentrée par la porte d'entrée de l'immeuble, vous aurez accés au hall qui dessert deux appartements dont le studio qui comprent votre pièce de vie et salle d'eau avec WC, ainsi que la place de parking",
  price_per_day: 377,
  town: "Monaco",
  address: "54 Rte de la Piscine, 98000 Monaco"
)


file = File.open(Rails.root.join('db/seeds/images/maisontest.jpg'))
flat5.photo.attach(io: file, filename: "maisontest.jpg", content_type: "image/jpeg")

flat6 = Flat.create!(
  owner: samy,
  name: "maison à Alençon",
  description: "Aimez-vous être surpris ?

  Chrysalide, véritable havre de paix en cœur de ville où vos sens seront mis en éveil dans un espace de 50 m2 disposant d’un jardin intérieur privatif arboré avec terrasse. Venez profiter pleinement d’un moment de découverte où votre corps et votre esprit seront libérés de toutes tensions. Un authentique petit nid spécialement aménagé et pensé pour votre confort le temps d’une nuit, d’un weekend ou plus...

  (Capacité 4 personnes : 1 chambre + 1 canapé lit)
  Le logement
  Situé à 10 minutes à pied du marché de Talensac et de l’île de Versailles, vous pourrez ainsi avoir le plaisir de découvrir le plus ancien marché Nantais pour vous régaler ou préparer un bon repas romantique. Et pourquoi pas vous détendre près des péniches de l’ile de Versailles autour d’un bon verre et vous promener dans un jardin japonais.
  Accès des voyageurs",
  price_per_day: 57,
  town: "Alençon",
  address: "47 rue Sieurs 61000 Alençon"
)


file = File.open(Rails.root.join('db/seeds/images/maisontest2.jpg'))
flat6.photo.attach(io: file, filename: "maisontest2.jpg", content_type: "image/jpeg")

flat7 = Flat.create!(
  owner: denis,
  name: "Maison à Cholet familial",
  description: "Détendez-vous dans ce logement unique et tranquille. Proche du centre ville de Nantes. À 5 minutes de la gare SNCF Sud ainsi que du  centre historique...
  Au calme d’une rue très dynamique, vous pourrez profiter de cette magnifique nuit, équipée d’une kitchenette, tout le nécessaire de cuisine, une douche, wc, lave mains, un lit 160x200, télévision avec câble et Netflix, et une balnéothérapie de 130x170cm.",
  price_per_day: 77,
  town: "Cholet",
  address: "Bd Jacques Cassini, 49300 Cholet"
)


file = File.open(Rails.root.join('db/seeds/images/maisontest3.jpg'))
flat7.photo.attach(io: file, filename: "maisontest3.jpg", content_type: "image/jpeg")

flat8 = Flat.create!(
  owner: samy,
  name: "Appartement de luxe à Paris 17",
  description: "Dans un cadre verdoyant et calme Valérie et Yves vous accueillent dans leur maison avec entrée indépendante et grande terrasse située en pleine campagne sur le circuit de randonnées autour du lac de Grand Lieu, 30 mn de Nantes, 30 mn des premières plages, une heure du Puy du Fou, gare SNCF à 15 mn.
  La maison est aménagée en petit nid douillet avec tout le confort moderne. Elle est idéale pour un couple ou une famille de quatre personnes.
  Allemand parlé couramment et Anglais d'usage.
  Le logement
  Logement de 35m2 comprenant une pièce avec cuisine aménagée entièrement équipée et un coin salon très chaleureux avec un canapé gigogne pour un couchage d'une ou deux personnes (deux fois 80x200), une chambre avec un lit kingsize de 180x200 et une salle de bains comprenant une grande douche, un lavabo et un WC. A l'extérieur un parking et une grande terrasse avec mobilier.",
  price_per_day: 207,
  town: "Paris",
  address: "10 rue du Moulin Rouge, Paris"
)


file = File.open(Rails.root.join('db/seeds/images/maisontest4.jpg'))
flat8.photo.attach(io: file, filename: "maisontest4.jpg", content_type: "image/jpeg")

flat9 = Flat.create!(
  owner: samy,
  name: "T6 au bord de la Baule",
  description: "Cosy Room, doté d’un véritable jacuzzi est un lieu chaleureux avec ses pierres apparentes, romantique, qui vous fera passer un moment de détente unique.
  Une bouteille de mousseux et un petit encas pour le lendemain avec pain au chocolat, croissant (sous vide), thé, café et jus d’orange vous sera offert durant votre séjour.
  Et pour information, l’eau du jacuzzi est changée après chaque passage.
  Bien entendu, des serviettes et gants de toilettes vous seront mis à disposition pour votre séjour.
  Le logement
  Doté d'une salle de bain spacieuse avec une grande douche et de sa cuisine équipée, tout est fait pour que vous passiez un séjour agréable.
  Accès des voyageurs
  Cet appartement est idéalement situé :
  à 1,6 km de la gare de Nantes, à proximité du tram (ligne 1) et à une dizaine de minutes du centre ville de Nantes où vous pourrez notamment y visiter le miroir d'eau, le passage Pommeraye, et les Machines de l'Ile avec son célèbre Eléphant.
  Numéro d'enregistrement
  44109002784F2",
  price_per_day: 197,
  town: "La Baule",
  address: "7 Avenue des Impairs, La Baule"
)


file = File.open(Rails.root.join('db/seeds/images/maisontest5.jpg'))
flat9.photo.attach(io: file, filename: "maisontest5.jpg", content_type: "image/jpeg")

puts "create bookings"

Booking.create!(
  flat:      flat1,
  renter:        denis,
  start_date: "2022-12-25",
  end_date:   "2022-12-26",
  status:      "pending",
  price: 180
)



Booking.create!(
  flat:      flat3,
  renter:        samy,
  start_date: "2022-12-20",
  end_date:   "2022-12-29",
  status:      "declined",
  price: 230
)

Booking.create!(
  flat:      flat4,
  renter:        samy,
  start_date: "2022-12-26",
  end_date:   "2022-12-30",
  status:      "accepted",
  price: 179
)

puts "that's all"
