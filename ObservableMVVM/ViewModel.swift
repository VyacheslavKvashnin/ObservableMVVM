//
//  ViewModel.swift
//  ObservableMVVM
//
//  Created by Вячеслав Квашнин on 15.08.2022.
//

class ViewModel {
    
    var name: Observable<String> = Observable(value: "")
    
    init(name: String = "Name") {
        self.name.value = name
    }
    
    func showData() {
        self.name.value = "Some"
    }
}
