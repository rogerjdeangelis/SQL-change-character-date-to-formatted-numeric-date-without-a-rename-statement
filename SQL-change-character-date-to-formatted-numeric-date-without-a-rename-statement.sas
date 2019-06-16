SQL change character date to formatted numeric date without a rename statement                                            
                                                                                                                          
github                                                                                                                    
https://tinyurl.com/yxowaaja                                                                                              
https://github.com/rogerjdeangelis/SQL-change-character-date-to-formatted-numeric-date-without-a-rename-statement         
                                                                                                                          
SAS Forum                                                                                                                 
https://tinyurl.com/y5gmc765                                                                                              
https://communities.sas.com/t5/New-SAS-User/How-to-change-a-coulmn-of-dates-in-character-format-into-a/m-p/566252         
                                                                                                                          
*_                   _                                                                                                    
(_)_ __  _ __  _   _| |_                                                                                                  
| | '_ \| '_ \| | | | __|                                                                                                 
| | | | | |_) | |_| | |_                                                                                                  
|_|_| |_| .__/ \__,_|\__|                                                                                                 
        |_|                                                                                                               
;                                                                                                                         
                                                                                                                          
data have;                                                                                                                
input date$;                                                                                                              
cards4;                                                                                                                   
092009                                                                                                                    
102009                                                                                                                    
112009                                                                                                                    
122009                                                                                                                    
;;;;                                                                                                                      
run;quit;                                                                                                                 
                                                                                                                          
*           _                                                                                                             
 _ __ _   _| | ___  ___                                                                                                   
| '__| | | | |/ _ \/ __|                                                                                                  
| |  | |_| | |  __/\__ \                                                                                                  
|_|   \__,_|_|\___||___/                                                                                                  
                                                                                                                          
                                                                                                                          
            Variable    Type    Len                                                                                       
                                                                                                                          
 INPUT      DATE        Char      8                                                                                       
                                                                                                                          
 OUTPUT     DATE        Num       8    MONYY7.                                                                            
                                                                                                                          
                                                                                                                          
Up to 40 obs WORK.HAVE total obs=4                                                                                        
                                                                                                                          
   INPUT      | RULES OUTPUT                                                                                              
              | ============                                                                                              
Obs     DATE  |                                                                                                           
              |                                                                                                           
 1     092009 |  SEP2009                                                                                                  
 2     102009 |  OCT2009                                                                                                  
 3     112009 |  NOV2009                                                                                                  
 4     122009 |  DEC2009                                                                                                  
                                                                                                                          
*            _               _                                                                                            
  ___  _   _| |_ _ __  _   _| |_                                                                                          
 / _ \| | | | __| '_ \| | | | __|                                                                                         
| (_) | |_| | |_| |_) | |_| | |_                                                                                          
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                         
                |_|                                                                                                       
;                                                                                                                         
                                                                                                                          
WANT total obs=4 (numeric values displayed usin a format MMYY7.                                                           
                                                                                                                          
Obs     DATE                                                                                                              
                                                                                                                          
 1     SEP2009                                                                                                            
 2     OCT2009                                                                                                            
 3     NOV2009                                                                                                            
 4     DEC2009                                                                                                            
                                                                                                                          
*                                                                                                                         
 _ __  _ __ ___   ___ ___  ___ ___                                                                                        
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                       
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                       
| .__/|_|  \___/ \___\___||___/___/                                                                                       
|_|                                                                                                                       
;                                                                                                                         
                                                                                                                          
proc sql;                                                                                                                 
  create                                                                                                                  
     table want as                                                                                                        
  select                                                                                                                  
     input(date,anydtdte6.) as date format=monyy7.                                                                        
  from                                                                                                                    
     have                                                                                                                 
;quit;                                                                                                                    
                                                                                                                          
