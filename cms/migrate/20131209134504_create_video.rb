class CreateVideo < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Video',
      type: 'generic',
      title: 'Video',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
