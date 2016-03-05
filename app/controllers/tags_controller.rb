class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
	    destroyed_tag = Tag.find(params[:id]).name

	    Tag.find(params[:id]).destroy

	    flash.notice = "Tag '#{destroyed_tag}' Deleted!"

	    redirect_to tags_path
  	end
end
