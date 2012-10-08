class Magazine
  include MongoMapper::Document

  key :age,          Integer
  key :author_name,  String
  key :author_email, String

  validates :author_name, :author_email, :uniqueness => true
end

module MongoMapperTestModule
  class Magazine2 < Magazine; end
end
