class ArtPostsController < ApplicationController
  before_action :set_art_post, only: [:show, :update, :destroy]
  # skip_before_action :authorized, only: [:index, :show]

  # GET /art_posts
  def index
    @art_posts = ArtPost.all

    render json: @art_posts
  end

  # GET /art_posts/1
  def show
    render json: @art_post
  end

  # POST /art_posts
  def create
    @art_post = ArtPost.new(art_post_params)
    @art_post.image.attach(params[:image])
    @image_url = rails_blob_path(@art_post.image)
    @art_post.url = @image_url
    if @art_post.save
      render json: @art_post
    else
      render json: @art_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /art_posts/1
  def update
    if @art_post.update(art_post_params)
      render json: @art_post
    else
      render json: @art_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /art_posts/1
  def destroy
    @art_post.destroy
    render json: {message: "Art Post Successfully Deleted"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_post
      @art_post = ArtPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_post_params
      params.require(:art_post).permit(:title, :image, :price, :description, :sold, :user_id)
    end
end
