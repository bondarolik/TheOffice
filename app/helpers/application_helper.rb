# frozen_string_literal: true

module ApplicationHelper
  def navigation_items
    [
      { body: 'Menu Item', href: root_path },
    ]
  end

  def navigation_class(path)
    if current_page?(path)
      "put your class here"
    else
      "non active class here"
    end
  end

  def navigation_area(path)
    current_page?(path) ? "area-current='page'" : "aria-current='false'"
  end
end
