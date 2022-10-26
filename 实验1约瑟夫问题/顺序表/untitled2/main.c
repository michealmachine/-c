#include <stdio.h>
#include <stdlib.h>

struct SeqList{
    int* p;
    int size;
    int capacity;
};
void InitSeq(struct SeqList *s,int capacity){
    s->capacity=capacity;
    s->p=(int*)malloc(sizeof (int)*capacity);
    s->size=0;
}
void AddSeq(struct SeqList *s,int n){
    if(s->size==s->capacity){
        s->p=(int*) realloc(s->p,2*s->capacity*sizeof (int));
        s->capacity*=2;
    }
    *((s->p)+s->size++)=n;
}
int DeleteSeq(struct SeqList *s,int position){
    int n;
    if(s->size<position)return -1;
    else{
        n=s->p[position];
        while (s->size>position){
            s->p[position-1]=s->p[position];
            position++;
        }
        s->size--;
    }
    return n;
}
void SeqPrint(struct SeqList *s){
    if(s->size==0)return;
    else{
        int count=0;
        while (count<s->size){
            printf("%d ",s->p[count++]);
        }
        printf("\n");
    }
}
void out(struct SeqList *s,int round,int n){
    int traget=0;
    while (s->size>0){
        traget=(traget+round-1)%s->size;
        /*printf("%d",s->p[traget-1]);*/
        printf("%d",s->p[traget]);
        DeleteSeq(s,traget+1);
    }
}
int main() {
    int capacity;
    int target;
    struct SeqList list;
    scanf("%d,%d",&capacity,&target);
    InitSeq(&list,capacity);
    for (int i = 1; i <= capacity; ++i) {
        AddSeq(&list,i);
    }

    out(&list,target,capacity);
    return 0;
}
