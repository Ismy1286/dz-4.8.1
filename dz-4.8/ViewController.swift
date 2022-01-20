import UIKit
import SnapKit


class News: Codable {
    var news: [NewsModel] = []
    var page: Int? = nil
}

class NewsModel: Codable {
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
}


class ViewController: UIViewController {
    override func viewDidLoad() {
        
        let json = """
{
  "news" : [
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL"
    }
  ],
  "page": 10
}
"""
        
        let model = try! JSONDecoder().decode(News.self, from: Data(json.utf8))
        dump(model)
    }
}
