module ClientSideValidations; end

require 'client_side_validations/active_model'
require 'client_side_validations/middleware'
require 'client_side_validations/mongo_mapper/middleware'

%w{uniqueness}.each do |validator|
  require "client_side_validations/mongo_mapper/#{validator}"
  validator.capitalize!
  eval "MongoMapper::Plugins::Validations::#{validator}Validator.send(:include, ClientSideValidations::MongoMapper::#{validator})"
end

# ActiveRecord::Base.send(:include, ClientSideValidations::ActiveModel::Validations)
ClientSideValidations::Middleware::Uniqueness.register_orm(ClientSideValidations::MongoMapper::Middleware)
