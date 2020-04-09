//
//  SettingView.swift
//  PokeMaster
//
//  Created by Ken on 2020/4/5.
//  Copyright © 2020 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import SwiftUI

class Settings: ObservableObject {

    enum AccountBehavior: CaseIterable {
        case register, login
    }

    enum Sorting: CaseIterable {
        case id, name, color, favorite
    }

    @Published var accountBehavior = AccountBehavior.login
    @Published var email = ""
    @Published var password = ""
    @Published var verifyPassword = ""

    @Published var showEnglishName = true
    @Published var sorting = Sorting.id
    @Published var showFavoriteOnly = false
}



struct SettingView: View {
    @ObservedObject var settings = Settings()

    var body: some View {
        
        Form {
            accountSection
            optionSection
            actionSection
        }

    }
    
    
    var accountSection: some View {
        Section(header: Text("账户")) {
            Picker(selection: $settings.accountBehavior, label: Text("")) {
                ForEach(Settings.AccountBehavior.allCases, id: \.self) {
                    Text($0.text)
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            TextField("电子邮箱", text: $settings.email)
            
            SecureField("密码", text: $settings.password)
            
            if settings.accountBehavior == .register {
                SecureField("确定密码", text: $settings.verifyPassword)
            }
            
            Button(settings.accountBehavior.text) {
                print(self.settings.accountBehavior.text)
            }
        }
    }
    
    var optionSection: some View {
        Section(header: Text("选项")) {
            Toggle(isOn: $settings.showEnglishName) {
                 Text("显示英文")
            }
            
            Picker(selection: $settings.sorting,
                   label: Text("排序方式").foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))) {
                ForEach(Settings.Sorting.allCases, id: \.self) {
                    Text($0.text).foregroundColor(.green)
                }
            }
            
            Toggle(isOn: $settings.showFavoriteOnly) {
                Text("只显示收藏")
            }

        }
    }
    
    var actionSection: some View {
        Section {
            Button(action: {
                print("清除缓存")
            }) {
                Text("清除缓存")
                    .foregroundColor(.red)
            }
        }
    }
}




extension Settings.Sorting {
    var text: String {
        switch self {
        case .id: return "ID"
        case .name: return "名字"
        case .color: return "颜色"
        case .favorite: return "最爱"
        }
    }
}

extension Settings.AccountBehavior {
    var text: String {
        switch self {
        case .register: return "注册"
        case .login: return "登录"
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
