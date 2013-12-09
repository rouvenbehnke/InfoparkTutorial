class CreateHeadlineWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'HeadlineWidget',
      type: 'publication',
      title: 'Headline widget',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
