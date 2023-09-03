//
//  Info.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/29.
//

import SwiftUI
// WebView로 연결
import WebKit

struct Info: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("정보")
                .font(.title2)
                .bold()
                .padding()
                .padding(.leading, 5)
            
            NavigationLink {
//                ZStack{
//                    MyWebView(urlToLoad: "https://statuesque-cast-fac.notion.site/GRAIN-6d71c1363594444b8c9d4ba9ad6b192d")
//                        .navigationTitle(Text("이용약관"))
//                        .navigationBarTitleDisplayMode(.inline)
//                    if isShownProgress == true {
//                        ProgressView()
//                            .onAppear{
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                    self.isShownProgress = false
//                                }
//                            }
//                    }
//                }
//                .onDisappear{
//                    isShownProgress = true
//                }
            } label: {
                HStack {
                    Image(systemName: "doc")
                        .font(.system(size:22))
                        .padding(.leading, 3.6)
                        .padding(.trailing, 14)
                    
                    Text("이용약관")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title3)
                    
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
            
            NavigationLink {
                //PrivacyPolicyView()
//                ZStack{
//                    MyWebView(urlToLoad: "https://sites.google.com/view/grain-ios/%ED%99%88")
//                        .navigationTitle(Text("개인 정보 처리방침"))
//                        .navigationBarTitleDisplayMode(.inline)
//                    if isShownProgress == true {
//                        ProgressView()
//                            .onAppear{
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
//                                    self.isShownProgress = false
//                                }
//                            }
//                    }
//                }
//                .onDisappear{
//                    isShownProgress = true
//                }
                
            } label: {
                HStack {
                    Image(systemName: "shield")
                        .font(.system(size:23))
                        .padding(.leading, 2.9)
                        .padding(.trailing, 14)
                    
                    Text("개인 정보 처리방침")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
            
            NavigationLink {
//                ZStack{
//                    MyWebView(urlToLoad: "https://statuesque-cast-fac.notion.site/Third-Party-Notices-141126a372d64957b9d7a81b02f2f3c1")
//                        .navigationTitle(Text("오픈소스 라이선스"))
//                        .navigationBarTitleDisplayMode(.inline)
//                    if isShownProgress == true {
//                        ProgressView()
//                            .onAppear{
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                    self.isShownProgress = false
//                                }
//                            }
//                    }
//                }
//                .onDisappear{
//                    isShownProgress = true
//                }
            } label: {
                HStack {
                    Image(systemName: "network")
                        .font(.system(size:23))
                        .padding(.leading, 2.9)
                        .padding(.trailing, 14)
                    
                    Text("오픈소스 라이선스")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
            
            Button {
                //showAlert.toggle()
            } label: {
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .font(.system(size:20))
                        .padding(.leading, 5.5)
                        .padding(.trailing, 12)
                    
                    Text("로그아웃")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
            }
            .padding(.horizontal)
//            .alert(isPresented: $showAlert) {
//                Alert(title: Text("로그아웃 하시겠습니까?"),
//                      primaryButton: .destructive(
//                        Text("네")
//                      ){
//                          authenticationStore.tokenBool = false
//
//                          authenticationStore.removeToken(tokenArray: userVM.currentUsers?.fcmToken.arrayValue.values ?? [])
//
//                          DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                              if authenticationStore.logInCompanyState == .appleLogIn {
//                                  authenticationStore.appleLogout()
//                              } else if authenticationStore.logInCompanyState == .googleLogIn {
//                                  authenticationStore.googleLogout()
//                              }else {
//                                  authenticationStore.appleLogout()
//                                  authenticationStore.googleLogout()
//                              }
//                          }
//                      },
//                      secondaryButton: .default(
//                        Text("아니오")
//                      ))
//            }
            
            NavigationLink {
               //AccountDetailView(userVM: userVM)
            } label: {
                HStack() {
                    Image(systemName: "person")
                        .font(.system(size: 24))
//                        .padding(.trailing, 10)
//                        .font(.system(size:20))
                        .padding(.leading, 4.5)
                        .padding(.trailing, 12.5)

                    Text("계정 관리")
                        .font(.title3)

                    Spacer()

                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
    }
}



// UIViewRepresentable 프로토콜을 구현하면 스유에서 UIView 사용가능하다 (UIView가 무엇이지 공부하기)
struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    //ui view
    func makeUIView(context: Context) ->  WKWebView {
        
        //unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 인스턴스 생성
        let webView = WKWebView()
        
        // 웹뷰 로드
        webView.load(URLRequest(url: url))
        return webView
    }
    
    //업데이트 ui view -> UIViewRepresentable를 따르기 위해 일단 선언한거 같음 (이 함수 선언부를 지우면 프로토콜을 따르지 않는다고 에러가 나타남 / 추후 더 공부해보기)
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
