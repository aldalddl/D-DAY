//
//  WidigetView_Multi03_L_Comp01_2.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/03/15.
//

import SwiftUI

struct WidgetView_Multi03_L_Comp01_2: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let isTodayCounted2: String = ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false"
        let dateInt2: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2024.02.10"), isTodayCounted: isTodayCounted2)
        let ddayDorPlus2: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt2)
        let _formattedDateInt2: String = CustomFunctions().dateIntSign(dateIntParam: dateInt2)
        
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
            Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                .font(.custom("Inter-Bold", size: 12.0)) 
                .frame(width: 70, height: 55, alignment: .topTrailing)
                .multilineTextAlignment(.trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 270, trailing: 0))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            
            Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 12.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 295, leading: 0, bottom: 0, trailing: 45))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            
            switch txtStringArr2.count {
            case 0...3:
                Text("D")
                    .font(.custom("Inter-Bold", size: 93.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 70, y: 104)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(ddayDorPlus2)")
                    .font(.custom("Inter-ExtraBold", size: 50.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .position(x: 37, y: 175)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 0] ?? "")")
                    .font(.custom("Inter-Bold", size: 95.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 170)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 1] ?? "")")
                    .font(.custom("Inter-Bold", size: 95.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 231)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 2] ?? "")")
                    .font(.custom("Inter-Bold", size: 95.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 295)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            default:
                Text("D")
                    .font(.custom("Inter-Bold", size: 80.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 78, y: 94)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(ddayDorPlus2)")
                    .font(.custom("Inter-ExtraBold", size: 50.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .position(x: 45, y: 147)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 0] ?? "9")")
                    .font(.custom("Inter-Bold", size: 80.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 79, y: 149)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 1] ?? "9")")
                    .font(.custom("Inter-Bold", size: 80.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 79, y: 204)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 2] ?? "9")")
                    .font(.custom("Inter-Bold", size: 80.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 79, y: 259)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 3] ?? "9")")
                    .font(.custom("Inter-Bold", size: 80.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 79, y: 314)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            }
        }
        .frame(width: 80, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
    }
}
