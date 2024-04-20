#include <iomanip>
#include <iostream>
#include <openssl/evp.h>
#include <openssl/sha.h>
#include <sstream>
#include <string>

std::string sha256(const std::string &str) {
  unsigned char hash[SHA256_DIGEST_LENGTH];
  EVP_MD_CTX *mdctx;

  if (!(mdctx = EVP_MD_CTX_new())) {
    // Handle error
    return "";
  }

  if (1 != EVP_DigestInit_ex(mdctx, EVP_sha256(), NULL)) {
    // Handle error
    EVP_MD_CTX_free(mdctx);
    return "";
  }

  if (1 != EVP_DigestUpdate(mdctx, str.c_str(), str.size())) {
    // Handle error
    EVP_MD_CTX_free(mdctx);
    return "";
  }

  unsigned int hash_len;
  if (1 != EVP_DigestFinal_ex(mdctx, hash, &hash_len)) {
    // Handle error
    EVP_MD_CTX_free(mdctx);
    return "";
  }

  EVP_MD_CTX_free(mdctx);

  std::stringstream ss;
  for (int i = 0; i < SHA256_DIGEST_LENGTH; i++) {
    ss << std::hex << std::setw(2) << std::setfill('0') << (int)hash[i];
  }

  return ss.str();
}

int main(int, char **) {

  const std::string message{"CMake is awesome!"};

  std::cout << "The sha256 hash of the message '" << message << "' is:\n";
  std::cout << "\t" << sha256(message) << "\n";
}
