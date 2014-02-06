class Skill < ActiveRecord::Base
  VALID_CONTEXTS = %w(technical creative)

  validates :name, :presence => true
  validate :validate_context

  has_many :proficiencies
  has_many :users, through: :proficiencies

  def years
    Proficiency.find_by_skill_id(self.id).experiance
  end

  def formal
    Proficiency.find_by_skill_id(self.id).educated
  end

  private
  def validate_context
    p self.context
    self.errors[:context] = "must be one of: #{VALID_CONTEXTS.join(', ')}" unless VALID_CONTEXTS.include? self.context
  end
end
