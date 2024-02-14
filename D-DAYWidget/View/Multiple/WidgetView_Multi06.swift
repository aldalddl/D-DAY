//
//  WidgetView_Multi06.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/03/16.
//

import SwiftUI
import WidgetKit

struct WidgetView_Multi06EntryView: View { // hex done
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        if #available(iOSApplicationExtension 17.0, *) {
            switch self.family {
            case .systemExtraLarge:
                switch entry.configuration.shadow?.stringValue ?? "0" {
                case "0": // disable shadow
                    
                    // Mark : - .containerBackground()는 iOS 17 대응을 위함
                    WidgetView_Multi06_XL_Comp01(entry: self.entry)
                        .body
                        .containerBackground(for: .widget) {}
                    
                case "1": // enable shadow
                    WidgetView_Multi06_XL_Comp02(entry: self.entry)
                        .body
                        .containerBackground(for: .widget) {}
                    
                default:
                    Text("Encountered Error M06-1")
                }
                
            @unknown default:
                Text("Sorry, You have encountered Default Error. M06-2")
            }
        }
    }
}

// Multi ExtraLarge01
struct WidgetView_Multi06: Widget {
    let kind: String = "WidgetView_Multi06"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Multi06EntryView(entry: entry)
        }
        .configurationDisplayName("Big Size Widget")
        .description("여러 개의 디데이를 표시할 수 있는 위젯입니다.")
        .supportedFamilies([.systemExtraLarge])
        .contentMarginsDisabled() // Mark : - iOS 17.0 safe area padding 대응
        .containerBackgroundRemovable(false)
    }
}

struct WidgetView_Multi06_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Multi06EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemExtraLarge))
    }
}
