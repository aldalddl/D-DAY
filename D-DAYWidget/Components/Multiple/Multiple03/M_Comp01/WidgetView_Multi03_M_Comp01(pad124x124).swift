//
//  WidgetView_Multi03_M_Comp01(pad124x124).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/27/24.
//

import SwiftUI

struct WidgetView_Multi03_M_Comp01_pad124x124_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var defaultStringArr: [[String]]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        ZStack{
            // top stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 40, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
                
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    
                case 0...5:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 100, height: 50, alignment: .topTrailing)
                            .position(x: 97, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))

                case 6...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 100, height: 50, alignment: .topTrailing)
                            .position(x: 100, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 8...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 109, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 84, height: 50, alignment: .topTrailing)
                            .position(x: 107, y: 31)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 84, height: 50, alignment: .topTrailing)
                            .position(x: 107, y: 31)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-1")
                }
                
                
//                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                Text("+2004")
                        .font(.custom("Inter-Bold", size: 42.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .position(x: 99, y: 49)
                        .kerning(-5)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        .clipped()
            }
            .frame(width: 155, height: 63)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 74, y: 69)
            
            
            // top stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 61, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...7:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 100, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 58, y: 33)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 8...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 80, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 49, y: 32)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...14:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 85, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 50, y: 31)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 85, height: 50, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .position(x: 50, y: 30)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-2")
                }
                
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 122, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
//                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                Text("+2004")
                    .font(.custom("Inter-Bold", size: 42.0))
                    .frame(width: 200, height: 51, alignment: .topTrailing)
                    .position(x: 54, y: 42)
                    .kerning(-5)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 185, height: 59)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 257, y: 69)
            
            
            // bottom stack 1
            ZStack{
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 60, height: 50, alignment: .topLeading)
                    .position(x: 49, y: 34)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 120, height: 50, alignment: .topTrailing)
                            .position(x: 104, y: 33)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 6...10:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 90, height: 50, alignment: .topTrailing)
                            .position(x: 120, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...14:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 90, height: 50, alignment: .topTrailing)
                            .position(x: 119, y: 32)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 10.0))
                            .frame(width: 80, height: 50, alignment: .topTrailing)
                            .position(x: 124, y: 31)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Error MM3-3")
                }
                
                
//                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                Text("+2004")
                    .font(.custom("Inter-Bold", size: 38.0))
                    .frame(width: 200, height: 52, alignment: .topLeading)
                    .position(x: 109, y: 42)
                    .kerning(-4)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    .clipped()
            }
            .frame(width: 172, height: 56)
            .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 4)
            .position(x: 73, y: 136)
            
            
            // bottom stack 2
            ZStack{
                
                switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                case 0...5:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 90, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 52, y: 31)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 6...9:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 70, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 41, y: 30)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 10...14:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 80, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 45, y: 30)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                case 15...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 80, height: 50, alignment: .topLeading)
                            .multilineTextAlignment(.leading)
                            .position(x: 45, y: 29)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                default:
                    Text("Error MM3-4")
                }
                
                Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 60, height: 50, alignment: .topTrailing)
                    .position(x: 114, y: 33)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                
//                Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.12.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                Text("+2004")
                    .font(.custom("Inter-Bold", size: 38.0))
                    .frame(width: 200, height: 47, alignment: .topTrailing)
                    .position(x: 48, y: 44)
                    .kerning(-4)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    .clipped()
                
            }
            .frame(width: 187, height: 57)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            .position(x: 264, y: 136)
            
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
