//
//  WidgetView_Multi03_M_Comp01(321x148).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/03.
//

import SwiftUI

struct WidgetView_Multi03_M_Comp01_321x148_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var defaultStringArr: [[String]]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        ZStack{
            // top stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 51, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    
                case 0...5:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 100, height: 50, alignment: .topTrailing)
                            .position(x: 100, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))

                case 6...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 112, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 78, height: 50, alignment: .topTrailing)
                            .position(x: 113, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-1")
                }
                
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 42.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .position(x: 108, y: 47)
                        .kerning(-4)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        .clipped()
            }
            .frame(width: 160, height: 62)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 67, y: 69)
            
            
            // top stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 61, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 80, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 50, y: 34)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 9.0))
                        .frame(width: 85, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 51, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-2")
                }
                
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 116, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 39.0))
                    .frame(width: 200, height: 51, alignment: .topTrailing)
                    .position(x: 51, y: 45)
                    .kerning(-4)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 190, height: 60)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 260, y: 69)
            
            
            // bottom stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 50, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 120, height: 50, alignment: .topTrailing)
                            .position(x: 100, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...10:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 90, height: 50, alignment: .topTrailing)
                            .position(x: 118, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 85, height: 50, alignment: .topTrailing)
                            .position(x: 120, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-3")
                }
                
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 36.0))
                    .frame(width: 200, height: 52, alignment: .topLeading)
                    .position(x: 108, y: 43)
                    .kerning(-3)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 172, height: 55)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 74, y: 137)
            
            
            // bottom stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 90, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 52, y: 32)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 6...10:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 70, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 42, y: 31)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 70, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 42, y: 30)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-4")
                }
                
                Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 104, y: 33)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2025.04.02"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 38.0))
                    .frame(width: 200, height: 47, alignment: .topTrailing)
                    .position(x: 42, y: 43)
                    .kerning(-3)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    .clipped()
                
            }
            .frame(width: 187, height: 56)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 271, y: 137)
            
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
