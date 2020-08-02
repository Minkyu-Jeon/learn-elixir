defmodule UrlShortenerWeb.CMS.PageView do
  use UrlShortenerWeb, :view

  alias UrlShortener.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
