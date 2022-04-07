OpeningHour.destroy_all
Request.destroy_all
Service.destroy_all

locales_strings = I18n.available_locales.map { |locale| locale.to_s }
jours_count = [0, 1, 2, 3, 4, 5, 6]

# L'Etape

etape_descriptions = {}
locales_strings.each do |locale|
  etape_descriptions[locale] = I18n.t('seeds.description.etape', locale: locale.to_sym)
end

Service.create(
  type: "Sleep",
  name: "L'Étape",
  description_translations: etape_descriptions,
  address: "Chemin des Epinettes 4, 1007 Lausanne",
  phone_number: "+41 21 315 72 69",
  website: "www.lausanne.ch",
  price: 0,
  capacity: "38",
  urgent: true
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  OpeningHour.create(day_translations: translations_object, opens: "20:45", closes: "23:59", service_id: Service.find_by(name: "L'Étape").id)
  OpeningHour.create(day_translations: translations_object, opens: "00:00", closes: "08:00", service_id: Service.find_by(name: "L'Étape").id)
end

etape_image = URI.open('https://www.lausanne.ch/ressources/diapos/integration/hebergements-urgence/Diapo_Etape/slides/02_L%27Etape-COVID19-WEB-6990.jpg')
Service.find_by(name: "L'Étape").photo.attach(io: etape_image, filename: 'etape.png', content_type: 'image/png')

# La Marmotte

marmotte_descriptions = {}
locales_strings.each do |locale|
  marmotte_descriptions[locale] = I18n.t('seeds.description.marmotte', locale: locale.to_sym)
end

Service.create(
  type: "Sleep",
  name: "La Marmotte",
  description_translations: marmotte_descriptions,
  address: "Rue du Vallon 17, 1005 Lausanne",
  phone_number: "+41 21 311 79 12",
  website: "www.lausanne.ch",
  price: 0,
  capacity: 31,
  urgent: true
)

translations_object = {}
jours_count.each do |jour|
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  OpeningHour.create(day_translations: translations_object, opens: "20:30", closes: "23:59", service_id: Service.find_by(name: "La Marmotte").id)
  OpeningHour.create(day_translations: translations_object, opens: "00:00", closes: "08:30", service_id: Service.find_by(name: "La Marmotte").id)
end

marmotte_image = URI.open('https://image.jimcdn.com/app/cms/image/transf/none/path/s9355bca67c449b26/image/i97d50d13dd2f10ee/version/1499872625/image.jpg')
Service.find_by(name: "La Marmotte").photo.attach(io: marmotte_image, filename: 'marmotte.png', content_type: 'image/png')

# Sleep-in

sleep_in_descriptions = {}
locales_strings.each do |locale|
  sleep_in_descriptions[locale] = I18n.t('seeds.description.sleep_in', locale: locale.to_sym)
end

Service.create(
  type: "Sleep",
  name: "Sleep-in",
  description_translations: sleep_in_descriptions,
  address: "Chemin de l'Usine à Gaz 10, 1020 Renens",
  phone_number: "+41 21 311 79 12",
  website: "www.sleepin-lausanne.ch",
  price: 0,
  capacity: 26,
  urgent: true
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  OpeningHour.create(day_translations: translations_object, opens: "20:30", closes: "23:59", service_id: Service.find_by(name: "Sleep-in").id)
  OpeningHour.create(day_translations: translations_object, opens: "00:00", closes: "09:00", service_id: Service.find_by(name: "Sleep-in").id)
end

sleep_in_image = URI.open('https://www.lokalhelden.ch/media/thumbnails/5ef/9437dcb1968a3f0c35a00f751bbb35ef/fe4d8852/Sleep-in.jpg')
Service.find_by(name: "Sleep-in").photo.attach(io: sleep_in_image, filename: 'sleepin.png', content_type: 'image/png')

# Le Répit

repit_descriptions = {}
locales_strings.each do |locale|
  repit_descriptions[locale] = I18n.t('seeds.description.repit', locale: locale.to_sym)
end

Service.create(
  type: "Sleep",
  name: "Le Répit",
  description_translations: repit_descriptions,
  address: "Avenue Bergières 10, 1004 Lausanne",
  phone_number: "+41 21 661 10 15",
  website: "www.meresofia.ch/structures/le-repit",
  price: 0,
  capacity: nil,
  urgent: true
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  OpeningHour.create(day_translations: translations_object, opens: "22:00", closes: "23:59", service_id: Service.find_by(name: "Le Répit").id)
  OpeningHour.create(day_translations: translations_object, opens: "00:00", closes: "08:00", service_id: Service.find_by(name: "Le Répit").id)
end

repit_image = URI.open('https://lecourrier.ch/app/uploads/2020/12/un-toit-pour-passer-la-nuit-a-beaulieu-936x546.jpg')
Service.find_by(name: "Le Répit").photo.attach(io: repit_image, filename: 'repit.png', content_type: 'image/png')

# Borde 47

borde_47_descriptions = {}
locales_strings.each do |locale|
  borde_47_descriptions[locale] = I18n.t('seeds.description.borde_47', locale: locale.to_sym)
end

Service.create(
  type: "Sleep",
  name: "Borde 47",
  description_translations: borde_47_descriptions,
  address: "Rue de la Borde 47, 1018 Lausanne",
  phone_number: "+41 79 669 98 97",
  website: "https://www.lausanne.ch/prestations/service-social/hebergement-nocturne-urgence.html#borde-47-0",
  price: 0,
  capacity: nil
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  OpeningHour.create(day_translations: translations_object, opens: "21:00", closes: "23:59", service_id: Service.find_by(name: "Borde 47").id)
  OpeningHour.create(day_translations: translations_object, opens: "00:00", closes: "08:00", service_id: Service.find_by(name: "Borde 47").id)
end

borde_47_image = URI.open('https://cdn.unitycms.io/image/ocroped/1200,1200,1000,1000,0,0/UovXZygD6Gc/0H7H0waKKoSAyF1JRDvqEH.jpg')
Service.find_by(name: "Borde 47").photo.attach(io: borde_47_image, filename: 'borde47.png', content_type: 'image/png')

# La Soupe Populaire

soupe_populaire_descriptions = {}
locales_strings.each do |locale|
  soupe_populaire_descriptions[locale] = I18n.t('seeds.description.soupe_populaire', locale: locale.to_sym)
end

Service.create(
  type: "Eat",
  name: "La Soupe Populaire",
  description_translations: soupe_populaire_descriptions,
  address: "Rue Saint-Martin 16 1005 Lausanne",
  phone_number: "+41 78 626 43 22",
  website: "http://www.meresofia.ch/structures/la-soupe-populaire/",
  price: 0
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  # Midi: mercredi, vendredi, dimanche 12h30 - 14h à ajouter
  OpeningHour.create(day_translations: translations_object, opens: "19:30", closes: "21:30", service_id: Service.find_by(name: "La Soupe Populaire").id)
end

soupe_populaire_image = URI.open('https://think2make.ch/wp/wp-content/uploads/2020/11/Soupe-populaire-4.jpeg')
Service.find_by(name: "La Soupe Populaire").photo.attach(io: soupe_populaire_image, filename: 'soupepopulairer.png', content_type: 'image/png')

# L'Echelle

echelle_descriptions = {}
locales_strings.each do |locale|
  echelle_descriptions[locale] = I18n.t('seeds.description.echelle', locale: locale.to_sym)
end

Service.create(
  type: "Eat",
  name: "L'Échelle",
  description_translations: echelle_descriptions,
  address: "Bus itinérant : Horaires et lieux de stationnement du véhicule de l'Échelle sur le site internet de Mère Sofia",
  phone_number: "+41 78 843 46 18",
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

echelle_image = URI.open('https://www.rts.ch/rts-online/medias/images/2021/thumbnail/umbo8r-25068364.image?w=640&h=640')
Service.find_by(name: "L'Échelle").photo.attach(io: echelle_image, filename: 'echelle.png', content_type: 'image/png')

# Epicerie Caritas

epicerie_caritas_descriptions = {}
locales_strings.each do |locale|
  epicerie_caritas_descriptions[locale] = I18n.t('seeds.description.epicerie_caritas', locale: locale.to_sym)
end

Service.create(
  type: "Eat",
  name: "Épicerie Caritas",
  description_translations: epicerie_caritas_descriptions,
  address: "Avenue du Rond-Point 8, 1006 Lausanne",
  phone_number: "+41 21 312 01 67",
  website: "www.caritas-vaud.ch",
  price: 0
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  # Lundi à vendredi 10h - 12h et 13h30 - 18h
  # Samedi 10h - 12h et 13h30 - 17h
  OpeningHour.create(day_translations: translations_object, opens: "10:00", closes: "18:00", service_id: Service.find_by(name: "Épicerie Caritas").id)
end

epicerie_caritas_image = URI.open('https://www.cath.ch/wp-content/uploads/sites/3/2020/01/Fruechte_und_Gemuese.Caritas.jpg')
Service.find_by(name: "Épicerie Caritas").photo.attach(io: epicerie_caritas_image, filename: 'caritas.png', content_type: 'image/png')

# Point d'Eau

point_eau_descriptions = {}
locales_strings.each do |locale|
  point_eau_descriptions[locale] = I18n.t('seeds.description.point_eau', locale: locale.to_sym)
end

Service.create(
  type: "Care",
  name: "Point d'Eau",
  description_translations: point_eau_descriptions,
  address: "Avenue de Morges 26, 1004 Lausanne",
  phone_number: "+41 21 626 26 44",
  website: "www.pointdeau-lausanne.ch",
  price: 0
)

OpeningHour.create(day_translations: { fr: "Lundi", en: "Monday" }, opens: "14", closes: "20", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Mardi", en: "Tuesday" }, opens: "10", closes: "16", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Mercredi", en: "Wednesday" }, opens: "10", closes: "16", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Jeudi", en: "Thursday" }, opens: "14", closes: "20", service_id: Service.find_by(name: "Point d'Eau").id)
OpeningHour.create(day_translations: { fr: "Vendredi", en: "Friday" }, opens: "10", closes: "16", service_id: Service.find_by(name: "Point d'Eau").id)

point_eau_image = URI.open('https://www.rts.ch/2021/02/10/20/33/11964631.image/16x9/scale/width/624')
Service.find_by(name: "Point d'Eau").photo.attach(io: point_eau_image, filename: 'pointeau.png', content_type: 'image/png')

# Unisanté

unisante_descriptions = {}
locales_strings.each do |locale|
  unisante_descriptions[locale] = I18n.t('seeds.description.unisante', locale: locale.to_sym)
end

Service.create(
  type: "Care",
  name: "Unisanté",
  description_translations: unisante_descriptions,
  address: "Rue du Bugnon 44, 1011 Lausanne",
  phone_number: "+41 21 314 60 60",
  website: "www.unisante.ch",
  price: 0
)

jours_count.each do |jour|
  translations_object = {}
  locales_strings.each { |locale| translations_object[locale] = I18n.t('date.day_names', locale: locale.to_sym)[jour]}
  OpeningHour.create(day_translations: translations_object, opens: "08:00", closes: "18:00", service_id: Service.find_by(name: "Unisanté").id)
end

unisante_image = URI.open('https://www.rts.ch/2021/11/19/07/18/12653817.image?w=1280&h=720')
Service.find_by(name: "Point d'Eau").photo.attach(io: unisante_image, filename: 'unisante.png', content_type: 'image/png')
