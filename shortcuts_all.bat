@echo off
setlocal enabledelayedexpansion

set tips[0]=Busca: Ctrl+F - Localizar
set tips[1]=Busca: Ctrl+H - Substituir
set tips[2]=Busca: F3 - Proxima ocorrencia
set tips[3]=Busca: Shift+F3 - Anterior ocorrencia
set tips[4]=Busca: Ctrl+Shift+F - Buscar em todos os arquivos
set tips[5]=Busca: Ctrl+Shift+H - Substituir em todos os arquivos
set tips[6]=Busca: Alt+C - Match Case
set tips[7]=Busca: Alt+W - Whole Word
set tips[8]=Busca: Alt+R - Regex
set tips[9]=Busca: Ctrl+F2 - Selecionar todas as ocorrencias
set tips[10]=VSCode: F2 - Renomear simbolo
set tips[11]=VSCode: Ctrl+. - Quick Actions / refatorar
set tips[12]=VS: Ctrl+R,R - Renomear
set tips[13]=VS: Ctrl+R,V - Extrair variavel
set tips[14]=VS: Ctrl+R,M - Extrair metodo
set tips[15]=VS: Ctrl+R,P - Introduzir parametro
set tips[16]=VS: Ctrl+R,E - Encapsular campo
set tips[17]=VSCode: Shift+Alt+O - Organizar imports
set tips[18]=VS: Ctrl+R,G - Organizar usings
set tips[19]=VSCode: Ctrl+Shift+\ - Ir para colchete correspondente
set tips[20]=VSCode: Ctrl+P - Ir para arquivo
set tips[21]=VS: Ctrl+T - Ir para simbolo global
set tips[22]=VSCode: F12 - Ir para definicao
set tips[23]=VSCode: Alt+F12 - Peek Definition
set tips[24]=VSCode: Ctrl+Click - Seguir para definicao
set tips[25]=VSCode: Shift+F12 - Mostrar referencias
set tips[26]=VSCode: Alt+Left/Right - Voltar / avancar
set tips[27]=VSCode: Ctrl+G - Ir para linha
set tips[28]=VSCode: Ctrl+Shift+O - Ir para simbolo no arquivo
set tips[29]=VSCode: Ctrl+Tab - Alternar entre arquivos
set tips[30]=VS: F5 - Iniciar debug
set tips[31]=VS: Shift+F5 - Parar debug
set tips[32]=VS: Ctrl+F5 - Executar sem debug
set tips[33]=VS: F9 - Alternar breakpoint
set tips[34]=VS: F10 - Step Over
set tips[35]=VS: F11 - Step Into
set tips[36]=VS: Shift+F11 - Step Out
set tips[37]=VS: Ctrl+Shift+F9 - Remover todos os breakpoints
set tips[38]=VSCode: Ctrl+Shift+Y - Abrir Debug Console
set tips[39]=VSCode: Ctrl+Shift+D - Abrir painel de Debug
set tips[40]=VSCode: Ctrl+` - Mostrar / ocultar terminal
set tips[41]=VSCode: Ctrl+Shift+` - Novo terminal
set tips[42]=VSCode: Ctrl+B - Mostrar / ocultar barra lateral
set tips[43]=VSCode: Ctrl+J - Mostrar / ocultar painel inferior
set tips[44]=VSCode: Ctrl+\ - Dividir editor
set tips[45]=VSCode: Ctrl+1/2/3 - Focar editor 1, 2, 3
set tips[46]=VSCode: Ctrl+W - Fechar aba atual
set tips[47]=VSCode: Ctrl+Shift+T - Reabrir aba
set tips[48]=VSCode: Ctrl+K,Z - Modo Zen
set tips[49]=VSCode: Ctrl+Shift+E - Focar Explorer
set tips[50]=Chrome: Ctrl+T - Nova aba
set tips[51]=Chrome: Ctrl+W - Fechar aba
set tips[52]=Chrome: Ctrl+Shift+T - Reabrir aba fechada
set tips[53]=Chrome: Ctrl+L - Focar barra endereco
set tips[54]=Chrome: Ctrl+R - Recarregar pagina
set tips[55]=Chrome: Ctrl+Shift+N - Janela anonima
set tips[56]=Chrome: F12 - Ferramentas do desenvolvedor
set tips[57]=Chrome: Ctrl+F - Buscar na pagina
set tips[58]=Chrome: Ctrl+Shift+R - Recarregar sem cache
set tips[59]=Chrome: Ctrl+U - Ver codigo fonte
set tips[60]=Win: Alt+Tab - Alternar janelas
set tips[61]=Win: Alt+Esc - Alternar em ordem cronologica
set tips[62]=Win: Win+1..9 - Abrir app fixado
set tips[63]=Win: Win+E - Explorador
set tips[64]=Win: Win+R - Executar
set tips[65]=Win: Win+I - Configuracoes
set tips[66]=Win: Win+L - Bloquear
set tips[67]=Win: Win+Ctrl+F4 - Fechar area de trabalho
set tips[68]=Win: Win+Ctrl+Shift+Left/Right - Mover janela entre areas
set tips[69]=Win: Shift+Win+M - Restaurar tudo

set count=0
:count_loop
if defined tips[%count%] (
    set /a count+=1
    goto count_loop
)

set /a index=%random% %% %count%
call echo %%tips[%index%]%%
