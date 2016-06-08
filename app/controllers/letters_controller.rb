class LettersController < ApplicationController

	before_action :authenticate_user!

  def index
  	@letters = Letter.all
  end

  def new
  	@letter = Letter.new
  end

  def create
  	@letter = Letter.new(letter_params)
  	@letter.user = current_user
		@letter.update(user: current_user)
	redirect_to action: :index
  end

  def show
  	@letter = Letter.find params[:id]
  end

  def destroy
  	@letter = Letter.find params[:id]
  	@letter.destroy!
  	redirect_to letters_path
  end

  private

  def letter_params
  	params.require(:letter).permit(:greeting_id, :body_id, :closing_id, :to_name, :user_id, :letter_type)
  end

  def load_and_render_show
	load_show_content
	redirect_to action: :show
  end

  def load_show_content
	@greeting = Greeting.all.user
	@body = Body.all.user
	@closing = Closing.all.user
  end

end
