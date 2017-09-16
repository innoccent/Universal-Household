'use strict'
const express = require('express');
const server = express();

const crypto = require('crypto');
const old = crypto.createHash('md5');
old.update('123456789');
console.log(old.digest('hex'));

