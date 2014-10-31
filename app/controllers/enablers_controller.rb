class EnablersController < ApplicationController

	def index
		@enablers = Enabler.all
	end

	def show
		@enabler = Enabler.find(params[:id])
	end

	def new
		@enabler = Enabler.new
	end

	def create
		@enabler = Enabler.new(params.require(:enabler).permit(
			:prefix, 
			:firstname,
			:lastname, 
			:jobtitle, 
			:org, 
			:email, 
			:altemail, 
			:enabler_type, 
			:mobiletel, 
			:officetel, 
			:address_street, 
			:address_city, 
			:address_state, 
			:address_zip, 
			:major_deals, 
			:notes
			))
		if @enabler.save
			redirect_to enablers_path
		else
			render 'new'
		end
	end

	def edit
		@enabler = Enabler.find(params[:id])
	end

	def update
		@enabler = Enabler.find(params[:id])
		if @enabler.update_attributes(params.require(:enabler).permit(
			:prefix, 
			:firstname,
			:lastname, 
			:jobtitle, 
			:org, 
			:email, 
			:altemail, 
			:enabler_type, 
			:mobiletel, 
			:officetel, 
			:address_street, 
			:address_city, 
			:address_state, 
			:address_zip, 
			:major_deals, 
			:notes
			))
			redirect_to enablers_path
		else
			render 'edit'
		end
	end

	def destroy
		@enabler = Enabler.find(params[:id])
		@enabler.destroy
		redirect_to enablers_path
	end
end