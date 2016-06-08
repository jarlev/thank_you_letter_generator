class BodiesController < ApplicationController

	def new
		@body = Body.new
	end

	def create
		@body = Body.new(body_params)
		@body.save!
		flash[:success] = "Body created successfully"
		@body = @body.id
		redirect_to new_letter_path
	end

	def destroy
		@body = Body.find params[:id]
  		@body.destroy!
  		redirect_to new_letter_path
	end

	private

	def body_params
  		params.require(:body).permit(:content, :name, :user_id)
	end

end
