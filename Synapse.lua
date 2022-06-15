-- Main Usage
--Decryption:
print(syn.crypt.custom.decrypt("aes-gcm","lyiAqsYTgCuWO0WcO7HKJ8IqZwwZWg==","0123456789ABCDEF0123456789ABCDEF","0123456789AB"))
--Encryption:
print(syn.crypt.custom.encrypt("aes-gcm","YO SUP","0123456789ABCDEF0123456789ABCDEF","0123456789AB"))

-- Constructor format
local SynAES = function(key)
    local crypto = syn.crypt.custom
    local enc = function(data,iv)
        return crypto.encrypt("aes-gcm",data,key,iv)
    end
    local dec = function(data,iv)
        return crypto.decrypt("aes-gcm",data,key,iv)
    end
    return {
        encrypt=enc,
        decrypt=dec
    }
end

-- Example Usages
local crypt = SynAES("0123456789ABCDEF0123456789ABCDEF")
print(crypt.encrypt("YO SUP","0123456789AB"))
print(crypt.decrypt("lyiAqsYTgCuWO0WcO7HKJ8IqZwwZWg==","0123456789AB"))
