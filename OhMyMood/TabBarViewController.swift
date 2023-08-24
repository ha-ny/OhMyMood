//
//  TabBarViewController.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import UIKit
import SnapKit

class TabBarViewController: UIViewController {
    
    let tabBar = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tabBar.view)
        tabBar.view.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        let addView = AddViewController()
        addView.tabBarItem = UITabBarItem(title: "작성하기", image: UIImage(systemName: "pencil.circle"), tag: 0)
        
        let chartView = ChartViewController()
        chartView.tabBarItem = UITabBarItem(title: "통계보기", image: UIImage(systemName: "chart.bar"), tag: 1)
        
        tabBar.viewControllers = [addView, chartView]
    }
}

