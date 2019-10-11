module Base_Input
    module Txt
        def initialize(flag) # Inicializando o arquivo do usuario ou Input padrao

            if flag == true 
                puts "Digite o nome do arquivo"
                filename = gets.chomp
                file = File.open("./Resources/"+filename)
                @lines = file.read.split("\n")
            else
                file = File.open("./Resources/Input.txt")
                @lines = file.read.split("\n")
            end
        end
    end
    module Index 
        def line(index)
            @lines |= []
            return @lines[index].delete "\r"
        end
    end
    module Size
        def Get_size
            @lines.length
        end
    end
end