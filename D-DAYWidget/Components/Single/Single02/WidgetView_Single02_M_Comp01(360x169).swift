//
//  WidgetView_Single02_M_Comp01(360x169).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/04.
//

import SwiftUI

struct WidgetView_Single02_M_Comp01_360x169_: View { // disable shadow
    
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
                            .font(.custom("Inter-Bold", size: 83.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 159, y: 4)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("Day+")
                            .font(.custom("Inter-Bold", size: 83.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 159, y: 4)
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
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 156, y: 19)
                            .kerning(-2)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("데이+")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 156, y: 16)
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
                            .font(.custom("Inter-Bold", size: 64.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 146, y: 31)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("デイ+")
                            .font(.custom("Inter-Bold", size: 74.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 149, y: 18)
                            .kerning(-5)
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
                            .font(.custom("Inter-Bold", size: 26.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.38)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 23.0))
                            .frame(width: 100, height: 100, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.795, y: metrics.size.height * 0.46)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.38)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.38)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 11...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 75, height: 100, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.45)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-3")
                        
                    }
                }
                
                
                // DayNumber
//                switch unsignedDateInt.count {
                    switch 4 {
                    
                case 0...1:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 145.0))
                        .frame(width: 350, height: 100, alignment: .leading)
                        .position(x: 220, y: 125)
                        .multilineTextAlignment(.trailing)
                        .kerning(-12)
                        .rotationEffect(.degrees(-8))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                            
                    
                case 2...3:
                    
                    switch Int(unsignedDateInt)! / 100 {
                    case 0:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 145.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 220, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12) // 000-12, 124- 11
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                                                                                
                        
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 134.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 213, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 132.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                                                        
                        
                    case 3...6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 130.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 135.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-4")
                    }
                    
                case 4:
                    Text("test")
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            .font(.custom("Inter-Bold", size: 100.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                default:
                    Text("Encountered Error S02-1-2")
                    
                }
                
                
                // Date
                GeometryReader { metrics in
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 34, height: 70, alignment: .trailing)
                        .position(x: metrics.size.width * 0.88, y: metrics.size.height * 0.764)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
            }

        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
    }
}
