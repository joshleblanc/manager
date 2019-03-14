module ApplicationHelper
  def nav_item(text, path)
    class_name = 'nav-item'
    class_name << ' active' if current_page? path
    content_tag('li', class: class_name) do
      link_to text, path, class: 'nav-link'
    end
  end
end
