Rails.application.routes.draw do
get("/",{:controller=>"zebra", :action=>"homepage"})

get("/dice/:numb/:side",{:controller=>"zebra",:action=>"dynamic"})

end
