class PhonesController < ApplicationController
  def index
    @phones = Phone.all

  end

# When new page loads, creates an empty object of phone for the form to insert into
  def new
    @phone = Phone.new
  end

# On submit, takes in params from form and then validates then inserts in to DB
  def create
    @phone = Phone.create(phone_params)
      if @phone.valid?
        redirect_to phones_path
      else
        render plain: 'Please enter valid data'
    end
  end

# Creates hash of params for data entry
  def phone_params
    pp params.require(:phone).permit(:manufacturer, :number)

    params.require(:phone).permit(:manufacturer, :number)
  end

end
