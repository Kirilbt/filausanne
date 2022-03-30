OpeningHour.destroy_all
Service.destroy_all

Service.create(
  type: "Sleep",
  name: "L'Étape",
  description_translations: {fr: "Réservation obligatoire au Bureau des Réservations. Enfants accompagnés d'un adulte admis. Chiens admis."},
  address: "Chemin des Epinettes 4, 1007 Lausanne",
  phone_number: "0213157269",
  website: "www.lausanne.ch",
  price: 0,
  capacity: "38"
)

OpeningHour.create(day_translations: {fr: "Lundi"}, opens: "21", closes: "23:59:59", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "00", closes: "07", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Mercredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Jeudi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Vendredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Samedi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: {fr: "Dimanche"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)

Service.create(
  type: "Sleep",
  name: "La Marmotte",
  description_translations: {fr: "Réservation obligatoire au Bureau des Réservations. Enfants accompagnés d'un adulte admis. Animaux admis selon conditons."},
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "0213117912",
  website: "www.lausanne.ch",
  price: 0,
  capacity: 31
)

OpeningHour.create(day_translations: {fr: "Lundi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: {fr: "Mercredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: {fr: "Jeudi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: {fr: "Vendredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: {fr: "Samedi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: {fr: "Dimanche"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)

Service.create(
  type: "Sleep",
  name: "Sleep-in",
  description_translations: {fr: "Réservation obligatoire au Bureau des Réservations. Enfants accompagnés d'un adulte admis."},
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "0213117912",
  website: "www.sleepin-lausanne.ch",
  price: 0,
  capacity: 26
)

OpeningHour.create(day_translations: {fr: "Lundi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: {fr: "Mercredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: {fr: "Jeudi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: {fr: "Vendredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: {fr: "Samedi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: {fr: "Dimanche"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)

Service.create(
  type: "Eat",
  name: "La Soupe Populaire",
  description_translations: {fr: "Aucune conditon partculière."},
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "0786264322",
  website: "http://www.meresofia.ch/structures/la-soupe-populaire/",
  price: 0
)

OpeningHour.create(day_translations: {fr: "Lundi"}, opens: "21", closes: "23:59:59", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "00", closes: "07", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Mercredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Jeudi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Vendredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Samedi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: {fr: "Dimanche"}, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)

Service.create(
  type: "Eat",
  name: "L'Échelle",
  description_translations: {fr: "Réservé aux personnes domiciliées à Lausanne. Le souten alimentaire s'effectue en parallèle d'un suivi social. Dernier entreten possible 30 min. avant la fermeture."},
  address: "Bus itinérant : Horaires et lieux de stationnement du véhicule de l'Échelle sur le site internet de Mère Sofia",
  phone_number: "0788434618",
  website: "https://www.meresofia.ch/structures/echelle/",
  price: 0
)

OpeningHour.create(day_translations: {fr: "Lundi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: {fr: "Mercredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: {fr: "Jeudi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: {fr: "Vendredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: {fr: "Samedi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: {fr: "Dimanche"}, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)

Service.create(
  type: "Eat",
  name: "Épicerie Caritas",
  description_translations: {fr: "Réservé aux détenteurs d'une carte Epiceries Caritas (accessible aux personnes aux revenus modestes ou bénéficiaires du subside cantonal à l'assurance maladie), d'une CartCulture, d'une carte du Bureau des Réservations en cours de validité ou d'une carte de légitimation du service social Lausanne."},
  address: "Avenue du Rond-Point 8, 1006 Lausanne",
  phone_number: "0213120167",
  website: "www.caritas-vaud.ch",
  price: 0
)

OpeningHour.create(day_translations: {fr: "Lundi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: {fr: "Mardi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: {fr: "Mercredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: {fr: "Jeudi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: {fr: "Vendredi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: {fr: "Samedi"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: {fr: "Dimanche"}, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
