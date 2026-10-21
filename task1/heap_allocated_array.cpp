#include<iostream>

void heap_array(){

    int *arrayOfnumbers = new int[1000000];
    delete[] arrayOfnumbers;
}

int main(){

    for(int i=0; i<100000; i++){
        heap_array();

    }
    return 0;
}