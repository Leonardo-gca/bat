@echo off
cls
echo.
echo ---------------------------------------  BACKUP DE PROJETOS  -------------------------------------------
echo.

rem - MEU DESKTOP - Aqui é o diretorio onde estao todos os meus projetos!
set desktop="C:\BackUp\Macros" 
set desktopAdm="C:\BackUp\Macros\Adm.*"
set desktopFormalizacao="C:\BackUp\Macros\Formalizacao.*"
set desktopBaixa="C:\BackUp\Macros\Baixa.*"
set desktopCredito="C:\BackUp\Macros\Credito.*"
set desktopComercial="C:\BackUp\Macros\Departamento_Comercial.*"
set desktopQualidade="C:\BackUp\Macros\Projeto_Qualidade_CDC.*"

rem - REDE DA EMPRESA - Aqui sao os diretorios dos projetos em producao
set redemarazuladm="R:\DEP\Macros\PROJETOS\Adm"
set administrativo="R:\DEP\Macros\PROJETOS\Adm\Adm.*"
set formalizacao="R:\DEP\Macros\PROJETOS\Adm\Formalizacao.*"
set baixa="R:\DEP\Macros\PROJETOS\Adm\Baixa.*"
set credito="R:\DEP\Macros\PROJETOS\Adm\Credito.*"
set comercial="R:\DEP\Macros\PROJETOS\Adm\Departamento_Comercial.*"
set qualidade="R:\DEP\Macros\PROJETOS\Adm\Projeto_Qualidade_CDC.*"
set BackUpTodos="off"
 
:main
   
   echo. 
   echo Escolha a opcao desejada para realizar o BACKUP!
   echo.
   echo.
   echo [1]Administrativo   
   echo [2]Baixa   
   echo [3]Comercial 
   echo [4]Credito 
   echo [5]Formalizacao  
   echo [6]Qualidade
   echo [7]Todos
   echo [8]Supervisao   
   echo [9]Sair  
   echo. 
   echo. 
   set /p opcao=Digite o numero do departamento!:
   
   if "%opcao%" == "1" goto op1
   if "%opcao%" == "2" goto op2
   if "%opcao%" == "3" goto op3
   if "%opcao%" == "4" goto op4
   if "%opcao%" == "5" goto op5
   if "%opcao%" == "6" goto op6
   if "%opcao%" == "7" goto op7
   if "%opcao%" == "8" goto op8
   if "%opcao%" == "9" goto op9
   
   echo.
   echo.
   echo *********** Opcao invalida! ************
   echo.  
   goto main
   exit
   
   
:op1
   
		echo.
		echo -- BACKUP de ADIMINISTRATIVO ---------------------------------------------------------------------------------------------------------------------------- 
		echo.
		xcopy %desktopAdm% %administrativo% /d /e /c /i /h /r /k /y
		echo.
		echo -- Izabela 
   	    xcopy %administrativo% "R:\DEP\Macros\PROJETOS\Producao\Administrativo\Izabela" /d /e /c /i /h /r /k /y
		echo.		
        
		if %BackUpTodos% == "on" goto op2
		
	    goto Pergunta      	
		
        goto fim   
   
:op2

 		echo.
		echo -- BACKUP de BAIXA -------------------------------------------------------------------------------------------------------------------------------------- 
		echo.
		xcopy %desktopBaixa% %baixa% /d /e /c /i /h /r /k /y
		echo.  
        echo -- Andressa
   	    xcopy %baixa% "R:\DEP\Macros\PROJETOS\Producao\Baixa\Andressa" /d /e /c /i /h /r /k /y
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Baixa\Andressa" /d /e /c /i /h /r /k /y  
        echo.
        echo -- Bruno
        xcopy %baixa% "R:\DEP\Macros\PROJETOS\Producao\Baixa\Bruno" /d /e /c /i /h /r /k /y
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Baixa\Bruno" /d /e /c /i /h /r /k /y
        echo.

		if %BackUpTodos% == "on" goto op3
		
        goto Pergunta 		
		
        goto fim   
   
:op3

   		echo.
		echo -- BACKUP de COMERCIAL ---------------------------------------------------------------------------------------------------------------------------------- 
		echo.
		xcopy %desktopComercial% %comercial% /d /e /c /i /h /r /k /y
		echo.
        echo -- Rodrigo Pillar PC - EMPRESA
   	    xcopy %comercial% "R:\DEP\Macros\PROJETOS\Producao\Comercial\Thomas" /d /e /c /i /h /r /k /y        
        echo.
        echo.
        echo -- Rodrigo Pillar PC - NOTEBOOK
        xcopy %comercial% "R:\DEP\Macros\PROJETOS\Producao\Comercial\Rodrigo_Pillar" /d /e /c /i /h /r /k /y
        echo.
        echo.
        echo -- Julio Cesar
        xcopy %comercial% "R:\DEP\Macros\PROJETOS\Producao\Comercial\Julio_Cesar" /d /e /c /i /h /r /k /y
        echo.
        
		if %BackUpTodos% == "on" goto op4
		
        goto Pergunta 
		
        goto fim   
   
