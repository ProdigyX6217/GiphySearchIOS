//
//  Gif.swift
//  GiphySearchIOS
//
//  Created by Student Laptop_7/19_1 on 12/15/20.
//

import Foundation
//GifArray decodes the data for the key data into an array of Gif objects.
/// Array of Gif objects.
 struct GifArray: Decodable {
     var gifs: [Gif]
     enum CodingKeys: String, CodingKey {
         case gifs = "data"
     }
 }
//Gif is the actual gif object that contains the images as well as a function to return the url for it.
 /// Contains gif properties
 struct Gif: Decodable {
     var gifSources: GifImages
     enum CodingKeys: String, CodingKey {
         case gifSources = "images"
     }
     /// Returns download url of the originial gif
     func getGifURL() -> String{
         return gifSources.original.url
     }
 }
//GifImages decodes the data for different sources of the Gif.
 /// Stores the original Gif
 struct GifImages: Decodable {
     var original: original
     enum CodingKeys: String, CodingKey {
         case original = "original"
     }
 }
//original decodes the data from the original key and stores the URL.
 /// URL to data of Gif
 struct original: Decodable {
     var url: String
 }
