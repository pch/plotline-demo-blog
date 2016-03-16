class PostPresenter < Plotline::EntryPresenter
  def photoset_item_html(img, src, alt, attrs, image_attrs)
    thumb = thumbnail_url(src, width: 1000)
    image_attrs[:data].merge!(src: thumb)

    content_tag(:figure, attrs) do
      concat(
        link_to(src) do
          image_tag("placeholder.gif", {alt: alt}.merge(image_attrs))
        end
      )
      concat content_tag(:figcaption, alt)
    end
  end

  def single_image_html(src:, alt:, attrs:)
    content_tag(:figure, attrs) do
      concat image_tag(thumbnail_url(src, width: 500), alt: alt)
      concat content_tag(:figcaption, alt)
    end
  end

  def thumbnail_url(src, attrs)
    # TODO: introduce thumbnailing service
    src
  end
end
