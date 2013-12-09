class CreateGalleryWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'GalleryWidget',
      type: 'publication',
      title: 'Gallery widget',
      attributes: [
        {name: "ressources", type: 'referencelist', title: 'Ressource'},
        {name: "description", type: 'string', title: 'Beschreibung'},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end
