class PollsController < ApplicationController
  unloadable

  def index
    @answers = Answer.all
    @polls = Poll.all
  end

  def vote
    poll = Poll.find(params[:id])
    
    Answer.create(:question_id =>poll[:id])
    @answers = Answer.last
    @answers.user_id = User.current.id
    @answers.save
    @answers.vote(params[:answer])
    flash[:notice] = 'Vote saved.'
    redirect_to :action => 'index'
  end
end