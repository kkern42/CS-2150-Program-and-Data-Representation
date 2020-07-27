
#include "hashTable.h"
using namespace std;
#include <iostream>
int main(){
  hashTable x =hashTable(20000);
  x.hashInsert("hey");
  x.hashInsert("great");
  x.hashInsert("nooo");
  x.hashInsert("disliisuioned");
  cout << x.hashFind("disliisuioned") << endl;
}
