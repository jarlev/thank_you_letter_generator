class GreetingsController < ApplicationController

	def new
		@greeting = Greeting.new
	end

	def create
		@greeting = Greeting.new(greeting_params)
		@greeting.save!
		flash[:success] = "Greeting created successfully"
		@greeting = @greeting.id
		redirect_to new_letter_path
	end

	def destroy
		@greeting = Greeting.find params[:id]
  		@greeting.destroy!
  		redirect_to new_letter_path
	end

	private

	def greeting_params
  		params.require(:greeting).permit(:content, :name, :user_id)
  	end

end
