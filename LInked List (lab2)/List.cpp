//User: kjk9cd (Kevin Kern)
//File: List.cpp
//Date: 9/17/2019
//Lab3: Post-Lab

#include "List.h"
//#include "ListNode.cpp"
#include <iostream>
// next line needed because NULL is part of std namespace
 using namespace std;


//Default Constructor
List::List(){
  head = new ListNode;
  tail = new ListNode;
  head->previous = NULL;
  head->next = tail;
  tail->previous = head;
  tail->next = NULL;
  count=0;
}


// //Deconsturctor
List::~List(){
  makeEmpty();
  delete head;
  delete tail;
 }


List::List(const List& source) {      // Copy Constructor
     head=new ListNode;
     tail=new ListNode;
     head->next=tail;
     tail->previous = head;
     count=0;
     ListItr iter(source.head->next);
     while (!iter.isPastEnd()) {       // deep copy of the list
         insertAtTail(iter.retrieve());
         iter.moveForward();
     }
}

List& List::operator=(const List& source) { //Equals operator
     if (this == &source)
         return *this;
     else {
         makeEmpty();
         ListItr iter(source.head->next);
         while (!iter.isPastEnd()) {
             insertAtTail(iter.retrieve());
             iter.moveForward();
         }
     }
     return *this;
}



ListItr List:: first(){
  ListItr newItr = ListItr(head->next);
  return newItr;
}

ListItr List:: last(){
  ListItr newItr = ListItr(tail->previous);
  return newItr;
}

ListItr List ::  find(int x){
  ListItr* track = new ListItr(head->next);
  int val = track->current->value;
  while(val != x && ! track->isPastEnd()){
    
    track->moveForward();
    val = track->current->value;
  }
  if(track->current->value == x){
    return *track;
  }
  else{
    return tail;
  }
}

void List:: insertAtTail(int x){
  ListNode *newNode = new ListNode();
  newNode->value = x;
  newNode->previous = tail->previous;
  newNode->next = tail;
  tail->previous->next = newNode;
  tail->previous = newNode;
  if(count == 0){
    head->next = newNode;
  }
  count++;
							  
}

void List:: insertAtHead(int x){
  ListNode *newNode = new ListNode();
  newNode->value = x;
  newNode->next = head->next;
  newNode->previous = head;
  head->next->previous = newNode;
  head->next = newNode;
  count++;
  
}

void List :: insertAfter(int x, ListItr position){
  ListNode *newNode = new ListNode();
  newNode->value = x;
  newNode->previous = position.current;
  newNode->next = position.current->next;
  newNode->previous->next = newNode;
  newNode->next->previous = newNode;  
  count++;
}

void List :: insertBefore(int x, ListItr position){
  ListNode *newNode = new ListNode();
  newNode->value = x;
  newNode->previous = position.current->previous;
  newNode->next = position.current;
  position.current->previous = newNode;
  newNode->previous->next = newNode;
  count++;
}


void printList(List& source, bool direction){
  if(direction){
    int num = 0;
    ListItr* itr =  new ListItr(source.first());
    while(!itr->isPastEnd()){
     cout << itr->retrieve() << endl;
     itr->moveForward();
     num++;
    }
  }
  else{
   ListItr* itr =  new ListItr(source.last());
   while(!itr->isPastBeginning()){
     cout << itr->retrieve() << endl;
     itr->moveBackward();
   }
  }
}

bool List:: isEmpty() const{
    if(count>0){
      return false;
    }
    else{
      return true;
    }
}


void List ::  makeEmpty(){
  ListItr* track = new ListItr(head->next);
  while( ! track->isPastEnd()){
    head->next = track->current->next;
    track->current->next->previous = head;
    delete track->current;
    track->moveForward();
  }
  
  count = 0;
}

void List :: removeFirst(){
  ListItr node = first();
  node.current->next->previous = node.current->previous;
  node.current->previous->next = node.current->next;
  delete node.current;
  count--;
}

int List :: getFirst(){
  ListItr node = first();
  return node.current->value;
}

void List ::  remove(int x){
  ListItr node =  find(x);
  if(node.current->next != NULL){
    node.current->next->previous = node.current->previous;
    node.current->previous->next = node.current->next;
    delete node.current;
    count--;
  }
  
}

int List :: size() const{
  return count;
}
