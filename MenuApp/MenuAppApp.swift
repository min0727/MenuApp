//
//  MenuAppApp.swift
//  MenuApp
//
//  Created by 松崎勝治 on 2024/06/16.
//

import SwiftUI

@main
struct MenuAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(replacing: .newItem) {
                Button(action: createNewFile) {
                    Text("新規ファイルを作成")
                }
                .keyboardShortcut("N", modifiers: [.command])
                
                Button(action: openFile) {
                    Text("ファイルを開く")
                }
                .keyboardShortcut("O", modifiers: [.command])
            }
        }
    }
    
    func createNewFile() {
        // 新規ファイルを作成する処理
        print("新規ファイルを作成")
    }
    
    func openFile() {
        // ファイルを開く処理
        print("ファイルを開く")
    }
}
