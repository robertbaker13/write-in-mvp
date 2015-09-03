class ReportCard
  attr_reader :offices

  def initialize(user)
    @user = user
    @offices = build_offices
  end

  def build_offices
    offices = @user.district.add_parents.map { |district| district.offices }.flatten
    offices.map do |office|
      {
        name: office.district.name + " " + office.title,
        candidates: all_candidates_for_office(office)
      }
    end
  end

  def compatibility_score(number_of_endorsers)
    (100 * number_of_endorsers / all_endorsers.count).to_s + "%"
  end

  private

  def all_endorsers
    endorsers = @user.watchings.map { |watching| watching.organization }
    endorsers.select! { |organization| organization.user.endorsements.count > 0 }
    endorsers.map { |organization| organization.user }.uniq
  end


  def all_endorsements
    return nil unless all_endorsers
    all_endorsers.map { |user| user.endorsements }.flatten
  end

  def all_candidates
    return nil unless all_endorsements
    all_candidates = all_endorsements.map! { |endorsement| endorsement.candidate.user }.compact.uniq
  end

  def all_candidates_for_office(office)
    return nil unless all_candidates

    result = all_candidates.select { |usr| Candidate.find_by(user: usr).office == office }
    result.map! do |user|
      {
        name: user.twitteruser.name,
        endorsers: all_endorsers_of_candidate(user),
        endorser_count: compatibility_score(all_endorsers_of_candidate(user).count)
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

  def all_endorsers_of_candidate(user)
    candidate = Candidate.find_by(user: user)
    p endorsements = all_endorsements.map { |endorsement| endorsement.candidate == candidate }
    endorsements = all_endorsements.select { |endorsement| endorsement.candidate == candidate }
    endorsements.map { |endorsement| endorsement.user.twitteruser }
  end
end
