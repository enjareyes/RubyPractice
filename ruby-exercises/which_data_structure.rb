
# Only work on 1 test at a time, comment out the rest of the tests and work your way down.
def assert_equals actual, expected
  puts actual == expected || raise("expected #{expected} but got #{actual}")
end

params = { 
            user: {   name: "myname",
                      address: {  street: "Molokai St.",
                                  zip: "94607"
                                }
                  },
            other_user: {name: "same_idea_different_info"}
          }
#This works because params is a nested hash. It keeps the hash more organized.
#the first key in the params hash is :user and the value is a hash
#that hash contains the name and address keys and the value for the :address key
#is another hash. That hash has a key :zip where it's value is "94607"
assert_equals params[:user][:address][:zip], "94607"


params = { 
            user: {   name: "myname",
                      "address" => {  street: "Molokai St.",
                                  zip: "94607"
                                }
                  },
            other_user: {name: "same_idea_different_info"}
          }

#same thing but with a string for address instead of a symbol
assert_equals params[:user]["address"][:zip], "94607"




params = { 
            user: {   name: "myname",
                      address: ["94607", "street", "town"]
                  },
            other_user: {name: "same_idea_different_info"}
          }

#this works because the value for the address key is an array where index[0] is the zip
assert_equals params[:user][:address][0], "94607"

assert_equals params[:user][:address].first, "94607"

params = ["94607", 2, 4, 8]
assert_equals params[0], "94607"

assert_equals params.first, "94607"


params = [{ zip: "94607", }, {address: "cupcake road"}]
#this works because it is an array where the first element is a hash.
assert_equals params.first, {:zip => "94607"}


params = { 
            user: [{zip: "94607", street: "cat st."}, {birthday: "January 2"}]
          }
#This works because it is a hash where the key's value is an array that contains hashes..
#The key is :user and the *first value in the array is a hash that contains a key :zip 
#who's value is the string "94607"
assert_equals params[:user].first[:zip], "94607"


params = { 
            user: [[{zip: "94607", address: "kat road"}], {birthday: "January 2"}]
          }
#This works because the params hash has a key :user whos value is an array.
#The *first element in that array is another array
#the *first element in THAT array is a hash where the key :zip has the value "94607"
assert_equals params[:user].first.first[:zip], "94607"


params = ["blahblah", 8, {:zip => "94607"}]
#That works because the params array has the index[2] element as a hash.
assert_equals params[2], {:zip => "94607"}


params = ["blahblah", 8, [["wooo", "94607"], "anotherarray", "blaaaah"]]
#This works because the params array has an index[2] element that is an array
#inside that array the first element index[0] is another array where the 
# .last value is "94607"
assert_equals params[2][0].last, "94607"








