//
//  WidgetView_Multi01_M_Comp01(321x148).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Multi01_M_Comp01_321x148_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var defaultStringArr: [[String]]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        // top 1
        VStack(spacing: 0) {
            HStack(alignment: .bottom, spacing: 0) {
                ZStack(alignment: .bottom) {
                    
                    // title 1
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .position(x: 137, y: 91)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    // date 1
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.00.00")
                        .font(.custom("Inter-Bold", size: 7.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 23, height: 50, alignment: .topLeading)
                        .position(x: 40, y: 127)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    // day number 1
                    ZStack {
                        
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 51.0))
                                .frame(width: 150, height: 49, alignment: .topTrailing)
                                .position(x: 54, y: 22)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 5...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 46.0))
                                .frame(width: 150, height: 49, alignment: .topTrailing)
                                .position(x: 53, y: 27)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        default:
                            Text("M1 DN Error 01")
                        }
                        
                    }
                    .frame(width: 130, height: 45, alignment: .bottomTrailing)
                    .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                }
                .position(x: 170, y: 65)
                .frame(width: 235, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                .clipped()
                
                
                // top 2
                ZStack(alignment: .bottom) {
                    // title 2
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 200, height: 50, alignment: .topTrailing)
                        .position(x: 98, y: 91)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // date 2
                    Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2023.00.00")
                        .font(.custom("Inter-Bold", size: 7.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 23, height: 50, alignment: .topTrailing)
                        .position(x: 197, y: 127)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // day number 2
                    ZStack {
                        
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 51.0))
                                .frame(width: 150, height: 49, alignment: .topLeading)
                                .position(x: 70, y: 21)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 5...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 45.0))
                                .frame(width: 150, height: 49, alignment: .topLeading)
                                .position(x: 70, y: 27)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                        default:
                            Text("M1 DN Error 02")
                        }
                        
                    }
                    .frame(width: 130, height: 45, alignment: .bottomLeading)
                    .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                }
                .position(x: 65, y: 65)
                .frame(width: 235, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                .clipped()
            }
            
            
            // bottom 1
            HStack(alignment: .top, spacing: 0) {
                ZStack(alignment: .top) {
                    // title 3
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 200, height: 50, alignment: .topLeading)
                        .position(x: 137, y: 76)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // date 3
                    Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2023.00.00")
                        .font(.custom("Inter-Bold", size: 7.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 24, height: 50, alignment: .topLeading)
                        .position(x: 40, y: 35)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // day number 3
                    ZStack {
                        
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 51.0))
                                .frame(width: 150, height: 49, alignment: .topLeading)
                                .position(x: 69, y: 21)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 5...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 45.0))
                                .frame(width: 150, height: 49, alignment: .topLeading)
                                .position(x: 70, y: 27)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                        default:
                            Text("M1 DN Error 03")
                        }
                        
                    }
                    .frame(width: 130, height: 45, alignment: .bottomLeading)
                    .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                }
                .position(x: 170, y: 65)
                .frame(width: 235, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                .clipped()
                
                
                // bottom 2
                ZStack(alignment: .top) {
                    // title 4
                    Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 200, height: 50, alignment: .topTrailing)
                        .position(x: 98, y: 76)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    // date 4
                    Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "2023.00.00")
                        .font(.custom("Inter-Bold", size: 7.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 23, height: 50, alignment: .topTrailing)
                        .position(x: 197, y: 35)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    // day number 4
                    ZStack {
                        
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  defaultStringArr[3][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  defaultStringArr[3][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 51.0))
                                .frame(width: 150, height: 49, alignment: .topTrailing)
                                .position(x: 54, y: 23)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 5...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 46.0))
                                .frame(width: 150, height: 49, alignment: .topTrailing)
                                .position(x: 53, y: 26)
                                .kerning(-5)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        default:
                            Text("M1 DN Error 04")
                        }
                        
                    }
                    .frame(width: 130, height: 45, alignment: .bottomTrailing)
                    .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
                .position(x: 65, y: 65)
                .frame(width: 235, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                .clipped()
            }
        }
    }
}
