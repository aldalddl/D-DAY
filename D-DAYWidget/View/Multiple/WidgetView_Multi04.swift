//
//  WidgetView_Multi02.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/02/26.
//

import SwiftUI
import WidgetKit

struct WidgetView_Multi04EntryView : View { // hex done
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_M04().getDaySymbolMenu(entry: self.entry)
        
        switch self.family {
            
        case .systemLarge:
            switch entry.configuration.shadow?.stringValue ?? "0" {
            case "0": // disable shadow
                
                    switch UIScreen.main.bounds.size { // Depends on Device

                        case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                            WidgetView_Multi04_L_Comp01_364x382_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                        
                        case CGSize(width: 414, height: 896): // (360x169)
                            WidgetView_Multi04_L_Comp01_360x379_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                        
                        case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                            WidgetView_Multi04_L_Comp01_338x354_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                        
                        case CGSize(width: 375, height: 812): // (329x155)
                            WidgetView_Multi04_L_Comp01_329x345_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                            
                        case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x324)
                            WidgetView_Multi04_L_Comp01_321x324_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                                
                        default:
                            Text("CGSize default M04-1")
                        }
                
            case "1": // enable shadow
                switch UIScreen.main.bounds.size { // Depends on Device

                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                        WidgetView_Multi04_L_Comp02_364x382_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                    case CGSize(width: 414, height: 896): // (360x169)
                        WidgetView_Multi04_L_Comp02_360x379_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                        WidgetView_Multi04_L_Comp02_338x354_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                    case CGSize(width: 375, height: 812): // (329x155)
                        WidgetView_Multi04_L_Comp02_329x345_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                        
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x324)
                        WidgetView_Multi04_L_Comp02_321x324_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                            
                    default:
                        Text("CGSize default M04-2")
                    }
                
            default:
                Text("Encountered Error M04-1")
            }
            
        @unknown default:
            Text("Sorry, You have encountered Default Error. M04-2")
        }
    }
}

// Multi Large02
struct WidgetView_Multi04: Widget {
    let kind: String = "WidgetView_Multi04"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Multi04EntryView(entry: entry)
        }
        .configurationDisplayName(LocalizedStringKey("#2 멀티 위젯"))
        .description(LocalizedStringKey("여러 개의 디데이를 표시할 수 있는 위젯입니다."))
        .supportedFamilies([.systemLarge])
    }
}

struct WidgetView_Multi04_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Multi04EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
