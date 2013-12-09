class CreateResourceContainer < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'ResourceContainer',
      type: 'publication',
      title: 'Resouce Container',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
