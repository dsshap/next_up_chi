class ContactController < ApplicationController

  def index
    @contact_us_form = Contact.new
  end

  def create
    @contact_us_form = Contact.new(params[:contact_us_form])

    if @contact_us_form.valid?
      @contact_us_form.save
      # ContactMailer.new_message(@contact_us_form).deliver
      redirect_to confirmation_contact_us_path
    else
      flash.now.alert = "Please fill out all fields."
      render new_contact_us_path
    end
  end

  def confirmation
  end

end