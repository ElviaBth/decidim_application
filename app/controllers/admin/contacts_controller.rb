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

        # GET /contacts/1/edit
        def edit
        end

        # PATCH/PUT /contacts/1
        def update
            if @contact.update(contact_params)
            redirect_to admin_contact_path(@contact), notice: t('message_notice_success_2')
            else
            render :edit
            end
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