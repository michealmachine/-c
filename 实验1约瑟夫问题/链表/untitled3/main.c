#include <stdio.h>
#include <stdlib.h>

struct Node{
    int data;
    struct Node* next;
};
struct Linklist{
    struct Node* head;
    int size;
};
struct Node* AddNode(int data){
    struct Node* node=(struct Node*)malloc(sizeof (struct Node));
    node->data=data;
    node->next=NULL;
    return node;
}
void InitList(struct Linklist *s){
    s->head=NULL;
    s->size=0;
}
void AddList(struct Linklist *s,int data){
    if(s->head==NULL){
        s->head= AddNode(data);
        s->size++;
        return;
    } else{
        struct Node* temp=s->head;
        while (temp->next!=NULL){
            temp=temp->next;
        }
        temp->next= AddNode(data);
        s->size++;
        return;
    }
}
void printList(struct Linklist *s){
    if(s->head==NULL)return;
    else{
        struct Node* temp=s->head;
        while (temp->next!=NULL){
            printf("%d ",temp->data);
            temp=temp->next;
        }
        printf("%d ",temp->data);
    }
}
void out(struct Linklist* s,int round){
    struct Node* temp=s->head;
    while (temp->next!=NULL){
        temp=temp->next;
    }
    temp->next=s->head;
    struct Node* tail=s->head;
    int count=1;
    while (s->size>0){
        while (count+1<round){
            tail=tail->next;
            count++;
        }
        temp=tail->next;
        tail->next=tail->next->next;
        printf("%d ",temp->data);
        free(temp);
        s->size--;
        count=0;
    }

}
int main() {
    struct Linklist list;
    InitList(&list);
    int capacity,target;
    scanf("%d,%d",&capacity,&target);
    for (int i = 1; i <= capacity; ++i) {
        AddList(&list,i);
    }
    out(&list,target);
}