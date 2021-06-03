//
//  InfoView.swift
//  produce-codes
//
//  Created by Ryan Schreiber on 5/21/21.
//

import SwiftUI

struct InfoView: View {
    
    @Binding var currentNavigation:String;
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
            
            VStack {
                
                ScreenTitleView(text: "Extra Information")
                    .padding(.top)
                                
                Divider()
                    .padding(.vertical)
                
                ScrollView {
                    VStack {
                        
                        HStack {
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: marginWidth-10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            URLImageView(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/USDA_organic_seal.svg/480px-USDA_organic_seal.svg.png")
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fill)
                            
                            Text("Organic Produce")
                                .foregroundColor(.black)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .font(.custom(font_semibold, size: 20))
                                .padding(.leading)
                                .frame(width: contentWidth, height: 30, alignment: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                        }
                        

                        Text("For all organic produce, just put a 9 in front of the code. For example, bananas are 4011 and organic bananas are 94011.")
                            .foregroundColor(.black)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom(font_regular, size: 16))
                            .frame(width: contentWidth, height: 75, alignment: .leading)
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 10, alignment: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        HStack {
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: marginWidth-10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            URLImageView(url: "https://i0.wp.com/aaccommunity.net/wp-content/uploads/2020/10/AACSLPEVALS.png?resize=448%2C448&ssl=1")
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fill)
                            
                            Text("Data Collection")
                                .foregroundColor(.black)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .font(.custom(font_semibold, size: 20))
                                .padding(.leading)
                                .frame(width: contentWidth, height: 30, alignment: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                        }
                        

                        Text("We don't collect any data on our users with this app.")
                            .foregroundColor(.black)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.custom(font_regular, size: 16))
                            .frame(width: contentWidth, height: 75, alignment: .leading)
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 10, alignment: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                    }
                }
            }
            
            
            
            VStack {
                Spacer()
                Rectangle()
                    .frame(width: windowWidth+5, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
                    .foregroundColor(.white)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            }
            
            VStack {
                Spacer()
                NavigationBarView(currentSelection: $currentNavigation)
            }
            
        }
        
    }
}


//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

