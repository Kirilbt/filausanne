OpeningHour.destroy_all
Service.destroy_all

Service.create(
  type: "Sleep",
  name: "L'Étape",
  description_translations: { fr: "Réservation obligatoire au Bureau des Réservations. Enfants accompagnés d'un adulte admis. Chiens admis." },
  address: "Chemin des Epinettes 4, 1007 Lausanne",
  phone_number: "0213157269",
  website: "www.lausanne.ch",
  price: 0,
  capacity: "38"
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "21", closes: "23:59:59", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "00", closes: "07", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Étape").id)

Service.create(
  type: "Sleep",
  name: "La Marmotte",
  description_translations: { fr: "Réservation obligatoire au Bureau des Réservations. Enfants accompagnés d'un adulte admis. Animaux admis selon conditons." },
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "0213117912",
  website: "www.lausanne.ch",
  price: 0,
  capacity: 31
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Marmotte").id)

Service.create(
  type: "Sleep",
  name: "Sleep-in",
  description_translations: { fr: "Réservation obligatoire au Bureau des Réservations. Enfants accompagnés d'un adulte admis." },
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "0213117912",
  website: "www.sleepin-lausanne.ch",
  price: 0,
  capacity: 26
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Sleep-in").id)

Service.create(
  type: "Eat",
  name: "La Soupe Populaire",
  description_translations: { fr: "Aucune conditon partculière." },
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "0786264322",
  website: "http://www.meresofia.ch/structures/la-soupe-populaire/",
  price: 0
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "21", closes: "23:59:59", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "00", closes: "07", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "La Soupe Populaire").id)

Service.create(
  type: "Eat",
  name: "L'Échelle",
  description_translations: { fr: "Réservé aux personnes domiciliées à Lausanne. Le souten alimentaire s'effectue en parallèle d'un suivi social. Dernier entreten possible 30 min. avant la fermeture." },
  address: "Bus itinérant : Horaires et lieux de stationnement du véhicule de l'Échelle sur le site internet de Mère Sofia",
  phone_number: "0788434618",
  website: "https://www.meresofia.ch/structures/echelle/",
  price: 0
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "L'Échelle").id)

Service.create(
  type: "Eat",
  name: "Épicerie Caritas",
  description_translations: { fr: "Réservé aux détenteurs d'une carte Epiceries Caritas (accessible aux personnes aux revenus modestes ou bénéficiaires du subside cantonal à l'assurance maladie), d'une CartCulture, d'une carte du Bureau des Réservations en cours de validité ou d'une carte de légitimation du service social Lausanne." },
  address: "Avenue du Rond-Point 8, 1006 Lausanne",
  phone_number: "0213120167",
  website: "www.caritas-vaud.ch",
  price: 0
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Épicerie Caritas").id)

Service.create(
  type: "Care",
  name: "Point d'Eau",
  description_translations: { fr: "Rendez-vous obligatoire pour les consultations soins de santé. Consultations dentaires : enfants et usagers au bénéfice du RI ou des PC non admis. Unisanté Département Vulnérabilités et Médecine Sociale" },
  address: "Avenue de Morges 26, 1004 Lausanne",
  phone_number: "0216262644",
  website: "www.pointdeau-lausanne.ch",
  price: 0
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)

Service.create(
  type: "Care",
  name: "Unisanté",
  description_translations: { fr: "Aucune condition particulière." },
  address: "Rue du Bugnon 44, 1011 Lausanne",
  phone_number: "0213146060",
  website: "www.unisante.ch",
  price: 0
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Samedi", en: "Saturday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Dimanche", en: "Sunday" }, opens: "09", closes: "18", service_id: Service.find_by(name: "Point d'Eau").id)
