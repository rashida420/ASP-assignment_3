#include<iostream>
#include<chrono>
#include<iomanip>

void stack_array(){

    int arrayOfnumbers[100000];
    arrayOfnumbers[0]=1;
    arrayOfnumbers[99999]=0;
}

int main(){
    auto start = std::chrono::high_resolution_clock::now();

    for(int i=0; i<100000; i++){
        
        stack_array();
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double>execution_time=(end-start);
    std::cout << std::fixed << std::setprecision(6);
    std::cout<<"Stack Allocated Array -Execution time in seconds: "<<execution_time.count();
    
    return 0;
}