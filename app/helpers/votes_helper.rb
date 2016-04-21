def sum_votes(vote_obj_array)
  vote_obj_array.inject(0){|sum, votes| sum += votes.value}
end