:op4

   		echo.
		echo -- BACKUP de DEPARTAMENTO 1 ------------------------------------------------------------------------------------------------------------------------------------ 
		echo.
		xcopy %desktopCredito% %credito% /d /e /c /i /h /r /k /y
		echo.
		
		if %BackUpTodos% == "on" goto op5
		
        goto Pergunta 
		
        goto fim   
   
:op5

   		echo.
		echo -- BACKUP de DEPARTAMENTO 2 -------------------------------------------------------------------------------------------------------------------------------
        echo.
		xcopy %desktopFormalizacao% %formalizacao% /d /e /c /i /h /r /k /y
		echo.
        echo -- Alcidene 
		xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Formalizacao\Alcidene" /d /e /c /i /h /r /k /y
		echo.
		echo -- Larissa
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Formalizacao\Larissa" /d /e /c /i /h /r /k /y
		echo.
		echo -- JacKeline
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Formalizacao\Jackeline" /d /e /c /i /h /r /k /y
		echo.
		echo -- Maria Fernanda
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Formalizacao\Maria_Fernanda" /d /e /c /i /h /r /k /y
		echo.
		echo -- Bruno Aparecido Silva
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Formalizacao\BrunoAparecidoSilvadeJesus" /d /e /c /i /h /r /k /y
		echo.
		echo -- Judson Sabino
        xcopy %formalizacao% "R:\DEP\Macros\PROJETOS\Producao\Formalizacao\Judson_Sabino_Borges" /d /e /c /i /h /r /k /y		
		echo.
        
		if %BackUpTodos% == "on" goto op6
		
        goto Pergunta 
		
        goto fim   
   
:op6
   
   		echo.
		echo -- BACKUP de DEPARTAMENTO 3 ---------------------------------------------------------------------------------------------------------------------------------- 
		echo.
        xcopy %desktopQualidade% %qualidade% /d /e /c /i /h /r /k /y
		echo.
        echo -- Luiz
   	    xcopy %qualidade% "R:\DEP\Macros\PROJETOS\Producao\Qualidade\Luiz" /d /e /c /i /h /r /k /y       
        echo.
        echo -- Maria
        xcopy %qualidade% "R:\DEP\Macros\PROJETOS\Producao\Qualidade\Maria" /d /e /c /i /h /r /k /y
        echo.
        echo -- Jackeline
        xcopy %qualidade% "R:\DEP\Macros\PROJETOS\Producao\Qualidade\Jackeline" /d /e /c /i /h /r /k /y
        echo.
		
		if %BackUpTodos% == "on" goto op8
		
        goto Pergunta        
		
        goto fim
   
:op7

		echo.
		echo -- BACKUP de TODOS -------------------------------------------------------------------------------------------------------------------------------------- 
		echo.
        
		set BackUpTodos="on"
		
		goto op1             
		
        goto fim
   
:op8
   		echo.
		echo -- BACKUP de DEPARTAMENTO 4 --------------------------------------------------------------------------------------------------------------------------------- 
		echo.
        xcopy %desktop% %redemarazuladm% /d /e /c /i /h /r /k /y
        echo.		
        echo -- Marco Tulio
        xcopy %redemarazuladm% "R:\DEP\Macros\PROJETOS\Supervisao\Marco_Tulio" /d /e /c /i /h /r /k /y
        echo.
        echo -- Rodrigo Goncalves
        xcopy %redemarazuladm% "R:\DEP\Macros\PROJETOS\Supervisao\Rodrigo_Goncalves" /d /e /c /i /h /r /k /y
        echo.
        echo -- Felipe
        xcopy %redemarazuladm% "R:\DEP\Macros\PROJETOS\Supervisao\Felipe" /d /e /c /i /h /r /k /y 
		echo.
		
		if %BackUpTodos% == "on" goto exit
		
	    goto Pergunta
		
        goto fim   
   
:Pergunta
   
		echo.
		
		set opcao=0
		
        set /p opcao=Digite 1 para continuar ou qualquer tecla para sair!:
		
        if "%opcao%" == "1" goto main

        goto fim   
   
:op9 		
    exit 
   :fim 
