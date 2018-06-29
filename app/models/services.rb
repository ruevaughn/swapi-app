module Services
  def self.table_name_prefix
    'services_'
  end

  def self.parse_class_to_singular_string(resource_class)
    resource_class.to_s.downcase.singularize
  end

  def self.parse_class_to_plural_string(resource_class)
    resource_class.to_s.downcase.pluralize
  end

end
