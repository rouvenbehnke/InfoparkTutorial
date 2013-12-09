class CreateTextWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'TextWidget',
      type: 'publication',
      title: 'Text widget',
      attributes: [
        {:name=>"content", :type=>:html, :title=>"Content"},
      ],
      preset_attributes: {},
      mandatory_attributes: nil
    )
  end
end
