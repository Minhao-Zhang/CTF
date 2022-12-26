# picoMini by redpwn - login

Type: Web Exploitation
Points: 100

## Challenge

My dog-sitter's brother made this website but I can't get in; can you help?
login.mars.picoctf.net

## Writeup

Going onto the website, we can see a simple login page. I tried to type random things, an alert box popped up with the message "Incorrect Username".

I then used the developer mode in browser found out that the logic is all contained in the file `index.js`. After opening that up and formatted accordingly, we obtain the following code. 

```js
(async () => {
  await new Promise((e) => window.addEventListener("load", e)),
    document.querySelector("form").addEventListener("submit", (e) => {
      e.preventDefault();
      const r = { u: "input[name=username]", p: "input[name=password]" },
        t = {};
      for (const e in r)
        t[e] = btoa(document.querySelector(r[e]).value).replace(/=/g, "");
      return "YWRtaW4" !== t.u
        ? alert("Incorrect Username")
        : "cGljb0NURns1M3J2M3JfNTNydjNyXzUzcnYzcl81M3J2M3JfNTNydjNyfQ" !== t.p
        ? alert("Incorrect Password")
        : void alert(`Correct Password! Your flag is ${atob(t.p)}.`);
    });
})();
```

With the first glance, I see that the third to last line contains the logic of displaying the flag after we got the correct password. The previous lines are just checking the login credentials. However, we do see that the flag is just ```atob(t.p)``` where we know that ```t.p``` is ```cGljb0NURns1M3J2M3JfNTNydjNyXzUzcnYzcl81M3J2M3JfNTNydjNyfQ```. The ```atob``` function just parse base64 to ascii and if we do the same, we obtain the flag ```picoCTF{53rv3r_53rv3r_53rv3r_53rv3r_53rv3r}```

## Flag 
```picoCTF{53rv3r_53rv3r_53rv3r_53rv3r_53rv3r}```