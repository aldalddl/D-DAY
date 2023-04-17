//
//  WidgetView_Multi03_M_Comp02(321x148).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/03.
//

import SwiftUI

struct WidgetView_Multi03_M_Comp02_321x148_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var defaultStringArr: [[String]]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        ZStack{
            // top stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 42, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {

                case 0...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 100, height: 50, alignment: .topTrailing)
                            .position(x: 102, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 8...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 84, height: 50, alignment: .topTrailing)
                            .position(x: 112, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-1")
                }
                
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 52.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 98, y: 44)
                        .kerning(-5)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
            }
            .frame(width: 160, height: 67)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 75, y: 67)
            
            
            // top stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...7:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 58, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 8...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 85, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 51, y: 32)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-2")
                }
                
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 120, y: 35)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 46.0))
                    .frame(width: 200, height: 51, alignment: .topTrailing)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 51, y: 42)
                    .kerning(-5)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 190, height: 63)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 263, y: 67)
            
            
            // bottom stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 9.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 42, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...8:
                        
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 120, height: 50, alignment: .topTrailing)
                            .position(x: 103, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 9...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 106, height: 50, alignment: .topTrailing)
                            .position(x: 111, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-3")
                }
                
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 46.0))
                    .frame(width: 200, height: 52, alignment: .topLeading)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 99, y: 38)
                    .kerning(-5)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 172, height: 58)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 80, y: 138)
            
            
            // bottom stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...9:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 90, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 51, y: 33)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 10...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 80, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 48, y: 31)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-4")
                }
                
                Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 105, y: 35)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 44.0))
                    .frame(width: 200, height: 47, alignment: .topTrailing)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 37, y: 44)
                    .kerning(-5)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
            }
            .frame(width: 187, height: 62)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 274, y: 137)
            
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
