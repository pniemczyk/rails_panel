class Object
  def instance_values
    self.to_h if self.is_a?(ActiveRecord::ConnectionAdapters::PostgreSQLAdapter)
    Hash[instance_variables.map { |name| [name[1..-1], instance_variable_get(name)] }]
  end
end
