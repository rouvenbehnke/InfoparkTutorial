class CreateSearchPage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'SearchPage',
      type: 'publication',
      title: 'Search',
      attributes: [
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in navigation", :values=>["Yes", "No"]},
        {:name=>"headline", :type=>:string, :title=>"Headline"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
