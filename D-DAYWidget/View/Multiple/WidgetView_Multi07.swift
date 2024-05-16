//
//  WidgetView_Multi07.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/03/16.
//

import SwiftUI
import WidgetKit

struct WidgetView_Multi07EntryView: View { // hex done
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        if #available(iOSApplicationExtension 17.0, *) {
            let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_M07().getDaySymbolMenu(entry: self.entry)
            
            switch self.family {
                
                // Extra Large For iPad
                
            case .systemExtraLarge:
                switch entry.configuration.shadow?.stringValue ?? "0" {
                case "0": // disable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                        case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                            
                        case CGSize(width: 810, height: 1080): // (810x1080)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        case CGSize(width: 834, height: 1112): // (834x1112)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                            
                        case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        case CGSize(width: 1024, height: 1366): // (1024x1366)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        // 미정
                        case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        // 미정
                        case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                            
                        default:
                            // Default widget
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi07_XL_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                    }
                    
                    
                    
                    
                    
                case "1": // enable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                        case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                            
                        case CGSize(width: 810, height: 1080): // (810x1080)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        case CGSize(width: 834, height: 1112): // (834x1112)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                            
                        case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        case CGSize(width: 1024, height: 1366): // (1024x1366)
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        // 미정
                        case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                        
                        // 미정
                        case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                            
                        default:
                            // Default widget
                            // Mark : - .containerBackground()는 iOS 17 대응을 위함
                            WidgetView_Multi06_XL_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                                .body
                                .containerBackground(for: .widget) {}
                    }
                    
                default:
                    Text("Encountered Error M07 for Pad")
                }
                
            @unknown default:
                Text("Sorry, You have encountered Default Error.-  M07 for Pad")
            }
        }
    }
}

// Multi ExtraLarge02
struct WidgetView_Multi07: Widget {
    let kind: String = "WidgetView_Multi07"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Multi07EntryView(entry: entry)
        }
        .configurationDisplayName("Big Size Widget")
        .description("여러 개의 디데이를 표시할 수 있는 위젯입니다.")
        .supportedFamilies([.systemExtraLarge])
        .contentMarginsDisabled() // Mark : - iOS 17.0 safe area padding 대응
        .containerBackgroundRemovable(false)
    }
}

struct WidgetView_Multi07_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Multi07EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemExtraLarge))
    }
}
