#include<iostream>

void static_array(){

    static int arrayOfnumbers[1000000];
}

int main(){

    for(int i=0; i<100000; i++){
        
        static_array();

    }
    
    return 0;
}

