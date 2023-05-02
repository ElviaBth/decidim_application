class ContactsController < Decidim::ApplicationController
  layout "layouts/decidim/application"

  # GET /contacts
  def index
  end 

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
    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end 

end
