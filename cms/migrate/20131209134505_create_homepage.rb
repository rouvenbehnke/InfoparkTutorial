class CreateHomepage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Homepage',
      type: 'publication',
      title: 'Homepage',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
        {:name=>"main_content", :type=>:widget, :title=>"Main content"},
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"error_not_found_page", :type=>:reference, :title=>"Error Not Found Page"},
        {:name=>"locale", :type=>:string, :title=>"Locale"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
