//
//  WidgetView_Single02_M_Comp02(348x159).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single02_M_Comp02_348x159_: View { // enable shadow
    
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
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 159, y: 10)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("Day+")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 159, y: 8)
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
                            .font(.custom("Inter-Bold", size: 74.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 154, y: 25)
                            .kerning(-2)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("데이+")
                            .font(.custom("Inter-Bold", size: 74.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 156, y: 21)
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
                            .font(.custom("Inter-Bold", size: 63.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 145, y: 36)
                            .kerning(-12)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("デイ+")
                            .font(.custom("Inter-Bold", size: 73.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 147, y: 24)
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
                            
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 22.0))
                            .frame(width: 90, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.811, y: metrics.size.height * 0.405)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 19.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.827, y: metrics.size.height * 0.4)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.827, y: metrics.size.height * 0.4)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.827, y: metrics.size.height * 0.39)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 75, height: 70, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.827, y: metrics.size.height * 0.39)
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
                        .font(.custom("Inter-Bold", size: 135.0))
                        .frame(width: 350, height: 100, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 220, y: 126)
                        .multilineTextAlignment(.trailing)
                        .kerning(-8) // 000-12, 124- 11
                        .rotationEffect(.degrees(-8))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                            
                    
                case 2...3:
                    
                    switch Int(unsignedDateInt)! / 100 {
                    case 0:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 135.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 220, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                                    
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 130.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 213, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 126.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                                                        
                        
                    case 3...6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 124.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 128.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 210, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-11)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-4")
                    }
                    
                case 4:
                    switch Int(unsignedDateInt)! / 1000 {
                    case 1:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 110.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 203, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 106.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 202, y: 128)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 104.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 201, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 107.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 202, y: 129)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 105.0))
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
                            .font(.custom("Inter-Bold", size: 96.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 190, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2, 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 92.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 192, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 92.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 192, y: 130)
                            .multilineTextAlignment(.trailing)
                            .kerning(-12)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 92.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 190, y: 130)
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
                        .frame(width: 32, height: 70, alignment: .trailing)
                        .position(x: metrics.size.width * 0.891, y: metrics.size.height * 0.74)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
            }

        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
    }
}
