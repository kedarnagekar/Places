//
//  PlaceDetailsView.swift
//  Places
//
//  Created by Kedar Nagekar on 21/06/24.
//

import SwiftUI

struct PlaceDetailsView: View {
    var placeData:PlaceModel
    var body: some View {
        //NavigationStack {
        ScrollView {
            VStack {
                    //Spacer()
                   // Image(placeData.placeImageName).resizable().aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width, height: 100, alignment: .top).background(.clear)
                    //GeometryReader(content: { geometry in
                    //    Image("").resizable().aspectRatio(contentMode: .fill).frame(width: geometry.size.width,height: 100).background(Color.red)
                        //Spacer()
                    //})
                Image(placeData.placeImageName).resizable(capInsets: EdgeInsets()).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).background(Color.red)
                    /*Spacer()
                    HStack {
                        Text(placeData.placeName).font(.largeTitle)
                        Text(placeData.placeDescription).font(.title2)
                    }
                    Spacer() */
                    //Spacer(minLength: 1)
                        //Spacer()
                
                     //   Spacer(minLength: 100)
                Text(placeData.placeName).font(.title3).frame(maxWidth: .infinity, alignment: .center).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Text(placeData.placeDescription).font(.subheadline).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            }.navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    let placeImage = Image(placeData.placeImageName)
                    ShareLink(item: placeImage, preview: SharePreview(placeData.placeName, image: placeImage))
                })
        }
       // }
    }
}

/*#Preview {
    PlaceDetailsView()
} */
