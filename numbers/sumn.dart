//Calculate the sum of all numbers from 1 to N

void main(){
    int n=10;
 int result=sumnnumber(n);
 print(result);
}
int sumnnumber(int n){
    int sum=0;
    for(int i=1;i<=n;i++){
        sum=sum+i;//0+1=1 1+2=3 3+3=6 6+4=10 10+5=15

    }
    return sum;
}