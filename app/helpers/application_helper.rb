module ApplicationHelper
  def title_dom(title)
    content_tag :h1, title, class: 'my-4 fs-3'
  end

  def back_link_dom(text, href)
    content_tag :a, t('general.to_back', text:), href:, class: 'btn btn-outline-dark'
  end
end
