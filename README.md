# passwordGenerator

Bash script for random password generation.

## Install

Just copy the script to /usr/local/bin or a directory listed in your $PATH.

    sudo cp passwordGenerator.sh /usr/local/bin
    sudo chmod +x /usr/local/bin/passwordGenerator.sh

## Usage

    $ passwordGenerator.sh -h
    Usage: passwordGenerator.sh [ -a '<string>' ] [ -l <number> ] [ -n <number> ]
    -a: Allowed characters for password
    -l: Password length
    -n: Number of passwords to generate

    Example: passwordGenerator.sh -a '12345ABCDabcd#!$' -l 10 -n 3

    Default values
    ---------------
    Allowed characters:  1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
    Password length:     12
    Number of passwords: 1

## Examples

    $ passwordGenerator.sh 
    ejbbFjkha0aG

    $ passwordGenerator.sh -n 3
    JDvmJgTbYQqB
    jQIBII0yP5RE
    9rJsylIiSMfw

    $ passwordGenerator.sh -n 3 -l 20
    ws11jQ639LhQHkutb0tO
    tHCnFRtVFWE3dSocOOHP
    eOJFAWGLuQMwTqbHXkau

    $ passwordGenerator.sh -n 3 -l 20 -a "abc123"
    32cc2c111ccc2ca3cacb
    331a32aabac3caa33b12
    a2122cb2a21ccb1b3a3a
