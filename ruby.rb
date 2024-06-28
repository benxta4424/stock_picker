stock_picker=[17,3,6,9,15,8,6,1,10]
max=0
buying_index=0
selling_index=0
array_of_indexes=[]

stock_picker.each_with_index do |element,ind|
    (ind+1...stock_picker.length).each do |ind_secund|
        element_secund = stock_picker[ind_secund]
        if element_secund-element>max
            max=element_secund-element
            buying_index=ind
            selling_index=ind_secund
        end
    end
end

array_of_indexes<<buying_index<<selling_index
print array_of_indexes
