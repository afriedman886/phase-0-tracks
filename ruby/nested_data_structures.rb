weekly_meal_plan = {
  monday: {
    plan: {
      meal: "beef wellington",
      grocery_list: [
        "beef tenderloin",
        "mushrooms",
        "shallots"
      ]
      },
    reality: "frozen pizza"
    },
  tuesday: {
    plan: {
      meal: "paella",
      grocery_list: [
        "prawns",
        "sea scallops",
        "tomato puree"
      ]
      },
    reality: "boxed mac and cheese"
    },
  wednesday: {
    plan: {
      meal: "wild mushroom risotto",
      grocery_list: [
        "risotto rice",
        "wild mushrooms",
        "mascarpone"
      ]
      },
    reality: "thai takeout"
    },
  thursday: {
    plan: {
      meal: "chicken marsala",
      grocery_list: [
        "chicken breasts",
        "chicken broth",
        "sundried tomatoes",
        "marsala wine"
      ]
      },
    reality: "peanut butter and jelly sandwich"
    },
  friday: {
    plan: {
      meal: "duck a l'orange",
      grocery_list: [
        "duck",
        "oranges",
        "fresh thyme"
      ]
      },
    reality: "happy hour appetizers"
  }
}

p weekly_meal_plan

puts "What did I plan to make for dinner on Thursday night?"
p weekly_meal_plan[:thursday][:plan][:meal]

puts "What was the sad meal I ended up eating instead that same night?  (Shout at me if you must...)"
p weekly_meal_plan[:thursday][:reality].upcase

puts "If I had had time to go to the grocery store on Tuesday, what is the first ingredient I would have put in my shopping cart?"
p weekly_meal_plan[:tuesday][:plan][:grocery_list][0]