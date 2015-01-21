class IssuesController < ApplicationController
  def show

  	#显示内容
  	@issue = Issue.find(params[:id])

  	#显示评论
  	@comments=@issue.comments

  end

  def destroy
  	i=Issue.find(params[:id])
  	i.destroy
  	redirect_to :root
  end

  def new
  	@issue=Issue.new
  end


  def create
  	
  	#render plain: params[:issue].inspect

  	Issue.create(issue_params)

  	redirect_to :root

  end

  def edit

  	@issue=Issue.find(params[:id])
  	
  end

  def update

  	i = Issue.find(params[:id])

  	i.update_attributes(issue_params)

  	redirect_to :root
  	
  end

  private

  def issue_params

  	params.require(:issue).permit(:title, :context)
  	
  end

end
