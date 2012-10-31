module ApplicationHelper
  def make_flickr_url(p, size='t')
    "http://farm#{p.farm}.static.flickr.com/"<<
      "#{p.server}/#{p.id}_#{p.secret}_#{size}.jpg"
  end
end
