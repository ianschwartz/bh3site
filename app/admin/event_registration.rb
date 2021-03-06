ActiveAdmin.register EventRegistration do
  permit_params :contact_email, :hash_name, :nerd_name, :kennel, :payment_email, :food_preference, :gluten_allergy, :need_crash_space, :extra_hab, :extra_hab_size, :registration_date, :paid

  actions :all, except: :destroy

  filter :special_event
  filter :contact_email
  filter :hash_name
  filter :nerd_name
  filter :kennel
  filter :payment_email
  filter :food_preference
  filter :gluten_allergy
  filter :need_crash_space
  filter :extra_hab
  filter :extra_hab_size
  filter :registration_date
  filter :paid

  index do |registration|
    column :id do |rego|
      link_to rego.id, mismanagement_event_registration_path(rego)
    end
    column :contact_email
    column :hash_name
    column :nerd_name
    column :kennel
    column :payment_email
    column :food_preference
    column :gluten_allergy
    column :need_crash_space
    column :extra_hab
    column :extra_hab_size
    column :registration_date
    column :rego_price
    column :paid
    actions
  end
end
