//
//  DetailTransferWallet.swift
//  Cash2U
//
//  Created by Nurlan Seitov on 1/8/23.
//

import UIKit
import SnapKit

class DetailTransferWalletViewController: UIViewController {
    
    private lazy var headerTitle: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 24)
        title.textColor = .white
        title.textAlignment = .justified
        title.text = "Детали перевода"
        return title
    } ()
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.isScrollEnabled = false
        table.layer.cornerRadius = 20
        return table
    } ()
    
    private lazy var paymentLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Комиссия 0,01 %:"
        return title
    } ()
    
    private lazy var paymentSumLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .justified
        title.text = "1,00 c."
        return title
    } ()
    
    private lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var totalLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = .blue
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Итого:"
        return title
    } ()
    
    private lazy var totalSumLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .justified
        title.text = "1001,00 с."
        return title
    } ()
    
    private lazy var confirmPaymentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Подтвердить оплату", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.tintColor = .white
        button.backgroundColor = UIColor(named: "main_blue_color")
        button.layer.cornerRadius = 16
                button.addTarget(self, action: #selector(confirmPaymentButtonTapped), for: .touchUpInside)
        
        return button
    } () //showAlertfunc
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Детали оплаты"
        if let navigationBar = navigationController?.navigationBar {
               navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
           }
    }
    
    private var walletData: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let backButton = UIBarButtonItem()
//        backButton.image = UIImage(named: "Back")
      
        let backButtonImage = UIImage(named: "Back")?.withRenderingMode(.alwaysTemplate)
        let backButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(backButtonTapped))
        backButton.tintColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.leftBarButtonItem = backButton
        view.backgroundColor = .black
        
//        if let backButtonImage = UIImage(named: "Back") {
//            let desiredSize = CGSize(width: 24, height: 24)
//            let resizedImage = UIGraphicsImageRenderer(size: desiredSize).image { _ in
//                backButtonImage.draw(in: CGRect(origin: .zero, size: desiredSize))
//            }
//            let backButton = UIBarButtonItem(image: resizedImage.withRenderingMode(.alwaysTemplate), style: .plain, target: self, action: #selector(backButtonTapped))
//            backButton.tintColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//            navigationItem.leftBarButtonItem = backButton
//        }

        
        setuptableView()
        setupConstraints()
        loadData()
    }
    
    private func setuptableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomDetailTransferTabCell.self, forCellReuseIdentifier: CustomDetailTransferTabCell.reuseId)
        
    }
    
    private func loadData() {
        
    let data = Data(categoryTitle: "Коммунальные услуги", underCategory: "Вода", personalAccount: "0-00000000000", comment: "За холодную воду", sum: "1 000,00 с.")
        walletData.append(data)
    }
    
    private func setupConstraints() {
        
        view.addSubview(headerTitle)
        headerTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(115)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(29)
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(headerTitle.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(20)
//            make.width.equalTo(335)
            make.height.equalTo(235)
        }
        
        view.addSubview(paymentLabel)
        paymentLabel.snp.makeConstraints { make in
            make.top.equalTo(tableView.snp.bottom).offset(195)
            make.left.equalToSuperview().inset(20)
            make.height.equalTo(18)
        }
        
        view.addSubview(paymentSumLabel)
        paymentSumLabel.snp.makeConstraints { make in
            make.top.equalTo(tableView.snp.bottom).offset(195)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(18)
        }
        
        view.addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.top.equalTo(paymentLabel.snp.bottom).offset(19)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(1)
        }
        
        view.addSubview(totalLabel)
        totalLabel.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(15)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(18)
        }
        
        view.addSubview(totalSumLabel)
        totalSumLabel.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(15)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(18)
        }
        
        view.addSubview(confirmPaymentButton)
        confirmPaymentButton.snp.makeConstraints { make in
            make.top.equalTo(totalLabel.snp.bottom).offset(34)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(64)
        }
    }
}

extension DetailTransferWalletViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return walletData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomDetailTransferTabCell.reuseId,
            for: indexPath) as? CustomDetailTransferTabCell else {
            return UITableViewCell()
        }
        
        let datum = walletData[indexPath.row]
        cell.display(item: datum)
    
        return cell
    }
    
//    cell.idLabel.text = datum.id
//    cell.nameLabel.text = datum.name
//    cell.slugLabel.text = datum.slug
//    cell.abbrLabel.text = datum.abbr
//    cell.logoImageView.image = UIImage(named: datum.logos.light)
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 235
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @objc private func backButtonTapped() {
        // Действие при нажатии кнопки "назад"
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func confirmPaymentButtonTapped() {
        
        navigationController?.pushViewController(ExchangeReceipViewController(), animated: false)
    }
}


   
