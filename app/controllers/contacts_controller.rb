class ContactsController < Decidim::ApplicationController
  #before_action :set_contact, only: [:show, :edit, :update, :destroy]
  layout "layouts/decidim/application"


  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to decidim_path, notice: t('message_notice_success_1')
    else
      render :new
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end 

end
