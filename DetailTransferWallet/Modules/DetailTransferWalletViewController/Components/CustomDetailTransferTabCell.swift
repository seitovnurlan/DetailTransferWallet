//
//  CustomTabCell.swift
//  Cash2U
//
//  Created by Nurlan Seitov on 1/8/23.
//

import UIKit
import SnapKit

class CustomDetailTransferTabCell: UITableViewCell {
    
    static let reuseId = String(describing: CustomDetailTransferTabCell.self)
    static let nibName = String(describing: CustomDetailTransferTabCell.self)
    
    
    private lazy var backgroundViewCell: UIView = {
        let backView = UIView()
        backView.alpha = 1
        backView.layer.cornerRadius = 20
        backView.backgroundColor = UIColor(named: "backgroundTable")
        return backView
    }()
    
    private lazy var categoryTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Категория:"
        return title
    } ()
    
    private lazy var categoryLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineOneView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var underCategoryTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Подкатегория:"
        return title
    } ()
    
    private lazy var underCategoryLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineTwoView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var personalBankAccountTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Лицевой счет:"
        return title
    } ()
    
    private lazy var personalBankAccountLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineThreeView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var commentTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Коментарий:"
        return title
    } ()
    
    private lazy var commentLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        return title
    } ()
    
    private lazy var lineFourView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(named: "lineColor")
        lineView.alpha = 1
        return lineView
    }()
    
    private lazy var sumMoneyTitleLabel: UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 15)
        title.textColor = UIColor(named: "textColorGray")
        title.textAlignment = .justified
        title.text = "Сумма:"
        return title
    } ()
    
    private lazy var sumMoneyLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 15)
        title.textColor = .white
        title.textAlignment = .right
        title.text = "1 000,00 с."
        return title
    } ()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
        backgroundColor = .black
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        categoryLabel.text = nil
        underCategoryLabel.text = nil
        personalBankAccountLabel.text = nil
        commentLabel.text = nil
        sumMoneyLabel.text = nil
    }
    
    func setupConstraints() {
        
        addSubview(backgroundViewCell)
        backgroundViewCell.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.left.right.equalToSuperview().inset(0)
//            make.width.equalTo(335)
            make.height.equalTo(235)
        }
        addSubview(categoryTitleLabel)
        categoryTitleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(80)
            make.height.equalTo(19)
        }
        
        addSubview(categoryLabel)
        categoryLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(16)
            make.width.equalTo(180)
            make.height.equalTo(19)
        }
        
        addSubview(lineOneView)
        lineOneView.snp.makeConstraints { make in
            make.top.equalTo(categoryLabel.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(1)
        }
        
        addSubview(underCategoryTitleLabel)
        underCategoryTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineOneView.snp.bottom).offset(12)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(108)
            make.height.equalTo(19)
        }
        
        addSubview(underCategoryLabel)
        underCategoryLabel.snp.makeConstraints { make in
            make.top.equalTo(lineOneView.snp.bottom).offset(12)
            make.right.equalToSuperview().inset(16)
            make.width.equalTo(180)
            make.height.equalTo(19)
        }
        
        addSubview(lineTwoView)
        lineTwoView.snp.makeConstraints { make in
            make.top.equalTo(underCategoryLabel.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(1)
        }
        
        addSubview(personalBankAccountTitleLabel)
        personalBankAccountTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineTwoView.snp.bottom).offset(12)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(106)
            make.height.equalTo(19)
        }
        
        addSubview(personalBankAccountLabel)
        personalBankAccountLabel.snp.makeConstraints { make in
            make.top.equalTo(lineTwoView.snp.bottom).offset(12)
            make.right.equalToSuperview().inset(16)
            make.width.equalTo(180)
            make.height.equalTo(19)
        }
        
        addSubview(lineThreeView)
        lineThreeView.snp.makeConstraints { make in
            make.top.equalTo(personalBankAccountLabel.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(1)
        }
        
        addSubview(commentTitleLabel)
        commentTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineThreeView.snp.bottom).offset(12)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(94)
            make.height.equalTo(19)
        }
        
        addSubview(commentLabel)
        commentLabel.snp.makeConstraints { make in
            make.top.equalTo(lineThreeView.snp.bottom).offset(12)
            make.right.equalToSuperview().inset(16)
            make.width.equalTo(180)
            make.height.equalTo(19)
        }
        
        addSubview(lineFourView)
        lineFourView.snp.makeConstraints { make in
            make.top.equalTo(commentLabel.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(1)
        }
        
        addSubview(sumMoneyTitleLabel)
        sumMoneyTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(lineFourView.snp.bottom).offset(12)
            make.left.equalToSuperview().inset(16)
            make.width.equalTo(55)
            make.height.equalTo(19)
        }
        
        addSubview(sumMoneyLabel)
        sumMoneyLabel.snp.makeConstraints { make in
            make.top.equalTo(lineFourView.snp.bottom).offset(12)
            make.right.equalToSuperview().inset(16)
            make.width.equalTo(180)
            make.height.equalTo(19)
        }
}


        func display(item: Data) {
            categoryLabel.text = item.categoryTitle
            underCategoryLabel.text = item.underCategory
            personalBankAccountLabel.text = item.personalAccount
            commentLabel.text = item.comment
            sumMoneyLabel.text = item.sum
        }
}

struct Data {
    let categoryTitle: String
    let underCategory: String
    let personalAccount: String
    let comment: String
    let sum: String
}
