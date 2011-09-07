class ContactFormPortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false

  def render
    @contact = Contact.new
    @contact.errors.add_from_hash flash["#{instance_name}_errors"]
  end

  def submit
    @contact = Contact.new(params[:contact])

    if @contact.save
      url_for_success
    else
      store_params_in_flash
      store_errors_in_flash(@contact.errors)
      url_for_failure
    end
  end
end