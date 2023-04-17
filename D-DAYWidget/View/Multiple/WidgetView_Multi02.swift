
//  WidgetView_Multi02.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/03/08.
//

import SwiftUI
import WidgetKit

struct WidgetView_Multi02EntryView : View { // hex done
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        switch self.family {
        case .systemMedium:
            
            let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_MM03().getDaySymbolMenu(entry: self.entry)
            
            let defaultStringArr: [[String]] = DefaultArrForWidget_MM03().getDefaultStringArr()
            
            switch entry.configuration.shadow?.stringValue ?? "0" {
            case "0": // disable shadow
                
                switch UIScreen.main.bounds.size { // Depends on Device
                case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                    WidgetView_Multi03_M_Comp01_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 414, height: 896): // (360x169)
                    WidgetView_Multi03_M_Comp01_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                    WidgetView_Multi03_M_Comp01_338x158_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 375, height: 812): // (329x155)
                    WidgetView_Multi03_M_Comp01_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                    WidgetView_Multi03_M_Comp01_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                default:
                    Text("CGSize default M02-1")
                }
                
                
            case "1": // enable shadow
                
                switch UIScreen.main.bounds.size { // Depends on Device
                case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                    WidgetView_Multi03_M_Comp02_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 414, height: 896): // (360x169)
                    WidgetView_Multi03_M_Comp02_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                    WidgetView_Multi03_M_Comp02_338x158_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 375, height: 812): // (329x155)
                    WidgetView_Multi03_M_Comp02_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                    WidgetView_Multi03_M_Comp02_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr).body
                    
                    
                    
                default:
                    Text("CGSize default M02-2")
                }
                
            default:
                Text("Encountered Error M02-2")
            }
            
        @unknown default:
            Text("Sorry, You have encountered Default Error. M02-2")
        }
    }
}

// Multi Medium03, Large01
struct WidgetView_Multi02: Widget {
    let kind: String = "WidgetView_Multi02"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Multi02EntryView(entry: entry)
        }
        .configurationDisplayName(LocalizedStringKey("#2 멀티 위젯"))
        .description(LocalizedStringKey("여러 개의 디데이를 표시할 수 있는 위젯입니다."))
        .supportedFamilies([.systemMedium])
    }
}

struct WidgetView_Multi02_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Multi02EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
