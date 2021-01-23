sample = [10,3,6,9,15,8,6,11,10]

def stock_picker(array)
    best_buy = 0
    best_sell = 0
    profits = 0

    array.each_with_index do |element, index|
        array.each_with_index do |element2, index2|
            if(index2 > index)
                if(element2 - element > profits)
                    best_buy = [element, index]
                    best_sell = [element2,index2]
                    profits = element2-element
                end
            end
        end
    end


    puts "\nThe stock prices were #{array.to_s}\n"
    puts "The best time to buy was at #{best_buy[0]} on day #{best_buy[1] + 1} "
    puts "The best time to sell was at #{best_sell[0]} on day #{best_sell[1] + 1} "
    puts "\nTotal Profits are: #{profits}"

    return [best_buy[1],best_sell[1]]

end

puts stock_picker(sample).to_s

