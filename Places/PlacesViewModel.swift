//
//  PlacesViewModel.swift
//  Places
//
//  Created by Kedar Nagekar on 21/06/24.
//

import Foundation

struct PlacesViewModel {
    
    func getPlacesData() -> [PlaceModel] {
        let hampi = PlaceModel(placeName: "Hampi", placeImageName: "Hampi", placeDescription: "Hampi or Vijayanagara is a town in the Vijayanagara district in the Indian state of Karnataka. Located along the Tungabhadra River in the east and center part of the state, Hampi is near the city of Hosapete. It is famous for hosting the Hampi Group of Monuments, a UNESCO World Heritage Site")
        let tajMahal = PlaceModel(placeName: "Taj Mahal", placeImageName: "TajMahal", placeDescription: "The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan to house the tomb of his beloved wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.")
        let chinaWall = PlaceModel(placeName: "The Great Wall of China", placeImageName: "Wall_of_China", placeDescription: "The Great Wall of China is the longest wall in the world! The Chinese national symbol was built by several dynasties (ruling families) over hundreds of years (nearly 1,800), starting in about 220 BC. The wall was built to defend areas from invasions and had watchtowers built on the highest places. The famous landmark is actually made up of lots of overlapping walls that measure a combined length of up to 20,000 kilometres. Millions of people visit the Wonder every year.")
        let petra = PlaceModel(placeName: "Petra", placeImageName: "Petra", placeDescription: "Petra is an ancient city carved into rock. It is thought that it was built over 2,000 years ago by a group of people who lived in the Wadi Musa valley, called the Nabateans. However, not much is known about the Nabateans. The city fell to the Roman Empire in AD 106 and an earthquake in AD 363 damaged the city, which resulted in it eventually falling into disuse. The city ruins were rediscovered in 1812 by a Swiss explorer called Johann Burckhardt.")
        let colosseum = PlaceModel(placeName: "The Colosseum", placeImageName: "Colosseum", placeDescription: "The Colosseum, also known as the Flavian Amphitheatre, was built between AD 70 and AD 80. It was used for gladiator fights, animal hunts and public executions for four centuries. The floor could also be flooded in order to stage sea battles! Following the fall of the Roman Empire, the architectural masterpiece was actually used as a housing complex. Then, in 1349, a great earthquake destroyed parts of the structure. Despite the damage done over the years, it remains an incredibly popular tourist attraction today.")
        let christ = PlaceModel(placeName: "Christ the Redeemer", placeImageName: "Christ", placeDescription: "Christ the Redeemer is a statue located at the summit of Corcovado Mountain overlooking Rio de Janeiro in Brazil. The statue shows Jesus Christ with his arms spread out over the city. The statue is 30 metres tall, with an arm span of the statue is 28 metres!\nThe structure is the newest wonder, having been completed in 1931. At the time of its construction, Brazil was a predominantly Catholic country, and images of the Christ statue were spread throughout.")
        //Chichén Itzá
        let chichénItzá = PlaceModel(placeName: "Chichén Itzá", placeImageName: "Chichén_Itza", placeDescription: "Chichén Itzá was a city built by The Maya people over 1,500 years ago. The city was an important political and economic centre for The Maya people. You’ll find the Temple of Kukulkán (named after the serpent deity), sometimes also referred to as El Castillo, there. It has 91 steps on each of its four sides. An extra step was added at the top of the temple to total 365 steps – one for each day of the year. The top of the temple features a carving of Kukulkán.")
        //Machu Picchu
        let machuPicchu = PlaceModel(placeName: "Machu Picchu", placeImageName: "Machu_Picchu", placeDescription: "Machu Picchu is the ruins of a city from the Incan empire that was built in the 15th century. The ruins are in the Andes Mountains, over 2,000 metres above sea level. Its walls and other architectural elements are cut into the natural rock.\nIt’s not certain why the city was first built, although some sources suggest it was used as a royal retreat for the emperor, Pachacuti Inca Yupanqui. It is thought to have been used between the 15th and 16th centuries, but was gradually abandoned over time. Today, it is a very popular tourist site, so much so that the Peruvian government has begun limiting the amount of people able to visit each year to preserve it.")
        return [tajMahal, chinaWall, petra, colosseum, christ, chichénItzá, machuPicchu]
    }
}
