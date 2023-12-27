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
            switch self.family {
            case .systemExtraLarge:
                switch entry.configuration.shadow?.stringValue ?? "0" {
                case "0": // disable shadow
                    
                    // Mark : - .containerBackground()는 iOS 17 대응을 위함
                    WidgetView_Multi07_XL_Comp01(entry: self.entry)
                        .body
                        .containerBackground(for: .widget) {}
                    
                case "1": // enable shadow
                    WidgetView_Multi07_XL_Comp01(entry: self.entry)
                        .body
                        .containerBackground(for: .widget) {}
                    
                default:
                    Text("Encountered Error M07-1")
                }
                
            @unknown default:
                Text("Sorry, You have encountered Default Error.")
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
        .configurationDisplayName("iPad 전용 위젯")
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
