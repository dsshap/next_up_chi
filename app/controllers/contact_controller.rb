class ContactController < ApplicationController

  def index
    @contact_us_form = ContactUsForm.new
  end

  def create
    @contact_us_form = ContactUsForm.new(params[:contact_us_form])

    if @contact_us_form.valid?
      ContactMailer.new_message(@contact_us_form).deliver
      redirect_to confirmation_contact_us_path
    else
      flash.now.alert = "Please fill out all fields."
      render new_contact_us_path
    end
  end

  def confirmation
  end

end