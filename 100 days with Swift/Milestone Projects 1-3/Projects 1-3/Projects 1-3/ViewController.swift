//
//  ViewController.swift
//  Projects 1-3
//
//  Created by Evgenii Kolgin on 18.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var countries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        getImages()
    }

    private func getImages() {
        let fm = FileManager.default
        let path = Bundle.main.paths(forResourcesOfType: "png", inDirectory: "Content")
        print(path)
//        do {
//            let items = try fm.
//            for item in items {
//                print(item)
////                if item. {
////                    countries.append(item)
////                }
//            }
//        } catch {
//            print("error")
//        }
//        print(countries)
    }
    
//    private func getImages() {
//        let fm = FileManager.default
//        let path = Bundle.main.resourcePath!
//
//        do {
//            let items = try fm.contentsOfDirectory(atPath: path)
//            for item in items {
//                if item.hasPrefix("nssl") {
//                    pictures.append(item)
//                }
//            }
//        } catch {
//            print("error")
//        }
//        pictures.sort()
//    }

    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var configuration = cell.defaultContentConfiguration()
        configuration.text = "Hello"
        cell.contentConfiguration = configuration
        return cell
    }
    
    
}
