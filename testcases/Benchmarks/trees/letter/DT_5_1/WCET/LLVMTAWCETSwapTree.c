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
	if(pX[6] <=  9){
		if(pX[12] <=  1){
			if(pX[13] <=  7){
				if(pX[5] <=  7){
					if(pX[15] <=  8){
						return 11;
					} else {
						return 2;
					}
				} else {
					if(pX[14] <=  1){
						return 9;
					} else {
						return 6;
					}
				}
			} else {
				if(pX[6] >  2){
					if(pX[14] <=  4){
						return 8;
					} else {
						return 25;
					}
				} else {
					return 11;
				}
			}
		} else {
			if(pX[11] <=  7){
				if(pX[15] <=  8){
					if(pX[13] <=  8){
						return 3;
					} else {
						return 13;
					}
				} else {
					if(pX[13] <=  7){
						return 17;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[10] <=  2){
					if(pX[0] <=  5){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[10] <=  11){
						return 10;
					} else {
						return 21;
					}
				}
			}
		}
	} else {
		if(pX[13] <=  10){
			if(pX[5] <=  1){
				if(pX[7] >  2){
					if(pX[2] <=  5){
						return 5;
					} else {
						return 5;
					}
				} else {
					return 22;
				}
			} else {
				if(pX[14] <=  1){
					if(pX[7] <=  1){
						return 19;
					} else {
						return 21;
					}
				} else {
					if(pX[14] <=  4){
						return 15;
					} else {
						return 17;
					}
				}
			}
		} else {
			if(pX[11] <=  5){
				if(pX[5] <=  4){
					if(pX[11] <=  4){
						return 19;
					} else {
						return 24;
					}
				} else {
					if(pX[14] <=  3){
						return 19;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <=  4){
					if(pX[4] <=  1){
						return 24;
					} else {
						return 22;
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
	}
}
