//
//  Constants.swift
//  Pixel City
//
//  Created by ClementM on 14/11/2017.
//  Copyright © 2017 ClementM. All rights reserved.
//

import Foundation

func flickrUrl (forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
    return url
}

