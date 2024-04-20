json.results @output.users do |item|
    json.code item.code
    json.first_name item.first_name
    json.last_name item.last_name
    json.final_education item.final_education
    json.self_introduction item.self_introduction
  end