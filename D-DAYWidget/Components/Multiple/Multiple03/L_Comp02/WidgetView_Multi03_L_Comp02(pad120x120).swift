//
//  WidgetView_Multi03_L_Comp02(pad120x120).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 6/3/24.
//

import SwiftUI

struct WidgetView_Multi03_L_Comp02_pad120x120_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        
        // 1
        
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.12.25"), isTodayCounted: isTodayCounted)
        let ddayDorPlus: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt)
        let _formattedDateInt: String = CustomFunctions().dateIntSign00(dateIntParam: dateInt)
        
        var txtStringArr: [String] = []
        let _dateCountArr: [Int] = [_formattedDateInt.count]
        
        let _: [String] = _dateCountArr.map { index in
            for n in 0..<index {
                let lastIndex = _formattedDateInt.index(_formattedDateInt.startIndex, offsetBy: n)
                txtStringArr.append(String(_formattedDateInt[lastIndex]))
            }
            return ""
        }
        
        ZStack {
            // title 1
            switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                
            case 0...2:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 16.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 7))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 3...5:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 14.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 4))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 6...10:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 13.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 11...14:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 65, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 7))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 15...:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 4))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            default:
                Text("Default E MulLar01-1-0")
                
            }
            
            // date 1
            Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                .font(.custom("Inter-Bold", size: 10.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 230, leading: 0, bottom: 0, trailing: 34))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            // day number 1
            switch txtStringArr.count {
            case 0...3:
                    switch _formattedDateInt {
                    case "0":
                        Text("D")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 126)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("d")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 179)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("a")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 225)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("y")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 271)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                    default:
                        
                        switch ddayDorPlus {
                        case "+" : // +888
                            
                            Text("\(ddayDorPlus)")
                                .font(.custom("Inter-Bold", size: 91.0))
                                .frame(width: 65, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 63, y: 112)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 0] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 180)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 1] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 235)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 2] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 290)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            
                        default: // D888
                            Text("D")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 126)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 0] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 180)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 1] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 235)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 2] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 290)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        }
                    }
                    
                    default: // 4자리수 이상
                        
                        switch ddayDorPlus {
                        case "+" : // +8888
                            
                            Text("\(ddayDorPlus)")
                                .font(.custom("Inter-Bold", size: 75.0))
                                .frame(width: 65, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 68, y: 117)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 0] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 174)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 1] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 218)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 2] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 261)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 3] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 304)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        default:
                            Text("D")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 131)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 0] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 174)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 1] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 218)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 2] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 261)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                            Text("\(txtStringArr[safe: 3] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 304)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        }
                    }
                }
                .frame(width: 72, height: 400)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                .clipped()
        
        
        // 2
        
        let isTodayCounted2: String = ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false"
        let dateInt2: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2024.05.04"), isTodayCounted: isTodayCounted2)
        let ddayDorPlus2: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt2)
        let _formattedDateInt2: String = CustomFunctions().dateIntSign00(dateIntParam: dateInt2)
        
        var txtStringArr2: [String] = []
        let _dateCountArr2: [Int] = [_formattedDateInt2.count]
        
        let _: [String] = _dateCountArr2.map { index in
            for n in 0..<index {
                let lastIndex = _formattedDateInt2.index(_formattedDateInt2.startIndex, offsetBy: n)
                txtStringArr2.append(String(_formattedDateInt2[lastIndex]))
            }
            return ""
        }
        
        ZStack {
            // title 2
            switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                
            case 0...2:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 16.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 7))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 3...5:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 14.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 4))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 6...10:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 13.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 11...14:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 65, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 7))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 15...:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 4))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            default:
                Text("Default E MulLar01-1-1")
                
            }
            
            // date 2
            Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "0000.00.00")
                .font(.custom("Inter-Bold", size: 10.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 230, leading: 0, bottom: 0, trailing: 34))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            
            // day number 2
            switch txtStringArr2.count {
            case 0...3:
                    switch _formattedDateInt2 {
                    case "0":
                        Text("D")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 126)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("d")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 179)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("a")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 225)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("y")
                            .font(.custom("Inter-Bold", size: 78.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 271)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        
                        switch ddayDorPlus2 {
                        case "+" : // +888
                            
                            Text("\(ddayDorPlus2)")
                                .font(.custom("Inter-Bold", size: 91.0))
                                .frame(width: 65, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 63, y: 112)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 0] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 180)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 1] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 235)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 2] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 290)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                        default: // D888
                            Text("D")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 126)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 0] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 180)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 1] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 235)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 2] ?? "")")
                                .font(.custom("Inter-Bold", size: 76.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 66, y: 290)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        }
                    }
                
                    default: // 4자리수 이상
                        
                        switch ddayDorPlus2 {
                        case "+" : // +8888
                            
                            Text("\(ddayDorPlus2)")
                                .font(.custom("Inter-Bold", size: 75.0))
                                .frame(width: 65, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 68, y: 117)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 0] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 174)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 1] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 218)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 2] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 261)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 3] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 304)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                        default:
                            Text("D")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 131)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 0] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 174)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 1] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 218)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 2] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 261)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                            
                            Text("\(txtStringArr2[safe: 3] ?? "9")")
                                .font(.custom("Inter-Bold", size: 61.0))
                                .frame(width: 55, height: 20, alignment: .top)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 71, y: 304)
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        }
                    }
                }
                .frame(width: 72, height: 400)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                .clipped()
        
        
        // 3
        
        let isTodayCounted3: String = ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false"
        let dateInt3: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: isTodayCounted3)
        let ddayDorPlus3: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt3)
        let _formattedDateInt3: String = CustomFunctions().dateIntSign00(dateIntParam: dateInt3)
        
        var txtStringArr3: [String] = []
        let _dateCountArr3: [Int] = [_formattedDateInt3.count]
        
        let _: [String] = _dateCountArr3.map { index in
            for n in 0..<index {
                let lastIndex = _formattedDateInt3.index(_formattedDateInt3.startIndex, offsetBy: n)
                txtStringArr3.append(String(_formattedDateInt3[lastIndex]))
            }
            return ""
        }
        
        ZStack {
            // Title 3
            switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                
            case 0...2:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 16.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 7))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 3...5:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 14.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 4))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 6...10:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 13.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 11...14:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 65, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 7))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 15...:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 60, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 176, trailing: 4))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            default:
                Text("Default E MulLar01-1-0")
                
            }
            
            // Date 3
            Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "0000.00.00")
                .font(.custom("Inter-Bold", size: 10.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 230, leading: 0, bottom: 0, trailing: 34))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            // day number 3
            switch txtStringArr3.count {
            case 0...3:
                switch _formattedDateInt3 {
                case "0":
                    Text("D")
                        .font(.custom("Inter-Bold", size: 76.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 66, y: 126)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("d")
                        .font(.custom("Inter-Bold", size: 78.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 66, y: 179)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("a")
                        .font(.custom("Inter-Bold", size: 78.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 66, y: 225)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("y")
                        .font(.custom("Inter-Bold", size: 78.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 66, y: 271)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                        
                    switch ddayDorPlus3 {
                            
                    case "+" : // +888
                        Text("\(ddayDorPlus3)")
                            .font(.custom("Inter-Bold", size: 91.0))
                            .frame(width: 65, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 63, y: 112)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 0] ?? "")")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 180)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 1] ?? "")")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 235)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 2] ?? "")")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 290)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                    default: // D888
                        
                        Text("D")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 126)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 0] ?? "")")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 180)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 1] ?? "")")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 235)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 2] ?? "")")
                            .font(.custom("Inter-Bold", size: 76.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 66, y: 290)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    }
                }
                
                default: // 4자리수 이상
                    
                    switch ddayDorPlus3 {
                    case "+" : // +8888
                        
                        Text("\(ddayDorPlus3)")
                            .font(.custom("Inter-Bold", size: 75.0))
                            .frame(width: 65, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 68, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 0] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 174)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 1] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 218)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 2] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 261)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 3] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 304)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                    default:
                        Text("D")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 131)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 0] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 174)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 1] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 218)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 2] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 261)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr3[safe: 3] ?? "9")")
                            .font(.custom("Inter-Bold", size: 61.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 71, y: 304)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    }
                }
            }
            .frame(width: 72, height: 400)
            
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
    }
}
