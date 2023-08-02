//
//  ExchangeReceipViewController.swift
//  DetailTransferWallet
//
//  Created by Nurlan Seitov on 2/8/23.
//
import UIKit
import SnapKit

class ExchangeReceipViewController: UIViewController {
    
    private lazy var lineOneViewExchange: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var numberTitleReceipLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 24)
        title.textColor = .white
        title.textAlignment = .justified
        title.text = "№1231823"
        return title
    } ()
    
    private lazy var dateReceipLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .justified
        title.text = "16.06.2022"
        return title
    } ()
    
    private lazy var timeReceipLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .justified
        title.text = "12:34"
        return title
    } ()
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.isScrollEnabled = false
        return table
    } ()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Сохранить", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.tintColor = .white
        button.layer.cornerRadius = 17
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(named: "textColorGray")?.cgColor
        
            let image = UIImage(named: "saveBtn1")
            button.setImage(image, for: .normal)
        // Устанавливаем отступ справа для надписи
//           button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
           // Устанавливаем отступ справа для картинки
        let imageWidth = image?.size.width ?? 0
        let screenWidth = UIScreen.main.bounds.width
        let buttonWidth = screenWidth - 20 - imageWidth
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: buttonWidth - 40, bottom: 0, right: 0)

        button.contentHorizontalAlignment = .left
        
        //        button.addTarget(self, action: #selector(showAlertfunc), for: .touchUpInside)
        // button.layer.style.size
        return button
    } ()
    
    private lazy var okButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ok", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.tintColor = .white
        button.backgroundColor = UIColor(named: "main_blue_color")
        button.layer.cornerRadius = 16
        //        button.addTarget(self, action: #selector(showAlertfunc), for: .touchUpInside)
        // button.layer.style.size
        return button
    } ()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Чек"
        if let navigationBar = navigationController?.navigationBar {
               navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
           }
    }
    
    private var checkData: [ExchangeData] = []
    
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
        tableView.register(CustomExchangeReceipTabCell.self, forCellReuseIdentifier: CustomExchangeReceipTabCell.reuseId)
        
    }
    
    private func loadData() {
        
    let exchangeData = ExchangeData(currencySale: "Доллар США", sumCurrencySale: "2 000,00 USD", currencyBuy: "Евро", sumCurrencyBuy: "1 945,00 EUR", exchangeRateUSD: "1 USD = 81,10 с.", exchangeRateEUR: "1 EUR = 76,60 c.")
        checkData.append(exchangeData)
    }
    
    private func setupConstraints() {
        
        view.addSubview(lineOneViewExchange)
        lineOneViewExchange.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(94)
            make.left.right.equalToSuperview().inset(0)
            make.height.equalTo(1)
        }
        
        view.addSubview(numberTitleReceipLabel)
        numberTitleReceipLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(115)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(29)
        }
        
        view.addSubview(dateReceipLabel)
        dateReceipLabel.snp.makeConstraints { make in
            make.top.equalTo(numberTitleReceipLabel.snp.bottom).offset(8)
            make.left.equalToSuperview().inset(20)
            make.width.equalTo(80)
            make.height.equalTo(18)
        }
        
        view.addSubview(timeReceipLabel)
        timeReceipLabel.snp.makeConstraints { make in
            make.top.equalTo(numberTitleReceipLabel.snp.bottom).offset(8)
            make.left.equalTo(dateReceipLabel.snp.right).offset(8)
            make.width.equalTo(41)
            make.height.equalTo(18)
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(dateReceipLabel.snp.bottom).offset(30)
            make.left.right.equalToSuperview().inset(20)
//            make.width.equalTo(335)
            make.height.equalTo(240)
        }
        
        view.addSubview(saveButton)
        saveButton.snp.makeConstraints { make in
            make.top.equalTo(tableView.snp.bottom).offset(186)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(66)
        }
        
        view.addSubview(okButton)
        okButton.snp.makeConstraints { make in
            make.top.equalTo(saveButton.snp.bottom).offset(22)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(64)
        }
    }
}

extension ExchangeReceipViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return checkData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomExchangeReceipTabCell.reuseId,
            for: indexPath) as? CustomExchangeReceipTabCell else {
            return UITableViewCell()
        }
        
        let datum = checkData[indexPath.row]
        cell.display(item: datum)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @objc private func backButtonTapped() {
        // Действие при нажатии кнопки "назад"
        navigationController?.popViewController(animated: true)
    }
}


   
