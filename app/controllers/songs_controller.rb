class SongsController < ApplicationController
    before_action :set_album
    def index
        @album = Album.find(params[:album_id])
        @songs = @album.songs
      end
    
      def show
        @song = Song.find(params[:id])
      end

      def set_album
        @album = Album.find_by(id: params[:album_id])
      end
end
