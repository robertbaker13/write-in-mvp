class District < ActiveRecord::Base
  has_many :children, class_name: "District",
                      foreign_key: "parent_id"
  belongs_to :parent, class_name: "District",
                      foreign_key: "parent_id"
  has_many :users
  has_many :offices

  fuzzily_searchable :name

  #adds all the parent districts
  def add_parents
    if self.parent == nil
      return District.where(id: self.id)
    else
      return self.parent.add_parents + District.where(id: self.id)
    end
  end

  #returns the offices for a specific district
  def rc_offices(user)
    self.offices.map do |office|
      {
        office: office,
        candidates: office.rc_candidates(user)
      }
    end
  end

  def self.search_db(input)
      find_by_fuzzy_name(input, :limit => 20)
  end

end
