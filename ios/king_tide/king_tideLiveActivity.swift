//
//  king_tideLiveActivity.swift
//  king_tide
//
//  Created by antonio dante arista rivas on 5/27/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct king_tideAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct king_tideLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: king_tideAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension king_tideAttributes {
    fileprivate static var preview: king_tideAttributes {
        king_tideAttributes(name: "World")
    }
}

extension king_tideAttributes.ContentState {
    fileprivate static var smiley: king_tideAttributes.ContentState {
        king_tideAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: king_tideAttributes.ContentState {
         king_tideAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: king_tideAttributes.preview) {
   king_tideLiveActivity()
} contentStates: {
    king_tideAttributes.ContentState.smiley
    king_tideAttributes.ContentState.starEyes
}
