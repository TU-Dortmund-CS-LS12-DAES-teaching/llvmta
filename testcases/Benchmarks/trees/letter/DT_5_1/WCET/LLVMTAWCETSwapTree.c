#include "LLVMTAWCETSwapTree.h"
int main() {
 char pX[16];
	unsigned int predCnt[26] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0( char const pX[16]){
	if(pX[9] >  2){
		if(pX[13] <=  9){
			if(pX[6] <=  4){
				if(pX[12] <=  1){
					if(pX[7] <=  3){
						return 11;
					} else {
						return 9;
					}
				} else {
					if(pX[8] <=  3){
						return 0;
					} else {
						return 16;
					}
				}
			} else {
				if(pX[14] <=  2){
					if(pX[9] <=  10){
						return 13;
					} else {
						return 9;
					}
				} else {
					if(pX[11] <=  8){
						return 3;
					} else {
						return 4;
					}
				}
			}
		} else {
			if(pX[10] <=  9){
				if(pX[14] <=  2){
					if(pX[14] <=  1){
						return 22;
					} else {
						return 22;
					}
				} else {
					if(pX[6] <=  8){
						return 2;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <=  5){
					if(pX[14] <=  0){
						return 24;
					} else {
						return 21;
					}
				} else {
					if(pX[14] <=  1){
						return 19;
					} else {
						return 24;
					}
				}
			}
		}
	} else {
		if(pX[10] >  6){
			if(pX[15] <=  7){
				return 20;
			} else {
				return 24;
			}
		} else {
			return 11;
		}
	}
}
