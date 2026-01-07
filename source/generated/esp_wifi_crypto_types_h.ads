pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with sys_ustdint_h;
with stddef_h;
with Interfaces.C.Extensions;

package esp_wifi_crypto_types_h is

   ESP_WIFI_CRYPTO_VERSION : constant := 16#00000001#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:24

   type esp_crypto_hash_alg_t is 
     (ESP_CRYPTO_HASH_ALG_MD5,
      ESP_CRYPTO_HASH_ALG_SHA1,
      ESP_CRYPTO_HASH_ALG_HMAC_MD5,
      ESP_CRYPTO_HASH_ALG_HMAC_SHA1,
      ESP_CRYPTO_HASH_ALG_SHA256,
      ESP_CRYPTO_HASH_ALG_HMAC_SHA256)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:35

   type esp_crypto_cipher_alg_t is 
     (ESP_CRYPTO_CIPHER_NULL,
      ESP_CRYPTO_CIPHER_ALG_AES,
      ESP_CRYPTO_CIPHER_ALG_3DES,
      ESP_CRYPTO_CIPHER_ALG_DES,
      ESP_CRYPTO_CIPHER_ALG_RC2,
      ESP_CRYPTO_CIPHER_ALG_RC4)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:45

   type crypto_hash is null record;   -- incomplete struct

   subtype esp_crypto_hash_t is crypto_hash;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:51

   type crypto_cipher is null record;   -- incomplete struct

   subtype esp_crypto_cipher_t is crypto_cipher;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:57

   type esp_aes_128_encrypt_t is access function
        (arg1 : access unsigned_char;
         arg2 : access unsigned_char;
         arg3 : access unsigned_char;
         arg4 : int) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:67

   type esp_aes_128_decrypt_t is access function
        (arg1 : access unsigned_char;
         arg2 : access unsigned_char;
         arg3 : access unsigned_char;
         arg4 : int) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:78

   type esp_aes_wrap_t is access function
        (arg1 : access unsigned_char;
         arg2 : int;
         arg3 : access unsigned_char;
         arg4 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:89

   type esp_aes_unwrap_t is access function
        (arg1 : access unsigned_char;
         arg2 : int;
         arg3 : access unsigned_char;
         arg4 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:100

   type esp_hmac_sha256_vector_t is access function
        (arg1 : access unsigned_char;
         arg2 : int;
         arg3 : int;
         arg4 : System.Address;
         arg5 : access int;
         arg6 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:113

   type esp_sha256_prf_t is access function
        (arg1 : access unsigned_char;
         arg2 : int;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : access unsigned_char;
         arg5 : int;
         arg6 : access unsigned_char;
         arg7 : int) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:128

   type esp_hmac_md5_t is access function
        (arg1 : access unsigned_char;
         arg2 : unsigned;
         arg3 : access unsigned_char;
         arg4 : unsigned;
         arg5 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:141

   type esp_hmac_md5_vector_t is access function
        (arg1 : access unsigned_char;
         arg2 : unsigned;
         arg3 : unsigned;
         arg4 : System.Address;
         arg5 : access unsigned;
         arg6 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:155

   type esp_hmac_sha1_t is access function
        (arg1 : access unsigned_char;
         arg2 : unsigned;
         arg3 : access unsigned_char;
         arg4 : unsigned;
         arg5 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:168

   type esp_hmac_sha1_vector_t is access function
        (arg1 : access unsigned_char;
         arg2 : unsigned;
         arg3 : unsigned;
         arg4 : System.Address;
         arg5 : access unsigned;
         arg6 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:182

   type esp_sha1_prf_t is access function
        (arg1 : access unsigned_char;
         arg2 : unsigned;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : access unsigned_char;
         arg5 : unsigned;
         arg6 : access unsigned_char;
         arg7 : unsigned) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:200

   type esp_sha1_vector_t is access function
        (arg1 : unsigned;
         arg2 : System.Address;
         arg3 : access unsigned;
         arg4 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:212

   type esp_pbkdf2_sha1_t is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : unsigned;
         arg4 : int;
         arg5 : access unsigned_char;
         arg6 : unsigned) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:230

   type esp_rc4_skip_t is access function
        (arg1 : access unsigned_char;
         arg2 : unsigned;
         arg3 : unsigned;
         arg4 : access unsigned_char;
         arg5 : unsigned) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:247

   type esp_md5_vector_t is access function
        (arg1 : unsigned;
         arg2 : System.Address;
         arg3 : access unsigned;
         arg4 : access unsigned_char) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:259

   type esp_aes_encrypt_t is access procedure
        (arg1 : System.Address;
         arg2 : access unsigned_char;
         arg3 : access unsigned_char)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:269

   type esp_aes_encrypt_init_t is access function (arg1 : access unsigned_char; arg2 : unsigned) return System.Address
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:278

   type esp_aes_encrypt_deinit_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:285

   type esp_aes_decrypt_t is access procedure
        (arg1 : System.Address;
         arg2 : access unsigned_char;
         arg3 : access unsigned_char)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:294

   type esp_aes_decrypt_init_t is access function (arg1 : access unsigned_char; arg2 : unsigned) return System.Address
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:303

   type esp_aes_decrypt_deinit_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:310

   type esp_omac1_aes_128_t is access function
        (arg1 : access sys_ustdint_h.uint8_t;
         arg2 : access sys_ustdint_h.uint8_t;
         arg3 : stddef_h.size_t;
         arg4 : access sys_ustdint_h.uint8_t) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:321

   type esp_ccmp_decrypt_t is access function
        (arg1 : access sys_ustdint_h.uint8_t;
         arg2 : access sys_ustdint_h.uint8_t;
         arg3 : access sys_ustdint_h.uint8_t;
         arg4 : stddef_h.size_t;
         arg5 : access stddef_h.size_t;
         arg6 : Extensions.bool) return access sys_ustdint_h.uint8_t
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:336

   type esp_ccmp_encrypt_t is access function
        (arg1 : access sys_ustdint_h.uint8_t;
         arg2 : access sys_ustdint_h.uint8_t;
         arg3 : stddef_h.size_t;
         arg4 : stddef_h.size_t;
         arg5 : access sys_ustdint_h.uint8_t;
         arg6 : int;
         arg7 : access stddef_h.size_t) return access sys_ustdint_h.uint8_t
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:352

   type esp_aes_gmac_t is access function
        (arg1 : access sys_ustdint_h.uint8_t;
         arg2 : stddef_h.size_t;
         arg3 : access sys_ustdint_h.uint8_t;
         arg4 : stddef_h.size_t;
         arg5 : access sys_ustdint_h.uint8_t;
         arg6 : stddef_h.size_t;
         arg7 : access sys_ustdint_h.uint8_t) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:367

   type esp_sha256_vector_t is access function
        (arg1 : stddef_h.size_t;
         arg2 : System.Address;
         arg3 : access stddef_h.size_t;
         arg4 : access sys_ustdint_h.uint8_t) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:378

   type esp_crc32_le_t is access function
        (arg1 : sys_ustdint_h.uint32_t;
         arg2 : access sys_ustdint_h.uint8_t;
         arg3 : sys_ustdint_h.uint32_t) return sys_ustdint_h.uint32_t
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:388

   type wpa_crypto_funcs_t is record
      size : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:396
      version : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:397
      hmac_sha256_vector : esp_hmac_sha256_vector_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:398
      pbkdf2_sha1 : esp_pbkdf2_sha1_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:399
      aes_128_encrypt : esp_aes_128_encrypt_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:400
      aes_128_decrypt : esp_aes_128_decrypt_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:401
      omac1_aes_128 : esp_omac1_aes_128_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:402
      ccmp_decrypt : esp_ccmp_decrypt_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:403
      ccmp_encrypt : esp_ccmp_encrypt_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:404
      aes_gmac : esp_aes_gmac_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:405
      sha256_vector : esp_sha256_vector_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:406
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:395

   type mesh_crypto_funcs_t is record
      aes_128_encrypt : esp_aes_128_encrypt_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:415
      aes_128_decrypt : esp_aes_128_decrypt_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:416
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h:417

end esp_wifi_crypto_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
