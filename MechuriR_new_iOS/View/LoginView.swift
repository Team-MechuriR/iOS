//
//  LoginView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI
import AuthenticationServices //애플

struct LoginView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.bg).ignoresSafeArea(.all)
                
                VStack(spacing: 20) {
                    Image("mechuri1")
                        .resizable()
                        .frame(width: 270, height: 270)
                    
                    // 카카오
                    Button {
                        
                    } label: {
                        Image("kakao_login")
                            .resizable()
                            .frame(width: 277, height: 46)
                    }
                    
                    // 구글
                    Button {
                        
                    } label: {
                        Image("google_login")
                            .resizable()
                            .frame(width: 277, height: 46)
                    }
                    
                    Button {
                        
                    } label: { 
                        AppleSigninButton()
                    }
                } //버튼들
            }
        }
    }
    
    struct AppleSigninButton : View{
        var body: some View{
            SignInWithAppleButton(
                onRequest: { request in
                    request.requestedScopes = [.fullName, .email]
                },
                onCompletion: { result in
                    switch result {
                    case .success(let authResults):
                        print("Apple Login Successful")
                        switch authResults.credential{
                        case let appleIDCredential as ASAuthorizationAppleIDCredential:
                            // 계정 정보 가져오기
                            let UserIdentifier = appleIDCredential.user
                            let fullName = appleIDCredential.fullName
                            let name =  (fullName?.familyName ?? "") + (fullName?.givenName ?? "")
                            let email = appleIDCredential.email
                            let IdentityToken = String(data: appleIDCredential.identityToken!, encoding: .utf8)
                            let AuthorizationCode = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
                        default:
                            break
                        }
                    case .failure(let error):
                        print(error.localizedDescription)
                        print("error")
                    }
                }
            )
            .frame(width : 277, height:46)
            .cornerRadius(5)
        }
    }
}

#Preview {
    LoginView()
}
