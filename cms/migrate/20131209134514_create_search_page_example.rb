class CreateSearchPageExample < ::RailsConnector::Migration
  def up
    path = '/website/en/_configuration/search'

    search_page = create_obj(
      _path: path,
      _obj_class: 'SearchPage',
      'headline' => 'Search'
    )

    attributes = get_obj_class('Homepage')['attributes']
    attributes << {:name=>"search_page", :type=>:reference, :title=>"Search Page"}

    update_obj_class('Homepage', attributes: attributes)

    update_obj(
      Obj.find_by_path('/website/en').id,
      'search_page' => search_page['id']
    )
  end
end