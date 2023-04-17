//
//  WidgetView_Single02_M_Comp01(321x148).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single02_M_Comp01_321x148_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2024.02.16"), isTodayCounted: isTodayCounted)
        
        let unsignedDateInt = CustomFunctions().dateIntSign(dateIntParam: dateInt)
        
        
        ZStack {
            ZStack {
                
                // Language
                switch (ddaySymbolMenu[safe: 0]?.ddayLanguage ?? "English") {
                case "English":
                    
                    switch dateInt <= 0 {
                    case true:
                        Text("Dday")
                            .font(.custom("Inter-Bold", size: 79.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 156, y: 20)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("Day+")
                            .font(.custom("Inter-Bold", size: 80.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 155, y: 15)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-1-01")
                        
                    }
                    
                case "Korean":
                    
                    switch dateInt <= 0 {
                    case true:
                        Text("디데이")
                            .font(.custom("Inter-Bold", size: 73.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 154, y: 31)
                            .kerning(-2)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("데이+")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 156, y: 22)
                            .kerning(-2)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-1-02")
                        
                    }
                    
                case "Japanese":
                    
                    switch dateInt <= 0 {
                    case true:
                        Text("ディ-デイ")
                            .font(.custom("Inter-Bold", size: 62.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 145, y: 40)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("デイ+")
                            .font(.custom("Inter-Bold", size: 73.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 147, y: 28)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-1-03")
                        
                    }
                    
                default:
                    Text("Encountered Error S02-1-2")
                }
                
                
                // Title
                GeometryReader { metrics in
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                        
                    case 0...3:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 19.0))
                            .frame(width: 60, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.853, y: metrics.size.height * 0.43)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 50, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.868, y: metrics.size.height * 0.43)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 60, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.849, y: metrics.size.height * 0.433)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 60, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.849, y: metrics.size.height * 0.423)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 11...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 65, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.84, y: metrics.size.height * 0.415)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-3")
                        
                    }
                }
                
                
                // DayNumber
                switch unsignedDateInt.count {
                    
                case 0...1:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 125.0))
                        .frame(width: 350, height: 100, alignment: .leading)
                        .position(x: 224, y: 125)
                        .multilineTextAlignment(.trailing)
                        .kerning(-10)
                        .rotationEffect(.degrees(-8))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    
                case 2...3:
                    
                    switch Int(unsignedDateInt)! / 100 {
                    case 0:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 125.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 224, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 122.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 211, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 117.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 206, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        
                    case 3...6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 117.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 202, y: 123)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 119.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 208, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-4")
                    }
                    
                case 4:
                    switch Int(unsignedDateInt)! / 1000 {
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 105.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 205, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 98.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 202, y: 128)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 99.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 202, y: 128)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 97.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 200, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 97.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 200, y: 132)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-5")
                    }
                    
                    
                case 5...:
                    switch Int(unsignedDateInt)! / 10000 {
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 90.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 190, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2, 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 86.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 190, y: 132)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
                            Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 185, y: 134)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 86.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 185, y: 132)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-5")
                    }
                    
                default:
                    Text("Encountered Error S02-1-2")
                    
                }
                
                
                // Date
                GeometryReader { metrics in
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 30, height: 70, alignment: .trailing)
                        .position(x: metrics.size.width * 0.9, y: metrics.size.height * 0.72)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
            }
            
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
        
    }
}
