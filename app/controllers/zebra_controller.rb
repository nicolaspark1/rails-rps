class ZebraController < ApplicationController
  def giraffe
    player = "rock"
    computer_choices = ["rock", "paper", "scissors"]
    computer = computer_choices.sample

    if computer == "rock"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We tied!"  
    end
    if computer == "paper"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We lost!"  
    end
    if computer == "scissors"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We won!"  
    end

    @outcome1 = result1
    @outcome2 = result2
    @outcome3 = result3
    render({ :template => "game_templates/play_rock" })
  end

  def elephant
    player = "paper"
    computer_choices = ["rock", "paper", "scissors"]
    computer = computer_choices.sample

    if computer == "paper"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We tied!"  
    end
    if computer == "scissors"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We lost!"  
    end
    if computer == "rock"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We won!"  
    end

    @outcome1 = result1
    @outcome2 = result2
    @outcome3 = result3

    render({ :template => "game_templates/play_paper" })
  end

  def lion
    player = "scissors"
    computer_choices = ["rock", "paper", "scissors"]
    computer = computer_choices.sample

    if computer == "scissors"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We tied!"
    end
    if computer == "rock"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We lost!"  
    end
    if computer == "paper"
      result1 = "We played #{player}!"
      result2 = "They played #{computer}!"
      result3 = "We won!"  
    end
    @outcome1 = result1
    @outcome2 = result2
    @outcome3 = result3

    render({ :template => "game_templates/play_scissors" })
  end

  def rules
    render({ :template => "game_templates/rules" })
  end

end
