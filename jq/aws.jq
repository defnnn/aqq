def index(key): 
  (. | flatten) as $input
    | reduce $input[] as $i ({}; .[$i | key]? = $i) 
      | del(.[""]) | to_entries | sort_by(.key) | from_entries;
