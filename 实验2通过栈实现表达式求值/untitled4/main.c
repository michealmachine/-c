#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
typedef struct Node{
    char data;
    struct Node* next;
}Node;
typedef struct{
    Node* top;
    int size;
}LinkStack;
Node* initNode(char data){
    Node* node= (Node*)malloc(sizeof (Node));
    node->next=NULL;
    node->data=data;
    return node;
}
LinkStack* init(){
    LinkStack* stack= (LinkStack*)malloc(sizeof (LinkStack));
    stack->size=0;
    stack->top=NULL;
    return stack;
}
_Bool Isempty(LinkStack* stack){
    if(stack->top==NULL)return true;
    else return false;
}
void Push(LinkStack* stack,char data){
    if(Isempty(stack)){
        stack->top= initNode(data);
    }else{
        Node* node= initNode(data);
        node->next=stack->top;
        stack->top=node;
    }
}
char Pop(LinkStack* stack){
    if(Isempty(stack)) {
        printf("栈满");
        exit(0);
    }
    else{
        Node* temp=stack->top;
        stack->top=stack->top->next;
        char data=temp->data;
        free(temp);
        return data;
    }
}
char Gettop(LinkStack* stack){
    return stack->top->data;
}
void PrintStack(LinkStack* stack){
    Node* temp=stack->top;
    while (temp->next!=NULL){
        printf("%c ",temp->data);
        temp=temp->next;
    }
    printf("%c ",temp->data);
}
_Bool Isoperator(char x){
    if(x=='+'||x=='-'||x=='*'||x=='/'||x=='('||x==')'||x=='#')return true;
    else return false;
}
char Compare(char x,char y){
    if(y==')')return '=';
    if(x=='+'||x=='-'){
        if(y=='+'||y=='-'||y=='*'||y=='/'||y=='(')return '<';
        else return '>';
    }
    if(x=='*'||x=='/'){
        if(y=='*'||y=='/'||y=='(')return '<';
        else return '>';
    }
}
int arithmetic(char x,int a,int b){
    if(x=='+')return a+b;
    if(x=='-')return a-b;
    if(x=='*')return a*b;
    if(x=='/')return a/b;
    else {
        printf("错误");
        exit(-1);
    }
}
int Calculate(char* x,LinkStack* Optrstack,LinkStack* Opndstack){
    int i=0;
    int p=0;
    while (x[i]!='\0'){
        if (Isempty(Optrstack)&&x[i]=='#')Push(Optrstack,x[i]);
        else if(!Isoperator(x[i]))Push(Opndstack,(char)(x[i]-'0'));
        else{
            if(x[i]=='#'){
                while (Gettop(Optrstack)!='#'){
                    char o=Pop(Optrstack);
                    int b = (int) Pop(Opndstack);
                    int a = (int) Pop(Opndstack);
                    Push(Opndstack,arithmetic(o,a,b));
                }
                return Gettop(Opndstack);
            }else if(Gettop(Optrstack)=='#') {
                Push(Optrstack, x[i]);
            }else if(Gettop(Optrstack)=='('&&x[i]!='#'){
                Push(Optrstack,x[i]);
            }else{
                char compare= Compare( Gettop(Optrstack),x[i]);
                if(compare=='>') {
                    char o=Pop(Optrstack);
                    int b = (int) Pop(Opndstack);
                    int a = (int) Pop(Opndstack);
                    Push(Opndstack,arithmetic(o,a,b));
                    Push(Optrstack,x[i]);
                }
                if(compare=='<'){
                    Push(Optrstack,x[i]);
                }
                if(compare=='='){
                    while (Gettop(Optrstack)!='('){
                        char o=Pop(Optrstack);
                        int b = (int) Pop(Opndstack);
                        int a = (int) Pop(Opndstack);
                        Push(Opndstack, arithmetic(o, a, b));
                    }
                    Pop(Optrstack);
                }
            }
        }
        i++;
    }
}
int main() {
    LinkStack* Optrstack=init();
    LinkStack* Opndstack=init();
    int x=Calculate("#2*(5+3)#",Optrstack,Opndstack);
    printf("%d",x);
}
