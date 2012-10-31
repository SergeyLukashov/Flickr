class FlickrController < ApplicationController
  def index
  end
  def search
    FlickRaw.api_key="c70c5df198ffa9363b3e03ecec98ceaf"
    FlickRaw.shared_secret="b8486dbbbb331bae"

    if(params[:query]!="")
      @photos=flickr.photos.search(:tags=>params[:query])
    end

    render ("index")
  end
end
