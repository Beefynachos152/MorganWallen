class AlbumsController < ApplicationController
    def index
        sort_by = params[:sort_by] || 'name'
        order = params[:order] || 'asc'
        @albums = Album.all.uniq 
    
        if params[:search].present?
          @albums = Album.where('name LIKE ?', "%#{params[:search]}%").order("#{sort_by} #{order}")
        else
          @albums = Album.all.order("#{sort_by} #{order}")
        end
    end
    
    def show
        @album = Album.find(params[:id])
    end
end
