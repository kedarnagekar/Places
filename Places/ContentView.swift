//
//  ContentView.swift
//  Places
//
//  Created by Kedar Nagekar on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    
    var placeItems = PlacesViewModel().getPlacesData()
    @State private var searchText:String = ""
    var filteredPlaceItems:[PlaceModel] {
        if searchText.isEmpty {
          return placeItems
        } else {
            //var placeItems:[PlaceModel] = []
            var newPlaceItems:[PlaceModel] = []
            for place in placeItems {
                if place.placeName.contains(searchText) {
                    print("\(place.placeName) contains \(searchText)")
                    newPlaceItems.append(place)
                } else {
                    print("\(place.placeName) does not contain \(searchText)")
                }
            }
            print("newPlaceItems = \(newPlaceItems.count)")
            print("placeItemsCount = \(placeItems.count)")
            print("searchText = \(searchText)")
//            return placeItems
//            //{$0.name.localizedStandardContains(searchText)}
           // print("")
            return placeItems.filter{$0.placeName.localizedStandardContains(searchText)}
        }
    }
    
    var body: some View {
        NavigationStack {
            List (filteredPlaceItems) { placeData in
                NavigationLink {
                    PlaceDetailsView(placeData: placeData)
                } label: {
                    HStack {
                        Image(placeData.placeImageName).resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 75, height: 75, alignment: .center)
                            .aspectRatio(contentMode: .fit)
                        Spacer(minLength: 20)
                        VStack {
                            Text(placeData.placeName).font(.title3).background(Color.clear)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            Text(placeData.placeDescription).lineLimit(2)
                                .foregroundStyle(.gray)
                                .font(.subheadline)
                        }
                    }
                }/*.onTapGesture {
                    print("\(placeData.placeName) tapped")
                    NavigationView {
                        NavigationLink("Place", destination: PlaceDetailsView(placeData: placeData))
                    }
                } */
            }.navigationTitle("Places").searchable(text: $searchText).padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
        }.onAppear(perform: {
            Task {
                await PlacesViewModel().someBasicTask()
            }
        })
    }
}

#Preview {
    ContentView()
}
