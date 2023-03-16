#include <cstdlib>
#include <iostream>

int main() {
  system("sudo apt-get install snap snapd -y");
  system("snap install powershell --classic");
  system("pwsh");
  return 0;
}
