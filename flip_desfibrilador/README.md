- em esx_ambulancejob/server/main.lua -> linha 10 modificar : 

ANTIGO: 

if xPlayer.job.name == 'ambulance' then 

DEPOIS : 

--if xPlayer.job.name == 'ambulance' then

if true then



__Guia de uso__:
- Uma vez conectado, com um item medikit no inventário, pressiona a tecla "** K **" perto de uma pessoa morta para executar o script.
Se nenhum INEM estiver online, a animação será iniciada e terminará com a reanimação da pessoa morta.
Se um INEM estiver conectado, não será reanimada a pessoa morta.

__ Condições para uso__:
- ter o item "medikit" em inventário e uma pessoa morta perto. Então pressionar "** K **"
