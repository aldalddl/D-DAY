//
//  WidgetView_Single02_M_Comp01(pad124x124).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/11/24.
//

import SwiftUI

struct WidgetView_Single02_M_Comp01_pad124x124_: View { // disable shadow
    
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
//                switch (ddaySymbolMenu[safe: 0]?.ddayLanguage ?? "English") {
                    switch "English" {
                case "English":
                    
                    switch dateInt <= 0 {

                    case true:
                        Text("Dday")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 157, y: 23)
                            .kerning(-2)
                            .rotationEffect(.degrees(-13))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("Day+")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 157, y: 20)
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
                            .font(.custom("Inter-Bold", size: 72.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 156, y: 36)
                            .kerning(-4)
                            .rotationEffect(.degrees(-12))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("데이+")
                            .font(.custom("Inter-Bold", size: 72.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 156, y: 30)
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
                            .font(.custom("Inter-Bold", size: 60.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 148, y: 42)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case false:
                        Text("デイ+")
                            .font(.custom("Inter-Bold", size: 81.0))
                            .frame(width: 300, height: 50, alignment: .topLeading)
                            .position(x: 154, y: 27)
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
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 95, height: 90, alignment: .topTrailing)
                            .position(x: 246, y: 101)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 75, height: 90, alignment: .topTrailing)
                            .position(x: 257, y: 100)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 75, height: 90, alignment: .topTrailing)
                            .position(x: 257, y: 101)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 80, height: 90, alignment: .topTrailing)
                            .position(x: 256, y: 98)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 75, height: 90, alignment: .topTrailing)
                            .position(x: 257, y: 99)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-3")
                        
                    }
                }
                
                
                // DayNumber
//                switch unsignedDateInt.count {
                    switch 3 {
                    
                case 0...1:
//                    Text("\(unsignedDateInt)")
                        Text("1")
                            .font(.custom("Inter-Bold", size: 120.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 220, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                            
                    
                case 2...3:
                    
//                    switch Int(unsignedDateInt)! / 100 {
                        switch 7 {
                    case 0:
//                        Text("\(unsignedDateInt)")
                        Text("41")
                            .font(.custom("Inter-Bold", size: 120.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 220, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 1:
//                        Text("\(unsignedDateInt)")
                            Text("104")
                            .font(.custom("Inter-Bold", size: 110.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 203, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 2:
//                        Text("\(unsignedDateInt)")
                            Text("204")
                            .font(.custom("Inter-Bold", size: 109.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 206, y: 123)
                            .multilineTextAlignment(.trailing)
                            .kerning(-10)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                                                        
                        
                    case 3...6, 8, 9:
//                        Text("\(unsignedDateInt)")
                            Text("904")
                            .font(.custom("Inter-Bold", size: 105.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 201, y: 125)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 7:
//                        Text("\(unsignedDateInt)")
                            Text("704")
                            .font(.custom("Inter-Bold", size: 108.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 205, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-4")
                    }
                    
                case 4:
//                    switch Int(unsignedDateInt)! / 1000 {
                        switch 3 {
                    case 1:
//                        Text("\(unsignedDateInt)")
                            Text("1111")
                            .font(.custom("Inter-Bold", size: 96.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 190, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-9)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2:
//                        Text("\(unsignedDateInt)")
                            Text("2111")
                            .font(.custom("Inter-Bold", size: 91.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 192, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
//                        Text("\(unsignedDateInt)")
                            Text("4004")
                            .font(.custom("Inter-Bold", size: 90.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 191, y: 127)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 7:
//                        Text("\(unsignedDateInt)")
                            Text("7004")
                            .font(.custom("Inter-Bold", size: 91.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 196, y: 127)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
//                        Text("\(unsignedDateInt)")
                            Text("3004")
                            .font(.custom("Inter-Bold", size: 91.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 196, y: 127)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Encountered Error S02-1-5")
                    }
                    
                    
                case 5...:
//                    switch Int(unsignedDateInt)! / 10000 {
                        switch 3 {
                    case 1:
//                        Text("\(unsignedDateInt)")
                            Text("10004")
                            .font(.custom("Inter-Bold", size: 83.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 190, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                                
                    case 2, 7:
//                        Text("\(unsignedDateInt)")
                            Text("20004")
                            .font(.custom("Inter-Bold", size: 81.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 190, y: 126)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                    case 4:
//                        Text("\(unsignedDateInt)")
                            Text("40004")
                            .font(.custom("Inter-Bold", size: 82.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 185, y: 128)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
                            .rotationEffect(.degrees(-8))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3, 5, 6, 8, 9:
//                        Text("\(unsignedDateInt)")
                            Text("30004")
                            .font(.custom("Inter-Bold", size: 81.0))
                            .frame(width: 350, height: 100, alignment: .leading)
                            .position(x: 185, y: 128)
                            .multilineTextAlignment(.trailing)
                            .kerning(-8)
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
                        .frame(width: 32, height: 70, alignment: .trailing)
                        .position(x: 278, y: 136)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
            }

        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
    }
}
