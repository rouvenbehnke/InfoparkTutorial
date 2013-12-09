class CreateImageWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'ImageWidget',
      type: 'publication',
      title: 'Image widget',
      attributes: [
        {:name=>"source", :type=>:reference, :title=>"Source"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
