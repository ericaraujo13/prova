class SearchController < ApplicationController
  def search 
    @results = Municipe.search(params[:search])
    @results = Municipe.search("*") if params[:search].blank?

    render turbo_stream:
      turbo_stream.update('municipes',
                           partial: 'municipes/municipe',
                           locals: { municipe: @results })
  end
end