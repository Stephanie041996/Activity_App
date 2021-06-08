module ActivitiesHelper
  def insert_activity_icon(obj, size = '50')
    if obj.group
      if obj.group.icon == ''
        image_tag('https://via.placeholder.com/50', size: size, alt: "#{obj.name} icon")
      elsif obj.group.icon_url
        image_tag(obj.group.icon_url, size: size, alt: "#{obj.name} icon")
      end

    else
      image_tag('https://via.placeholder.com/50', size: size, alt: 'un-groupped icon')
    end
  end
end
