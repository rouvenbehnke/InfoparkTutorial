class CreateTutorialWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'TutorialWidget',
      type: 'publication',
      title: 'Tutorial widget',
      attributes: [
        {name: 'headline', type: 'string', title: 'Headline'},
        {name: 'content', type: 'html', title: 'Content'},
        {name: 'border', type: 'enum', title: 'Border', values: ['Yes', 'No']},
        {name: 'partnerlinks', type: 'linklist', title: 'Partnerlinks'},
        {name: 'datum', type: 'date', title: 'datum'},


      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end
