def seed_tipos
    puts "Seeding tipos..."
    lista = [
        {:nome => "Expresso", :cor => "vermelho"        },
        {:nome => "Ligeirinho", :cor => "cinza"     },
        {:nome => "Interbairros", :cor => "verde"        },
        {:nome => "Convencional", :cor => "amarelo"        },
        {:nome => "Jardineira", :cor => "verde"        },
    ]
    lista.each do |e|
        novo = Tipo.new()
        novo.nome = e[:nome]
        novo.cor = e[:cor]
        novo.save
    end
end