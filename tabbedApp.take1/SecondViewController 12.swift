//
//  SecondViewController.swift
//  tabbedApp.take1
//
//  Created by Bella on 8/12/20.
//  Copyright © 2020 Isabella Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var searchController: UISearchController!
    
    var originalDataSource: [String] = []
    var currentDataSource: [String] = []
    
    @IBOutlet weak var searchContainerView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        //searchContainerView.addSubView(view:Sub)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        
        //Test Array Items
        
        addProductToDataSource(productCount: 25, product: "Macbook Pro 15")
        addProductToDataSource(productCount: 20, product: "Macbook Air")
        addProductToDataSource(productCount: 30, product: "Macbook")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentDataSource = originalDataSource
        
        // Do any additional setup after loading the view.
    }
    
    func addProductToDataSource(productCount: Int, product: String)
    {
        for index in 1...productCount{
            originalDataSource.append("\(product)# \(index)")
        }
    }
    func filterCurrentDataSource(searchTerm: String){
        if searchTerm.count > 0 {
            currentDataSource = originalDataSource
            
            let filteredResults = currentDataSource.filter{ $0.replacingOccurrences(of:" ", with: "").lowercased().contains(searchTerm.replacingOccurrences(of:" ", with: "").lowercased())
                
            }
            
            currentDataSource = filteredResults
            tableView.reloadData()
        }
    }
    
    func restoreCurrentDataSource(){
        currentDataSource = originalDataSource
        tableView.reloadData()
    }

    @IBAction func restoreData(_ sender: Any) {
        restoreCurrentDataSource()
    }
}

extension SecondViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text
        {
            filterCurrentDataSource(searchTerm: searchText)
        }
    }
}

extension SecondViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        
        searchController.isActive = false
        
        if let searchText = searchBar.text{
            filterCurrentDataSource(searchTerm: searchText)
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar){
        searchController.isActive = false
        if let searchText = searchBar.text, !searchText.isEmpty {
            restoreCurrentDataSource()
        }
    }
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let alertController = UIAlertController(title: "Selection", message: "Selected: \(currentDataSource[indexPath.row])", preferredStyle: .alert)
        
        searchController.isActive = false
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return currentDataSource.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = currentDataSource[indexPath.row]
            return cell
        }
    }
