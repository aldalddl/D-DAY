//
//  WidgetView_Multi03_M_Comp02(329x155).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/03.
//

import SwiftUI

struct WidgetView_Multi03_M_Comp02_329x155_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var defaultStringArr: [[String]]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        ZStack{
            // top stack 1
            ZStack{
                
                // date 1
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 53, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                // title 1
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...6:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 123, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))

                case 7...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 126, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 84, height: 50, alignment: .topTrailing)
                            .position(x: 122, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-1")
                }
                
                // number 1
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 42.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 111, y: 51)
                        .kerning(-4)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        .clipped()
            }
            .frame(width: 172, height: 66)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 71, y: 66)
            
            
            // top stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                    
                // title 2
                case 0...6:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 62, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 80, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 49, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 80, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 48, y: 32)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-2")
                }
                
                // date 2
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 123, y: 35)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                // number 2
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 41.0))
                    .frame(width: 200, height: 51, alignment: .topTrailing)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 58, y: 44)
                    .kerning(-4)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 195, height: 61)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 267, y: 68)
            
            
            // bottom stack 1
            ZStack{
                // date 3
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 55, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                // title 3
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 120, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...8:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 122, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 9...10:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 122, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 75, height: 50, alignment: .topTrailing)
                            .position(x: 123, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-3")
                }
                
                // number 3
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 37.0))
                    .frame(width: 200, height: 52, alignment: .topLeading)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 113, y: 45)
                    .kerning(-3)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 170, height: 58)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 68, y: 138)
            
            
            // bottom stack 2
            ZStack{
                // number 4
                switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...6:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 75, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 46, y: 32)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 7...10:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 75, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 44, y: 31)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 75, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 43, y: 30)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-4")
                }
                
                // date 4
                Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 125, y: 32)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                // number 4
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2025.04.02"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 40.0))
                    .frame(width: 200, height: 47, alignment: .topTrailing)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 60, y: 45)
                    .kerning(-4)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    .clipped()
                
            }
            .frame(width: 189, height: 60)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 260, y: 138)
            
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
