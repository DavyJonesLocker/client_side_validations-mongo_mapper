require 'mongo_mapper/cases/test_base'

class MongoMapper::ValidatorTest < ClientSideValidations::MongoMapperTestBase
  class ::Magazine3 < Magazine
    validates :author_name, :presence => true
  end

  def test_validations_to_client_side_hash
    magazine = Magazine3.new

    expected_hash = {
      :author_email => {
        :uniqueness => [{:message => "has already been taken", :case_sensitive => true}]
      }, :author_name => {
        :uniqueness => [{:message => "has already been taken", :case_sensitive => true}],
        :presence => [{:message => "can't be blank"}]
      }
    }

    assert_equal expected_hash, magazine.client_side_validation_hash
  end
end
