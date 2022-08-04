ActiveAdmin.register Weektime do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :dateweek, :alltime, :accord, :worktime_id
  #
  # or
  #
  permit_params do
    permitted = [:user_id, :dateweek, :alltime, :accord, :worktime_id]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end


  # Create sections on the index screen
  scope :all, default: true

  # Filterable attributes on the index screen
  filter :user, as: :select
  filter :dateweek
  filter :alltime
  filter :accord

  # Customize columns displayed on the index screen in the table
  index do
    column :user_id, as: :string
    column :dateweek, as: :date
    column "worktime_id", sortable: :worktime_id do |work|
      work.accord.size
    end
   
    column :alltime
    column :accord

    actions
  end
end
