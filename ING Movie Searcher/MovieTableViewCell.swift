//
//  MovieTableViewCell.swift
//  ING Movie Searcher
//
//  Created by Furkan Karakoc on 02.11.2020

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieYear: UILabel!
    @IBOutlet var movieImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    static let identifier = "MovieTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "MovieTableViewCell",
                     bundle: nil)
    }

    func configure(with model: Movie) {
        self.movieTitle.text = model.Title
        self.movieYear.text = model.Year
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.movieImage.image = UIImage(data: data)
        }
    }
    
}
