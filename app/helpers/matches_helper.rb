module MatchesHelper
def add_team_link(name)
  link_to_function name do |page|
    page.insert_html :bottom, :results, :partial => 'result' , :object => Result.new
  end
end
end

