#include <iostream>
using namespace std;

#include "List.h"


int main() {
    List x;
    // x.last();
    // x.first();
    // //need to make statement so u can't call methods before there is anyhting in the list empty is
    // x.insertAtTail(5);
    // x.insertAtTail(6);
    // x.insertAtTail(7);
    
    ListItr obj = x.first();
    x.insertAfter(3, obj);
    cout << obj.retrieve() << endl;
    
  
    // x.insertAtTail(3);
    printList(x, true);
    // 
    // x.last();
    // x.first();
    // x.find(3);
    //x.last();
    return 0;
}
