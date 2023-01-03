# picoCTF 2022 - Local Authority (Web Exploitation)

## Description

Can you get the flag?

Go to this [website](http://saturn.picoctf.net:55826/) and see what you can discover.

## Solution

Upon open up the website, I see a simple login portal.
I typed in some random things, it gave me a log in failed page.
I went to the developer mode and saw that the code checking the credential is

```js
loggedIn = checkPassword(window.username, window.password);
```

This `checkPassword` function is defined in `secure.js`.
Thus, I went to this [site](http://saturn.picoctf.net:55826/secure.js) and found the following code.

```js
function checkPassword(username, password) {
  if (username === "admin" && password === "strongPassword098765") {
    return true;
  } else {
    return false;
  }
}
```

Thus, we know the username and password.
Entering that will give you the flag.

## Flag

`picoCTF{j5_15_7r4n5p4r3n7_b0c2c9cb}`
