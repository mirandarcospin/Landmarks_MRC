//
//  PageView.swift
//  Landmarks_MRC
//
//  Created by Miranda Ramirez Cospin on 11/6/20.
//

import SwiftUI

struct PageView<Page: View>: View {

    @State var currentPage = 0

    var viewControllers: [UIHostingController<Page>]

    init(viewControllers: [UIHostingController<Page>]) {
        self.viewControllers = viewControllers
    }

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static let controllers = features.map { UIHostingController(rootView: FeatureCard(landmark: $0)) }

    static var previews: some View {
             PageView(viewControllers: controllers).aspectRatio(3/2, contentMode: .fit)
    }
}
