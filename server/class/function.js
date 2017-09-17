'use strict'
const crypto = require('crypto');

function getUse() {

}
getUse.prototype={
    getMD5:function (num) {
        var md5 = crypto.createHash('md5');
        md5.update(num);
        return md5.digest('hex');
    }
};

var hex = new getUse();

module.exports=hex;