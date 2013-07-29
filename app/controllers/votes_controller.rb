class VotesController < ApplicationController

  def create
    posting = Article.find_by_id(params[:posting_id]) || Comment.find(params[:posting_id])
    current_user.votes.create(:posting => posting, :value => 1)
    flash[:alert] = "Thank you for voting!"
    if posting.class == 'Article'
      redirect_to articles_path
    else 
      redirect_to articles_path(posting.posting_id)
    end
  end

end
