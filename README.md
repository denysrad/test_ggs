## Basic work with files

-    Create directory test1    
```      
mkdir test1       
```  
- Create file test1.txt inside the test1 directory.  
```console  
touch test1.txt  
```   
-    Create copy of folder test1 with name test2.   
```console 
cp -R test1 test2  
```    
-    Delete file test1.txt inside test2 directory.  
```console  
rm test2/test1.txt  
```    
-    Rename test2 folder into directory_without_file
```console  
mv test2 directory_without_file  
```  
-    Insert 'test1' text into test1/test1.txt file.  
```console 
echo 'test1' > test1/test1.txt  
```  
-    print the text from the test1/test1.txt file.
```console  
cat test1/text1.txt
```    
-    Insert 'test2' into the end of test1/test1.txt file.  
```console  
echo 'test2' >> test1/test1.txt  
```
-    print the text from the test1/test1.txt file.
```console  
cat test1/test1.txt  
```   
## Permissions

-   Create test directory and block access for all to it.
```console  
mkdir testdir      
chmod 000 testdir  
```  
-   Try to remove that directory.
```console 
rmdir testdir  
```  

-    Create simple script which prints current date. Try to execute it.
```console  
vi date.sh    
 #!/bin/sh       
 echo $(date '+%Y-%m-%d')   
:wq    
bash date.sh  
```   

## Log checking

-  Count lines in the file test.txt.
```console   
wc -l test.txt'  
```  

- Show last 3 lines from the test.txt file. 
```console  
tail -n 3 test.txt  
```  

-  Hom many uniq IP addresses accessed the website ? 
```console  
awk '{ print $1 } ' test.txt | sort | uniq | wc -l  
```  

-  IP address with most requests.  
```console  
awk '{ print $1}' test.txt | sort | uniq -c | sort -nr | head -n 1  
```  

-  Top 3 IP addresses by amount of POST requests.


-  Which IP addresses received 403 error ? 


- Task with * . Write script to show which pages Google checked from the website 

