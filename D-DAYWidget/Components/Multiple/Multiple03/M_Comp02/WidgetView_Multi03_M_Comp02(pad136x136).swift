//
//  WidgetView_Multi03_M_Comp02(pad136x136).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 5/27/24.
//

import SwiftUI

struct WidgetView_Multi03_M_Comp02_pad136x136_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var defaultStringArr: [[String]]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        ZStack{
            // top stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 43, y: 35)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    
                case 0...5:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 100, height: 50, alignment: .topTrailing)
                            .position(x: 97, y: 34)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))

                case 6...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 100, height: 50, alignment: .topTrailing)
                            .position(x: 99, y: 35)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 8...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 110, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 84, height: 50, alignment: .topTrailing)
                            .position(x: 107, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 84, height: 50, alignment: .topTrailing)
                            .position(x: 108, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-1")
                }
                
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 41.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 101, y: 49)
                        .kerning(-3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        .clipped()
            }
            .frame(width: 156, height: 63)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 73, y: 69)
            
            
            // top stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 61, y: 34)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...7:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 61, y: 34)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 8...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 90, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 55, y: 34)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...14:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 95, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 58, y: 34)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 9.0))
                        .frame(width: 85, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 51, y: 32)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-2")
                }
                
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 137, y: 35)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 38.0))
                    .frame(width: 200, height: 51, alignment: .topTrailing)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 73, y: 42)
                    .kerning(-3)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 185, height: 58)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 261, y: 69)
            
            
            // bottom stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 46, y: 35)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 120, height: 50, alignment: .topTrailing)
                            .position(x: 102, y: 34)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...7:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 90, height: 50, alignment: .topTrailing)
                            .position(x: 117, y: 34)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 8...10:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 90, height: 50, alignment: .topTrailing)
                            .position(x: 117, y: 34)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...14:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 95, height: 50, alignment: .topTrailing)
                            .position(x: 116, y: 34)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 90, height: 50, alignment: .topTrailing)
                            .position(x: 118, y: 34)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-3")
                }
                
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 36.0))
                    .frame(width: 200, height: 52, alignment: .topLeading)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 105, y: 43)
                    .kerning(-3)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 172, height: 55)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 77, y: 138)
            
            
            // bottom stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 90, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 55, y: 32)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 6...7:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 70, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 45, y: 33)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 8...10:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 70, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 45, y: 33)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...14:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 95, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 54, y: 33)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 15...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 9.0))
                            .frame(width: 85, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 50, y: 32)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-4")
                }
                
                Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 8.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 124, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                    .font(.custom("Inter-Bold", size: 39.0))
                    .frame(width: 200, height: 47, alignment: .topTrailing)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 59, y: 43)
                    .kerning(-3)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    .clipped()
                
            }
            .frame(width: 187, height: 57)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 275, y: 137)
            
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
