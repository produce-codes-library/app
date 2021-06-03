//
//  Constants.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/19/21.
//

import Foundation
import SwiftUI

// Featured Items
let spotlight:String = "Exotic Fruits";

// Sizes
let windowWidth:CGFloat = UIScreen.main.bounds.size.width;
let windowHeight:CGFloat = UIScreen.main.bounds.size.height;
let marginWidth:CGFloat = UIDevice.current.model == "iPad" ? 200 : 50;
let marginHeight:CGFloat = UIDevice.current.model == "iPad" ? 200 : 50;
let contentWidth:CGFloat = UIScreen.main.bounds.size.width-marginWidth;
let contentHeight:CGFloat = UIScreen.main.bounds.size.height-marginHeight;

// Fonts
let font_regular:String = "OpenSans-Regular"
let font_italic:String = "OpenSans-Italic"
let font_bold:String = "OpenSans-Bold"
let font_bold_italic:String = "OpenSans-BoldItalic"
let font_extrabold:String = "OpenSans-ExtraBold"
let font_extrabold_italic:String = "OpenSans-ExtraBoldItalic"
let font_light:String = "OpenSans-Light"
let font_light_italic:String = "OpenSans-LightItalic"
let font_semibold:String = "OpenSans-SemiBold"
let font_semibold_italic:String = "OpenSans-SemiBoldItalic"

