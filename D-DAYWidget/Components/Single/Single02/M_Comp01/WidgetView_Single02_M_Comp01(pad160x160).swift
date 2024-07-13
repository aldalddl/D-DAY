//
//  WidgetView_Single02_M_Comp01(pad160x160).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/11/24.
//

import SwiftUI

struct WidgetView_Single02_M_Comp01_pad160x160_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: isTodayCounted)

        let unsignedDateInt = CustomFunctions().dateIntSign(dateIntParam: dateInt)
        
        ZStack {
            ZStack {
                
                // Language
                switch (ddaySymbolMenu[safe: 0]?.ddayLanguage ?? "English") {
                case "English":
                    
                    switch dateInt <= 0 {

                    case true:
                        Text("Dday")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 157, y: 5)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("Day+")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 157, y: 3)
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
                            .font(.custom("Inter-Bold", size: 77.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 153, y: 22)
                            .kerning(-4)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("데이+")
                            .font(.custom("Inter-Bold", size: 77.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 157, y: 14)
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
                            .font(.custom("Inter-Bold", size: 66.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 152, y: 32)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("デイ+")
                            .font(.custom("Inter-Bold", size: 88.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 154, y: 9)
                            .kerning(-8)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-1-03")
                        
                    }
                    
                default:
                    Text("Encountered Error Lan S02-1-2")
                }

                
                // Title
                GeometryReader { metrics in
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                            
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 95, height: 90, alignment: .topTrailing)
                            .position(x: 304, y: 94)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 80, height: 90, alignment: .topTrailing)
                            .position(x: 310, y: 94)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 80, height: 90, alignment: .topTrailing)
                            .position(x: 309, y: 91)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 80, height: 90, alignment: .topTrailing)
                            .position(x: 310, y: 91)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 80, height: 90, alignment: .topTrailing)
                            .position(x: 310, y: 88)
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
                            .font(.custom("Inter-Bold", size: 126.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 228, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                            
                    
                case 2...3:
                    
                    switch Int(unsignedDateInt)! / 100 {
                    case 0:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 126.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 228, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 125.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 212, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 118.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 211, y: 127)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                                                        
                        
                    case 3...6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 116.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 213, y: 128)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 117.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 213, y: 129)
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
                            .font(.custom("Inter-Bold", size: 106.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 194, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 101.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 196, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 101.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 191, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 102.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 199, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 101.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 196, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
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
                            .position(x: 188, y: 131)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2, 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 86.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 187, y: 131)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 89.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 182, y: 131)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 86.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 185, y: 131)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-5")
                    }
                     
                    
                default:
                    Text("Encountered Error Number S02-1-2")
                    
                }
                
                
                // Date
                GeometryReader { metrics in
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 33, height: 70, alignment: .trailing)
                        .position(x: 334, y: 144)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
            }

        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
    }
}
