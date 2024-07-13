//
//  WidgetView_Single02_M_Comp02(360x169).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/04.
//

import SwiftUI

struct WidgetView_Single02_M_Comp02_360x169_: View { // enable shadow
    
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
                            .font(.custom("Inter-Bold", size: 83.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 159, y: 4)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("Day+")
                            .font(.custom("Inter-Bold", size: 83.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
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
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 156, y: 19)
                            .kerning(-2)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("데이+")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
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
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 146, y: 31)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("デイ+")
                            .font(.custom("Inter-Bold", size: 74.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
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
                        
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 100, height: 100, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.795, y: metrics.size.height * 0.48)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.4)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.4)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 75, height: 100, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.47)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 75, height: 100, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.83, y: metrics.size.height * 0.47)
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
                        .font(.custom("Inter-Bold", size: 145.0))
                        .frame(width: 350, height: 100, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
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
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 220, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 134.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 213, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 132.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                                                        
                        
                    case 3...6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 130.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 135.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-4")
                    }
                    
                        
                    case 4:
                        switch Int(unsignedDateInt)! / 1000 {
                        case 1:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 115.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 203, y: 130)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                    
                        case 2:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 110.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 202, y: 129)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                        case 4:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 110.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 201, y: 131)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                        case 7:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 110.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 202, y: 129)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                        case 3, 5, 6, 8, 9:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 108.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 202, y: 129)
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
                                .font(.custom("Inter-Bold", size: 100.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 190, y: 130)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                    
                        case 2, 7:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 97.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 190, y: 132)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                        case 4:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 97.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 185, y: 132)
                                .multilineTextAlignment(.trailing)
                                .kerning(-12)
                                .rotationEffect(.degrees(-8))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                        case 3, 5, 6, 8, 9:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 96.0))
                                .frame(width: 350, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
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
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 30, height: 70, alignment: .trailing)
                        .position(x: metrics.size.width * 0.882, y: metrics.size.height * 0.72)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
            }

        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
    }
}
