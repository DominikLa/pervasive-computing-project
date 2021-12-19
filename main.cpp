#include "mbed.h"
#include "physcom.h" 

using namespace physcom; 

Serial pc(USBTX, USBRX);
M3pi robot;

int leftWheel = 1;
int rightWheel = 0;


int main() {
    while(true){
        char command = pc.getc();
        
        switch (command) {
            case 'S': 
               robot.activate_motor (leftWheel, 0.0) ;
               robot.activate_motor (rightWheel, 0.0) ;
               break;
            case 'F': 
               robot.activate_motor (leftWheel, 0.1) ;
               robot.activate_motor (rightWheel, 0.1) ; 
               break;
            case 'L': 
               robot.activate_motor (leftWheel, 0.0) ;
               robot.activate_motor (rightWheel, 0.2) ;  
               break;
            case 'R': 
               robot.activate_motor (leftWheel, 0.2) ;
               robot.activate_motor (rightWheel, 0.0) ; 
               break;
        } 
    }
}