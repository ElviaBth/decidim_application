module Admin
    class ContactsController < Decidim::Admin::ApplicationController
      before_action :set_contact, only: [:show, :edit, :update, :destroy]

      # GET /contacts
         def index
            @contacts = Contact.all
         end    

        # GET /contacts/1
        def show
        end

        # DELETE /contacts/1
        def destroy
            @contact.destroy
            redirect_to admin_contacts_url, notice: t('message_notice_success_3')
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
end