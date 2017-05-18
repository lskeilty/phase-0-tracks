# The data structure is a menu. There are 3 course Each course has a full (capitalized) name, dietary info, and the names of the 3 dishes offered in each course.


menu = {
    appetizer: {
        full_name: "Appetizer",
        dietary_info: {
          vegan_options: 1,
          gf_options: 1,
          total_options: 3
        },
        main_names: [
            "Vegan Platter",
            "Gluten Free Bread",
            "Calamari"
        ]
    },

    main_course: {
        full_name: "Main Course",
        dietary_info: {
          vegan_options: 0,
          gf_options: 1,
          total_options: 3
        },
        main_names: [
            "Gluten Free Pizza",
            "Roast Chicken",
            "Caesar Salad"
        ]
    },

    dessert: {
        full_name: "Dessert",
        dietary_info: {
            vegan_options: 1,
            gf_options: 1,
            total_options: 3
        },
        dessert_names: [
            "Vegan Cake",
            "Gluten Free Ice Cream",
            "Tiramisu"
          ]
    }
}


menu [:appetizer][:full_name] #prints "Appetizer"
menu [:main_course][:dietary_info][:gf_options] #prints 1
menu [:dessert][:dessert_names][2] #prints "Tiramisu"