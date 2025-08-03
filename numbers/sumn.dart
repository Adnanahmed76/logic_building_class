//Calculate the sum of all numbers from 1 to N

void main(){
    int n=10;
 int result=sumnnumber(n);
 print(result);
}
int sumnnumber(int n){
    int sum=0;
    for(int i=1;i<=n;i++){
        sum=sum+i;

    }
    return sumnnumber(10);
}