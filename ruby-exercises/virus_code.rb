=begin 
Virus Predictor

The C.D.C. is concerned about a recent form of deadly 
influenza. They've implemented the following program to predict the effect of the 
virus by state. Eventually they want to predict the spread of the virus, which is 
why that data is included.

The initial program is not very D.R.Y.,  
You've been brought in to make the code more efficient and expandable 
for later features such as incorporating demographic data. 

Look at the output. Look at the input (it's in the other file). 
Explain what the program is doing.

`require_relative`
Write a comment explaining the require_relative statement - You should be somewhat 
familiar with this by now - it's in every `spec.rb` file. What does it do? How does 
it work?

  require_relative looks like it's just pulling a file and it's information 
  for the class/methods to work with. 

`state_data`
Take a look at the `state_data` file. What is going on with this hash? 
What does it have in it? (HINT: There are two different syntax used for hashes here. 
What's the difference?) I refer to this giant hash as a "hashy hash;" why do you 
think that is?

  It has hashes inside of the giant hash. The small hash keys contain the labels like 
  "population density" that go along with the corresponding information (values).
  Those small hashes are the value in the giant hash where the key is the state that all the
  information is corresponding with. Example:

  STATE_DATA = {  "Alabama" => {population_density: 94.65, population: 4822023, region: 5, regional_spread: 3}      
  }

  giant hash: STATE_DATA
  giant hash key: "Alabama"
  giant hash value: the small hash
  small hash keys: population_density , population, region, regional spread
  small hash value: the numbers


Implement a new feature!
Create a report for all 50 states, not just the 4 listed below.  
Is there a DRY way of doing this? Does this belong in the class or outside of it?

  def separate_hash(the_hash)
    the_hash.each do |key, value_hash| 
      state = key
      density = value_hash[:population_density]
      population = value_hash[:population]
      region = value_hash[:region]
      spread = value_hash[:regional_spread]

      a_state = VirusPredictor.new(state, density, population, region, spread)
      puts a_state.virus_effects
    end
  end

  separate_hash(STATE_DATA)


  ^ outside of the hash class!


Refactor `virus_effects`
ONLY look at `virus_effects` method and the two methods called inside it. 
(Do not look at `predicted deaths` or `speed_of_spread` themselves). 
Specifically look at the arguments being passed in. What is the scope of instance 
variables? Does it make sense to pass them in?


  No. The scope of an instance variable means any method in the class can use it so you can 
  just use the instance variables in the methods themselves instead of plugging them in as parameters. 


Private
What is the purpose of "private". What happens if you move it elsewhere in the class?

  private means the methods below cannot be seen by others


## Release 7: Refactor!
Refactor the private methods predicted_deaths and speed_of_spread.  
How can you make them more DRY?
=end



require_relative 'state_data'

class VirusPredictor

  #this initialize method is first collecting and inputing the data so the methods can have
  #a starting point to work with. 
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #virus_effects just calls the results of two separate (private) methods. 
  #The first is predicted_deaths which takes density and gets a percentage of predicted deaths based 
  #on the population density and the second method predics the speed of the spread of the virus.

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end


  private  #what is this?  what happens if it were cut and pasted above the virus_effects method


  #predicted_deaths takes the population density and multiplies the population it by a decimal using .floor
  #to get the percentage (rounded down to the nearest integer) of predicted deaths. The higher
  #the density, the higher the percentage.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  #if the population density is high then the speed of spread increases so if the 
  #population density is 200 or more the speed of spread is 2 weeks.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality. 
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1itu
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# def separate_hash(the_hash)
#   the_hash.each do |key, value_hash| 
#     state = key
#     density = value_hash[:population_density]
#     population = value_hash[:population]
#     region = value_hash[:region]
#     spread = value_hash[:regional_spread]

#     a_state = VirusPredictor.new(state, density, population, region, spread)
#     print a_state.virus_effects
#   end
# end

# separate_hash(STATE_DATA)



# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects


