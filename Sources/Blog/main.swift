import Foundation
import Publish
import Plot

struct Blog: Website {
  enum SectionID: String, WebsiteSectionID {
    case posts
  }

  struct ItemMetadata: WebsiteItemMetadata {}

  var url = URL(string: "https://blog.apriakhin.ru")!
  var name = "Антон Пряхин"
  var description = "Блог о iOS разработке"
  var language: Language { .russian }
  var imagePath: Path? { Path("/images/avatar.jpg") }
}

try Blog().publish(
  withTheme: .foundation,
  deployedUsing: .gitHub("apriakhin/blog", branch: "gh-pages")
)
