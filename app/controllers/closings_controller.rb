class ClosingsController < ApplicationController

	def new
		@closing = Closing.new
	end

	def create
		@closing = Closing.new(closing_params)
		@closing.save!
		flash[:success] = "Closing created successfully"
		@closing= @closing.id
		redirect_to new_letter_path
	end

	def destroy
		@closing = Closing.find params[:id]
  		@closing.destroy!
  		redirect_to new_letter_path
	end

	private

	def closing_params
  		params.require(:closing).permit(:content, :name, :user_id)
  	end

end
