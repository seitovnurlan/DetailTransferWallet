//
//  CustomExchangeReceipTabCell.swift
//  DetailTransferWallet
//
//  Created by Nurlan Seitov on 2/8/23.
//
import UIKit
import SnapKit

class CustomExchangeReceipTabCell: UITableViewCell {
    
    static let reuseId = String(describing: CustomExchangeReceipTabCell.self)
    static let nibName = String(describing: CustomExchangeReceipTabCell.self)
    
    private lazy var currencySaleTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Валюта продажи:"
        return title
    } ()
    
    private lazy var currencySaleLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineOneViewCustom: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var sumCurrencyTitleSaleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Сумма:"
        return title
    } ()
    
    private lazy var sumCurrencySaleLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineTwoViewCustom: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var currencyTitleBuyLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Валюта покупки:"
        return title
    } ()
    
    private lazy var currencyBuyLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineThreeViewCustom: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var sumCurrencyBuyTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Сумма:"
        return title
    } ()
    
    private lazy var sumCurrencyBuyLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineFourViewCustom: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var exchangeRateUSDTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Курс:"
        return title
    } ()
    
    private lazy var exchangeRateUSDLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var exchangeRateEURLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
        backgroundColor = .black
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        currencySaleLabel.text = nil
        sumCurrencySaleLabel.text = nil
        currencyBuyLabel.text = nil
        sumCurrencyBuyLabel.text = nil
        exchangeRateUSDLabel.text = nil
        exchangeRateEURLabel.text = nil
    }
    
    func setupConstraints() {
        
        addSubview(currencySaleTitleLabel)
        currencySaleTitleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.left.equalToSuperview().inset(0)
            make.width.equalTo(126)
            make.height.equalTo(19)
        }
        addSubview(currencySaleLabel)
        currencySaleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
            make.width.equalTo(140)
            make.height.equalTo(19)
        }
        
        addSubview(lineOneViewCustom)
        lineOneViewCustom.snp.makeConstraints { make in
            make.top.equalTo(currencySaleLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(0)
            make.height.equalTo(1)
        }
        
        addSubview(sumCurrencyTitleSaleLabel)
        sumCurrencyTitleSaleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineOneViewCustom.snp.bottom).offset(16)
            make.left.equalToSuperview().inset(0)
            make.width.equalTo(55)
            make.height.equalTo(19)
        }
        
        addSubview(sumCurrencySaleLabel)
        sumCurrencySaleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineOneViewCustom.snp.bottom).offset(16)
            make.right.equalToSuperview().inset(0)
            make.width.equalTo(140)
            make.height.equalTo(19)
        }
        
        addSubview(lineTwoViewCustom)
        lineTwoViewCustom.snp.makeConstraints { make in
            make.top.equalTo(sumCurrencySaleLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(0)
            make.height.equalTo(1)
        }
        
        addSubview(currencyTitleBuyLabel)
        currencyTitleBuyLabel.snp.makeConstraints { make in
            make.top.equalTo(lineTwoViewCustom.snp.bottom).offset(16)
            make.left.equalToSuperview().inset(0)
            make.width.equalTo(120)
            make.height.equalTo(19)
        }
        
        addSubview(currencyBuyLabel)
        currencyBuyLabel.snp.makeConstraints { make in
            make.top.equalTo(lineTwoViewCustom.snp.bottom).offset(16)
            make.right.equalToSuperview().inset(0)
            make.width.equalTo(140)
            make.height.equalTo(19)
        }
        
        addSubview(lineThreeViewCustom)
        lineThreeViewCustom.snp.makeConstraints { make in
            make.top.equalTo(currencyBuyLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(0)
            make.height.equalTo(1)
        }
        
        addSubview(sumCurrencyBuyTitleLabel)
        sumCurrencyBuyTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineThreeViewCustom.snp.bottom).offset(16)
            make.left.equalToSuperview().inset(0)
            make.width.equalTo(55)
            make.height.equalTo(19)
        }
        
        addSubview(sumCurrencyBuyLabel)
        sumCurrencyBuyLabel.snp.makeConstraints { make in
            make.top.equalTo(lineThreeViewCustom.snp.bottom).offset(16)
            make.right.equalToSuperview().inset(0)
            make.width.equalTo(140)
            make.height.equalTo(19)
        }
        
        addSubview(lineFourViewCustom)
        lineFourViewCustom.snp.makeConstraints { make in
            make.top.equalTo(sumCurrencyBuyLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(0)
            make.height.equalTo(1)
        }
        
        addSubview(exchangeRateUSDTitleLabel)
        exchangeRateUSDTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineFourViewCustom.snp.bottom).offset(16)
            make.left.equalToSuperview().inset(0)
            make.width.equalTo(40)
            make.height.equalTo(19)
        }
        
        addSubview(exchangeRateUSDLabel)
        exchangeRateUSDLabel.snp.makeConstraints { make in
            make.top.equalTo(lineFourViewCustom.snp.bottom).offset(6)
            make.right.equalToSuperview().inset(0)
            make.width.equalTo(140)
            make.height.equalTo(19)
        }
        
        addSubview(exchangeRateEURLabel)
        exchangeRateEURLabel.snp.makeConstraints { make in
            make.top.equalTo(exchangeRateUSDLabel.snp.bottom).offset(6)
            make.right.equalToSuperview().inset(0)
            make.width.equalTo(140)
            make.height.equalTo(19)
        }
    }
        func display(item: ExchangeData) {
            currencySaleLabel.text = item.currencySale
            sumCurrencySaleLabel.text = item.sumCurrencySale
            currencyBuyLabel.text = item.currencyBuy
            sumCurrencyBuyLabel.text = item.sumCurrencyBuy
            exchangeRateUSDLabel.text = item.exchangeRateUSD
            exchangeRateEURLabel.text = item.exchangeRateEUR
        }
    }

    struct ExchangeData {
        let currencySale: String
        let sumCurrencySale: String
        let currencyBuy: String
        let sumCurrencyBuy: String
        let exchangeRateUSD: String
        let exchangeRateEUR: String
    }
