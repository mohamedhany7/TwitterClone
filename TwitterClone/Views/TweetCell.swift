//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Mohamed Hany on 12/09/2023.
//

import UIKit

protocol TweetTableViewCellDelegate: AnyObject {
    func tweetTableViewCellDidTapReply()
    func tweetTableViewCellDidTapRetweet()
    func tweetTableViewCellDidTapLike()
}

class TweetCell: UITableViewCell {
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var tweetBody: UILabel!
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var userDisplayImage: UIImageView!
    
    weak var delegate: TweetTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userDisplayImage.layer.cornerRadius = 25
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func didSelectReply(_ sender: UIButton) {
        delegate?.tweetTableViewCellDidTapReply()
    }
    
    @IBAction func didSelectRetweet(_ sender: UIButton) {
        delegate?.tweetTableViewCellDidTapRetweet()
    }
    
    @IBAction func didSelectLike(_ sender: UIButton) {
        delegate?.tweetTableViewCellDidTapLike()
    }
}
