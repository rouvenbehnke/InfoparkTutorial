class CreateResetPasswordPage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'ResetPasswordPage',
      type: 'publication',
      title: 'ResetPassword',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
        {:name=>"content", :type=>:html, :title=>"Content"},
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
