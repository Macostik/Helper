//
//  CardViewModel.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var isPresented = false
    @Published var animateView = false
    @Published var animateContent = false
    @Published var cardDetailOffset = CGFloat.zero
    @Published var selectedCard: Card?
}

extension CardViewModel {
    var cardList: [Card] {
        [Card(id: "drink", name: "Drinks", tagLine: "Bubbles, bubbles"),
        Card(id: "starter", name: "Starters", tagLine: "Whetting your appetite"),
        Card(id: "main", name: "Main Course", tagLine: "Gaining force"),
        Card(id: "dessert", name: "Dessert", tagLine: "Why not?"),
        Card(id: "coffee", name: "Coffee", tagLine: "Time to wake up"),
        Card(id: "wine", name: "Wines", tagLine: "Let's have a toast!")]
    }
}

let loremIpsum = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut mauris ipsum, ultrices nec aliquam a, bibendum in sem.
\n\nPraesent ac neque sed risus auctor consectetur.
Curabitur dui ex, suscipit ut sapien at, fermentum ultricies nisi.
Praesent nec dignissim arcu. Praesent euismod lectus nec nunc vehicula,
et ultrices metus volutpat.\n\nNunc libero odio, fringilla at rutrum id,
maximus vitae urna. Nulla lobortis erat a ullamcorper rhoncus.
 Aliquam a ante mattis, mollis libero eget, lacinia nulla.
\n\nMorbi eu lacus mauris. Sed arcu erat, porttitor sed massa quis,
 varius aliquet lorem. Proin at lobortis purus. Nam libero enim,
 rutrum laoreet malesuada eu, vulputate sit amet odio.
 Aliquam ut ultrices dolor. Aenean sed mi quis augue egestas scelerisque.
Nulla vel diam fringilla, tempor ex ut, elementum sapien.
Vestibulum laoreet augue ut nisl porta posuere.
\n\nFusce scelerisque massa sit amet ante ultricies,
sit amet accumsan nibh sodales. Maecenas ac ligula urna.
 Maecenas sollicitudin elit elementum, hendrerit velit
sit amet, commodo nulla. Phasellus semper rutrum erat sed feugiat.
 Integer vel purus a velit semper ullamcorper ut vitae quam.
Quisque nec odio eu lacus eleifend tincidunt eu nec velit.
 Donec scelerisque facilisis purus, at eleifend mi hendrerit id.
Nullam consequat commodo quam, eu auctor lectus suscipit sed.
Etiam efficitur, augue vel imperdiet mollis, augue ante efficitur mi,
 ac porttitor lorem elit eget sapien.
\n\nCras sit amet augue quis nulla facilisis placerat ut at eros.
 Duis a suscipit justo. Suspendisse potenti.
Cras mattis, erat nec sodales blandit, sem ex faucibus mi,
 sit amet tempor massa justo eu dolor.
"""
