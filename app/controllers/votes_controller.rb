class VotesController < ApplicationController
 def create
    topic = Topic.find(params[:topic_id])
    #another option possible here
    #vote = topic.votes.create
    # no.save! after create
    vote = topic.votes.build
    vote.save!
    redirect_to(topics_path)
  end
end

