class ZebraController < ApplicationController

  def homepage
render({:template=>"template_views/homepage"})
  end

  def dynamic
    @num_dice=params.fetch("numb").to_i
    @num_side=params.fetch("side").to_i
    @rolls=[]
    @num_dice.times do
      die=rand(1..@num_side)
      @rolls.push(die)
    end
render({:template=>"template_views/dynamic"})
    end

  end
