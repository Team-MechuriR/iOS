//
//  writeLetterView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//
import SwiftUI
import PhotosUI

enum SelectMonth: String {
    case oneMonth = "1개월후"
    case sixMonth = "6개월후"
    case oneYear = "1년후"
}

struct WriteLetterView: View {
    @State private var selectedImages: [PhotosPickerItem] = []
    @State private var selectedImageData: Data?
    @State private var isPresentPopup: Bool = false
    @State private var newLetterName: String = ""
    @State private var newLetterContent: String = ""
    @State private var selectMonth: SelectMonth = .sixMonth
    
    @Environment(\.dismiss) private var dismiss
    
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
                    
                    Text("편지 쓰기")
                        .font(.cafe2418)
                        .foregroundStyle(Color.fontColor)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    Button {
                        isPresentPopup.toggle()
                    }label: {
                        Image(systemName: "paperplane")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.fontColor)
                    }
                    .padding()
                    
                } // ~탑셀
                .background(Rectangle()
                    .fill(Color.btnColor)
                    .frame(height: 45)
                )
                VStack {
                    TextField(text: $newLetterName, prompt: Text("제목")
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
                        TextField(text: $newLetterContent,
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
                    
                    HStack {
                        HStack {
                            Image(systemName: "calendar.badge.plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.fontColor)
                            Text("전달 시기")
                                .font(.cafe2415)
                                .foregroundStyle(Color.fontColor)
                                .bold()
                        }
                        Spacer()
                        // circle
                        // circle.inset.filled
                        HStack {
                            Image(systemName: selectMonth == .oneMonth ? "circle.inset.filled" : "circle")
                                .resizable()
                                .frame(width: 15, height: 15)
                            Text(SelectMonth.oneMonth.rawValue)
                                .font(.cafe2415)
                        }
                        .foregroundStyle(selectMonth == .oneMonth ? Color.fontColor : Color.emptyFontColor)
                        .onTapGesture {
                            selectMonth = .oneMonth
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: selectMonth == .sixMonth ? "circle.inset.filled" : "circle")
                                .resizable()
                                .frame(width: 15, height: 15)
                            Text(SelectMonth.sixMonth.rawValue)
                                .font(.cafe2415)
                        }
                        .foregroundStyle(selectMonth == .sixMonth ? Color.fontColor : Color.emptyFontColor)
                        .onTapGesture {
                            selectMonth = .sixMonth
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: selectMonth == .oneYear ? "circle.inset.filled" : "circle")
                                .resizable()
                                .frame(width: 15, height: 15)
                            Text(SelectMonth.oneYear.rawValue)
                                .font(.cafe2415)
                        }
                        .foregroundStyle(selectMonth == .oneYear ? Color.fontColor : Color.emptyFontColor)
                        .onTapGesture {
                            selectMonth = .oneYear
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                    
                    Divider()
                        .frame(height: 2)
                        .background(Color.deviderColor)
                }
                .background(Color.white)
                Spacer()
            }
        }
    }
}

#Preview {
    WriteLetterView()
}
