//
//  WidgetView_Multi01_M_Comp01(pad136x136).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/8/24.
//

import SwiftUI

struct WidgetView_Multi01_M_Comp01_pad136x136_: View { // disable shadow
    
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
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 127, y: 80) // 121 127 /78 80
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 5...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 125, y: 80) // 120 125 / 78 80
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 8...11:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 121, y: 81) // 119 121 / 78 81
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 12...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 122, y: 82) // 116 122 / 80 82
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 112, y: 82)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Error MM3-1")
                    }
                    
                    // date 1
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                        .font(.custom("Inter-Bold", size: 8.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 24, height: 50, alignment: .topLeading)
                        .position(x: 22, y: 115)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    // day number 1
                    ZStack {
                        
                   switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 49.0))
                                .frame(width: 200, height: 49, alignment: .topTrailing)
                                .position(x: 22, y: 21)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                           
                           
                       case 5:
                           Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                               .font(.custom("Inter-ExtraBold", size: 41.0))
                               .frame(width: 200, height: 49, alignment: .topTrailing)
                               .position(x: 22, y: 28)
                               .kerning(-3)
                               .clipped()
                               .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 6...:
                        Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  defaultStringArr[0][1]), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 33.0))
                                .frame(width: 200, height: 49, alignment: .topTrailing)
                                .position(x: 23, y: 36)
                                .kerning(-2)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        default:
                            Text("M1 DN Error 01")
                        }
                    }
                    .frame(width: 140, height: 52, alignment: .bottomTrailing)
                    .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                }
                .position(x: 178, y: 74)
                .frame(width: 230, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                .clipped()
                
                
                // top 2
                ZStack(alignment: .bottom) {
                    // title 2
                    switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 103, y: 80)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 5...7:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 105, y: 80)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 8...11:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 109, y: 81)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 12...14:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 108, y: 82)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 118, y: 82)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Error MM3-1")
                    }
                    
                    
                    // date 2
                    Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "0000.00.00")
                        .font(.custom("Inter-Bold", size: 8.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 24, height: 50, alignment: .topTrailing)
                        .position(x: 209, y: 115)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // day number 2
                    ZStack {
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 49.0))
                                .frame(width: 200, height: 49, alignment: .topLeading)
                                .position(x: 112, y: 21)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 5:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 41.0))
                                .frame(width: 200, height: 49, alignment: .topLeading)
                                .position(x: 113, y: 28)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 6...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  defaultStringArr[1][1]), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 33.0))
                                .frame(width: 200, height: 49, alignment: .topLeading)
                                .position(x: 114, y: 36)
                                .kerning(-2)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                        default:
                            Text("M1 DN Error 02")
                        }
                    }
                    .frame(width: 140, height: 52, alignment: .bottomLeading)
                    .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                }
                .position(x: 53, y: 74)
                .frame(width: 230, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                .clipped()
            }
            
            
            // bottom 1
            HStack(alignment: .top, spacing: 0) {
                ZStack(alignment: .top) {
                    // title 3
                    switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 127, y: 83)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 5...7:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 125, y: 83)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 8...11:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 121, y: 83)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 12...14:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 122, y: 84)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 200, height: 50, alignment: .topLeading)
                            .position(x: 112, y: 84)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Error MM3-1")
                    }
                    
                    
                    // date 3
                    Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "0000.00.00")
                        .font(.custom("Inter-Bold", size: 8.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 24, height: 50, alignment: .topLeading)
                        .position(x: 22, y: 42)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // day number 3
                    ZStack {
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                            
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 49.0))
                                .frame(width: 200, height: 49, alignment: .topLeading)
                                .position(x: 95, y: 30)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 5:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 41.0))
                                .frame(width: 200, height: 49, alignment: .topLeading)
                                .position(x: 95, y: 37)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 6...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  defaultStringArr[2][1]), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 33.0))
                                .frame(width: 200, height: 49, alignment: .topLeading)
                                .position(x: 97, y: 45)
                                .kerning(-2)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                        default:
                            Text("M1 DN Error 03")
                        }
                    }
                    .frame(width: 140, height: 52, alignment: .bottomLeading)
                    .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                }
                .position(x: 178, y: 56)
                .frame(width: 230, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                .clipped()
                
                
                // bottom 2
                ZStack(alignment: .top) {
                    // title 4
                    switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case 0...4:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 103, y: 83)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 5...7:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 105, y: 83)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 8...11:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 109, y: 83)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 12...14:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 12.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 108, y: 84)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 11.0))
                            .frame(width: 200, height: 50, alignment: .topTrailing)
                            .position(x: 118, y: 84)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Error MM3-1")
                    }
                    
                    // date 4
                    Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "0000.00.00")
                        .font(.custom("Inter-Bold", size: 8.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 24, height: 50, alignment: .topTrailing)
                        .position(x: 209, y: 42)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    // day number 4
                    ZStack {
                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  defaultStringArr[3][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")).count {
                                
                        case ...4:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ?? defaultStringArr[3][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 49.0))
                                .frame(width: 200, height: 49, alignment: .topTrailing)
                                .position(x: 40, y: 30)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                                                 
                        case 5:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  defaultStringArr[3][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                                .font(.custom("Inter-ExtraBold", size: 41.0))
                                .frame(width: 200, height: 49, alignment: .topTrailing)
                                .position(x: 40, y: 37)
                                .kerning(-3)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 6...:
                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  defaultStringArr[3][1]), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))") 
                                .font(.custom("Inter-ExtraBold", size: 33.0))
                                .frame(width: 200, height: 49, alignment: .topTrailing)
                                .position(x: 41, y: 45)
                                .kerning(-2)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        default:
                            Text("M1 DN Error 04")
                        }
                        
                    }
                    .frame(width: 140, height: 52, alignment: .bottomTrailing)
                    .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
                .position(x: 53, y: 56)
                .frame(width: 230, height: 130)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                .clipped()
            }
        }
    }
}
