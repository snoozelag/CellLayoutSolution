//
//  ViewController.swift
//  CellLayoutSolution
//
//  Created by teruto.yamasaki on 2022/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            // エラーが出るセル
            let cell = tableView.dequeueReusableCell(withIdentifier: "NGCell1", for: indexPath)
            return cell
        case 1:
            // OKセル。中身のビューのheightの制約の優先度を750に変更した
            let cell = tableView.dequeueReusableCell(withIdentifier: "OKCell1", for: indexPath)
            return cell
        case 2:
            // OKセル。中身のビューをintrinsicContentSizeをoverrideしたカスタムクラスに変更した
            let cell = tableView.dequeueReusableCell(withIdentifier: "OKCell2", for: indexPath)
            return cell
        case 3:
            // OKセル。コンテナにあたるビューのbottomマージンの制約の優先度を750に変更した
            let cell = tableView.dequeueReusableCell(withIdentifier: "OKCell3", for: indexPath)
            return cell
        case 4:
            // OKセル。中身のビューをUILabel(intrinsicContentSizeによる高さの解決)に変更した
            let cell = tableView.dequeueReusableCell(withIdentifier: "OKCell4", for: indexPath)
            return cell
        default:
            preconditionFailure()
        }
    }
}
