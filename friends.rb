def get_name(person)
  return person[:name]
end

def tvshow_name(person)
  return person[:favourites][:tv_show]
end

def food_check(person, food)
  return person[:favourites][:things_to_eat][0].include?(food)
end

def friend_add(person)
  person[:friends].push("Alistair")
  return person[:friends].length
end

def friend_subtract(person)
  person[:friends].pop
  return person[:friends].length
end

def total_monies(array)
  total_monies_result = 0
  for m in array
    total_monies_result = m[:monies] + total_monies_result
  end
  return total_monies_result
end

# def loan_shark(lender, lendee, amount)
#   lender[:monies] -= amount
#   borrowe[:monies] += amount
# end


def same_tv_show(people)
  tv_shows = {}
  result = {}

  for person in people
    show = person[:favourites][:tv_show]

    if tv_shows[show]
      tv_shows[show].push(person[:name])
    else
      tv_shows[] = [person[:name]]
    end
  end

  for show in tv_shows.keys
    if tv_shows[show].size > 1
      result[show] = tv_shows[show].reverse
    end
  end

  return result
end
