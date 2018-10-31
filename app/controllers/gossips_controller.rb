class GossipsController < ApplicationController
  def show
  	@gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to index_path
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
  	@gossip = Gossip.find(params[:id])
  	gossip_params = params.require(:gossip).permit(:author, :content)
  	@gossip.update(gossip_params)
  	redirect_to @gossip
  end

  def new
  	@gossip = Gossip.new
  end

  def create
  	gossip = Gossip.create(post_params)
  	redirect_to gossip_path(gossip.id)
  end

  private 

  def post_params
  	params.require(:gossip).permit(:author, :content)
  end

end
