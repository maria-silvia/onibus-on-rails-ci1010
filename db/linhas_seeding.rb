def seed_linhas
    puts "Seeding linhas..."
    lista_linhas = [
        {:nome => "Inter 2", :codigo => "023", :tipo_id => 2        },
        {:nome => "Solitude", :codigo => "463", :tipo_id => 4     },
        {:nome => "Petrópolis", :codigo => "334", :tipo_id => 4        },
        {:nome => "Bairro Novo", :codigo => "506", :tipo_id => 2        },
        {:nome => "Fazendinha", :codigo => "654", :tipo_id => 4        },
        {:nome => "Ahú / Los Angeles", :codigo => "543", :tipo_id => 4     },
        {:nome => "Sta Candida / Capao Raso", :codigo => "543", :tipo_id => 1       },
        {:nome => "Interbairros III", :codigo => "030", :tipo_id => 3        },
        {:nome => "Interbairros V", :codigo => "050", :tipo_id => 3        },
        {:nome => "Fanny", :codigo => "045", :tipo_id => 4     },
        {:nome => "CENTENARIO / C. COMPRIDO", :codigo => "543", :tipo_id => 1       },
        {:nome => "Estudantes", :codigo => "466", :tipo_id => 4          },
        {:nome => "Vila Rex", :codigo => "079", :tipo_id => 4          },
    ]

    lista_linhas.each do |e|
        lin = Linha.new()
        lin.nome = e[:nome]
        lin.codigo = e[:codigo]
        lin.tipo_id = e[:tipo_id]
        lin.save
    end
end