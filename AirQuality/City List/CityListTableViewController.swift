//
//  CityListTableViewController.swift
//  AirQuality
//
//  Created by Amy Cheong on 18/11/18.
//  Copyright © 2018 Amy Cheong. All rights reserved.
//

import UIKit

 class CityListTableViewController: FlowTableViewController<CityListViewModel> {

   private var context = CityListViewModel.DataSourceContext() {
      didSet {
         tableView.reloadData()
      }
   }

   override func isInitialiazed() {
      viewModel.stateChanged = { [weak self] state, context in
         switch state {
         case .ideal:
            if let `context` = context {
               self?.context = context
            }
         default:
            break
         }
      }
   }

   override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      viewModel.fetchDataSource()
      tableView.rowHeight = UITableView.automaticDimension
      tableView.estimatedRowHeight = 200.0
   }

   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: CityListTableViewCell.identifier)
         as? CityListTableViewCell else {
         return UITableViewCell()
      }

      cell.display(context.airQualityArray[indexPath.row])
      return cell
   }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return context.airQualityArray.count
   }
}
