//
//  WidgetView_Multi07_XL_Comp01(pad160x160).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 5/14/24.
//

import SwiftUI

struct WidgetView_Multi07_XL_Comp01_pad160x160_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")

        ZStack {
            // top stack 1
            ZStack {
                ZStack {
                    
                    // Date 1
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 100, height: 30, alignment: .topLeading)
                        .position(x: 108, y: 38)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                    // Title 1
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 155, height: 54, alignment: .topTrailing)
                            .position(x: 300, y: 50)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        
                    case 6...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 19.0))
                            .frame(width: 155, height: 54, alignment: .topTrailing)
                            .position(x: 300, y: 49)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 215, height: 64, alignment: .topTrailing)
                            .position(x: 278, y: 54)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 215, height: 64, alignment: .topTrailing)
                            .position(x: 277, y: 52)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        
                    default:
                        Text("Error #F-Size M07-1-1")
                    }
                    
                    // DayNumber 1
//                    switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                        switch 6 {
                        
                    case ...5:
//                        Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        Text("+4444")
                            .font(.custom("Inter-Bold", size: 97.0))
                            .frame(width: 400, height: 100, alignment: .topLeading)
                            .position(x: 225, y: 101)
                            .kerning(-7)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                            .clipped()
                        
                    case 6...:
//                        Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        Text("+44444")
                            .font(.custom("Inter-Bold", size: 89.0))
                            .frame(width: 400, height: 100, alignment: .topLeading)
                            .position(x: 224, y: 111)
                            .kerning(-7)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                            .clipped()
                        
                    default:
                        Text("Error #F-Count M07-1-1")
                    }
                    
                }
                .frame(width: 402, height: 153)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            }
            .position(x: 145, y: 104)
            
            
            
            // top stack 2
            ZStack {
                
                // 2
                ZStack {
                    // Title 2
                    switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 185, height: 70, alignment: .topLeading)
                            .position(x: 116, y: 54)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 6...10:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 19.0))
                            .frame(width: 185, height: 70, alignment: .topLeading)
                            .position(x: 116, y: 54)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 215, height: 70, alignment: .topLeading)
                            .position(x: 128, y: 53)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 215, height: 70, alignment: .topLeading)
                            .position(x: 128, y: 53)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Error #F-Size M07-1-2")
                    }
                    
                    
                    // Date 2
                    Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2024.05.28")
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 100, height: 50, alignment: .topTrailing)
                        .position(x: 320, y: 46)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                    
                    // DayNumber 2
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    Text("+4444")
                        .font(.custom("Inter-Bold", size: 93.0))
                        .frame(width: 390, height: 100, alignment: .topTrailing)
                        .position(x: 195, y: 82)
                        .kerning(-7)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        .clipped()
                }
                .frame(width: 410, height: 136)
                .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 6)
            }
            .position(x: 587, y: 106)
            
            
            
            // bottom stack 1
            ZStack {
                
                // 3
                ZStack {
                    // Date 3
                    Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2024.05.28")
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 100, height: 30, alignment: .topLeading)
                        .position(x: 98, y: 36)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                    
                    // Title 3
                    switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 160, height: 180, alignment: .topTrailing)
                            .position(x: 257, y: 107)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 6...10:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 19.0))
                            .frame(width: 180, height: 180, alignment: .topTrailing)
                            .position(x: 313, y: 108)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 255, height: 180, alignment: .topTrailing)
                            .position(x: 278, y: 109)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 230, height: 180, alignment: .topTrailing)
                            .position(x: 290, y: 109)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Error #F-Size M07-1-3")
                    }
                    
                    
                    // DayNumber 3
//                    switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                        switch 6 {

                    case ...5:
//                        Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                            Text("+4444")
                            .font(.custom("Inter-Bold", size: 89.0))
                            .frame(width: 340, height: 100, alignment: .topLeading)
                            .position(x: 188, y: 82)
                            .kerning(-6)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            .clipped()

                    case 6...:
//                        Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                            Text("+44444")
                            .font(.custom("Inter-Bold", size: 81.0))
                            .frame(width: 340, height: 100, alignment: .topLeading)
                            .position(x: 188, y: 90)
                            .kerning(-6)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            .clipped()

                    default:
                        Text("Error #F-Count M07-1-3")
                    }
                    
                }
                .frame(width: 423, height: 130)
                .border(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"), width: 6)
            }
            .position(x: 163, y: 268)
            
            
            
            // bottom stack 2
            ZStack {
                
                // 4
                ZStack {
                    
                    // Title 4
                    switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 21.0))
                            .frame(width: 170, height: 140, alignment: .topLeading)
                            .position(x: 106, y: 89)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        
                    case 6...10:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 170, height: 140, alignment: .topLeading)
                            .position(x: 105, y: 88)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 18.0))
                            .frame(width: 200, height: 140, alignment: .topLeading)
                            .position(x: 119, y: 88)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 200, height: 140, alignment: .topLeading)
                            .position(x: 119, y: 87)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        
                    default:
                        Text("Error #F-Size M07-1-3")
                    }
                    
                    
                    
                    // Date 4
                    Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "2024.05.28")
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 100, height: 50, alignment: .topTrailing)
                        .position(x: 295, y: 45)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                    
                    
                    // DayNumber 4
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                    Text("+444")
                        .font(.custom("Inter-Bold", size: 94.0))
                        .frame(width: 400, height: 100, alignment: .topTrailing)
                        .position(x: 165, y: 96)
                        .kerning(-7)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
                        .clipped()
                }
                .frame(width: 405, height: 145)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
            }
            .position(x: 610, y: 268)
        }
        .frame(width: 820, height: 360)
        .position(x: 430, y: 190)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
        
    }
}
