# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.length == 0
        return contacts
    else
        num = 0
        key = contacts.keys
        hash = Hash.new
        key.each do |i|
            hash[i] = emails[num]
            num = num + 1
        end
    end
    return hash
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    unless contact_info[0].any?
        return contacts
    else
        keyarray = contacts.keys
        newHash = Hash.new {|hash, key| hash[key] = { } }
        c = 0
        keyarray.each do |x|
            newHash[x].store :email,contact_info[c][0]
            newHash[x].store :phone,contact_info[c][1]
            c = c + 1
        end
    end
    return newHash
end


# Part III
def hash_2_array contacts
    # YOUR CODE HERE
    keyarray = contacts.keys
    emailarray = Array.new
    phonearray = Array.new
    c = 0
    keyarray.each do |x|
        hash = Hash.new
        hash = contacts[x]
        emailarray[c] = hash[:email]
        phonearray[c] = hash[:phone]
        c = c + 1 
    end
    x = 0
    while x < keyarray.length 
        keyarray[x] = keyarray[x].id2name
        x = x + 1
    end
    finalarray = [ emailarray, phonearray, keyarray ] 
    return finalarray
end

