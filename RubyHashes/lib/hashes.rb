# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.length == 0
        return contacts
    else
        counter = 0
        key = contacts.keys
        h = Hash.new
        key.each do |i|
            h[i] = emails[counter]
            counter += 1
        end
    end
    return h
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    if not contact_info[0].any?
        return contacts
    else
        k = contacts.keys
        h = Hash.new {|hash, key| hash[key] = { } }
        counter = 0
        k.each do |i|
            h[i].store :email,contact_info[counter][0]
            h[i].store :phone,contact_info[counter][1]
            counter += 1
        end
    end
    return h
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
    k = contacts.keys
    emailarr = Array.new
    phonearr = Array.new
    counter = 0
    k.each do |i|
        hash = Hash.new
        hash = contacts[i]
        emailarr[counter] = hash[:email]
        phonearr[counter] = hash[:phone]
        counter += 1 
    end
    j = 0
    while j < k.length 
        k[j] = k[j].id2name
        j += 1
    end
    finalarr = [ emailarr, phonearr, k ] 
    return finalarr
end

