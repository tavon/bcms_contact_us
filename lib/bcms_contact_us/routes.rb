module Cms::Routes
  def routes_for_bcms_contact_us
    resources :contacts
    namespace(:cms) do
      content_blocks :contacts
    end
  end
end