class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to @apartment, notice: 'Apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment }
      else
        format.html { render :edit }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
def update
	respond_to do |format|
		if @apartment.update(apartment_params)
			format.html { redirect_to @apartment, notice: 'Apartment was successfully updated.' }
			format.json { render :show, status: :ok, location: @apartment }
		else
			format.html { render :edit }
			format.json { render json: @apartment.errors, status: :unprocessable_entity }
		end
	end
end
