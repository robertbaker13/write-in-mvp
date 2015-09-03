class ReportCard
  attr_reader :offices

  def initialize(user)
    @user = user
    p "@user: #{@user}"
    @offices = build_offices
  end

  def build_offices
    offices = @user.district.add_parents.map { |district| district.offices }.flatten
    p "offices: #{offices}"
    offices.map do |office|
      {
        name: office.district.name + " " + office.title,
        candidates: all_candidates_for_office(office)
      }
    end
  end


  private

  def all_endorsers
    p endorsers = @user.watchings.map { |watching| watching.user }
    p "+" * 100
    p endorsers #.select! { |user| user.endorsements.count > 0 }
  end

  def all_endorsements
    return nil unless all_endorsers
    p "*" * 100
    p all_endorsers.map { |user| user.endorsements }.flatten
  end

  def all_candidates
    return nil unless all_endorsements
    all_candidates = all_endorsements.map! { |endorsement| endorsement.candidate }.compact
  end

  def all_candidates_for_office(office)
    return nil unless all_candidates
    p "ALL CANDIDATES FOR OFFICE METHOD RUNNING ***********************************************"
    all_candidates.uniq.select { |candidate| candidate.office == office }
    result = all_candidates.map do |candidate|
      {
        name: candidate.user.twitteruser.name,
        endorsers: all_endorsers_of_candidate(candidate)
      }
    end
    result.length > 0 ? result : nil
    # committed_endorsers = []
    # result.each do |candidate|
    #   committed_endorsers << candidate.endorsers
    # end
    # result << {
    #   name: "No Candidate Preference in This Election",
    #   endorsers: uncommitted_endorsers(committed_endorsers.flatten)
    # }
  end

  # def uncommitted_endorsers(committed_endorsers)
  #   all_endorsers - committed_endorsers
  # end

  def all_endorsers_of_candidate(candidate)
    endorsements = all_endorsements.select { |endorsement| endorsement.candidate == candidate }
    endorsements.map { |endorsement| endorsement.user.twitteruser }
  end
end
