module ApplicationHelper
    def get_color_by_tipo(tipo)
        if tipo.cor == "amarelo"
            return 'rgb(211, 211, 6)'
        elsif tipo.cor == 'vermelho'
            return "red"
        elsif tipo.cor == 'cinza'
            return "gray"
        elsif tipo.cor == 'verde'
            return "green"
        else    
            return 'black'
        end
    end
end
