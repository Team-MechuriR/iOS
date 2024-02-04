//
//  WriteDiaryView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI
import PhotosUI

struct WriteDiaryView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.height
    
    @State private var selectedImages: [PhotosPickerItem] = []
    @State private var selectedImageData: Data?
    @State private var isPresentPopup: Bool = false
    @State private var newDiaryName: String = ""
    @State private var newDiaryContent: String = ""
    
    var body: some View {
        ZStack {
            Color.bgColor.ignoresSafeArea()
            VStack {
                // 탑셀
                HStack {
                    Button {
                        dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.fontColor)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Text("일기쓰기")
                        .font(.cafe2418)
                        .foregroundStyle(Color.fontColor)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    Button {
                        //TODO: 체크마크 구현 미완
                    }label: {
                        Image(systemName: "checkmark")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.fontColor)
                    }
                    .padding()
                    
                } // ~ 탑셀
                .background(Rectangle()
                    .fill(Color.btnColor)
                    .frame(height: 45)
                )
                
                VStack {
                    TextField(text: $newDiaryName, prompt: Text("제목")
                        .font(.cafe2418)
                        .foregroundStyle(Color.emptyFontColor),
                              label: {}) //텍스트필드 내부
                    
                    .padding(.horizontal, 15)
                    .foregroundStyle(Color.fontColor)
                    .font(.cafe2418) //텍스트 썼을 경우에
                    
                    Divider()
                        .frame(height: 2)
                        .background(Color.deviderColor)
                    
                    VStack {
                        TextField(text: $newDiaryContent,
                                  prompt: Text(
                                    "내용을 입력해주세요 (XX자 이내)")
                                    .font(.cafe2415)
                                    .foregroundStyle(Color.emptyFontColor),
                                  axis: .vertical,
                                  label: {})
                        .font(.cafe2415)
                        .foregroundStyle(Color.fontColor)
                        
                        Spacer()
                        
                    }
                    .frame(height: 200)
                    .padding(.horizontal, 15)
                    
                    Divider()
                        .frame(height: 2)
                        .background(Color.deviderColor)
                    
                    HStack {
                        HStack {
                            Image(systemName: "photo")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.fontColor)
                            
                            Text("사진 추가")
                                .font(.cafe2415)
                                .foregroundStyle(Color.emptyFontColor)
                        }
                        
                        Spacer()
                        
                        PhotosPicker(selection: $selectedImages,
                                     matching: .any(of: [.images, .not(.livePhotos)]) ,
                                     photoLibrary: .shared()) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 18, height: 18)
                                .foregroundStyle(Color.fontColor)
                        }
                                     .onChange(of: selectedImages) {
                                         print(selectedImages)
                                     }
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                    
                    Divider()
                        .frame(height: 2)
                        .background(Color.deviderColor)
                }
                .background(.white)
                Spacer()
            }
        }
    }
}

#Preview {
    WriteDiaryView()
}
