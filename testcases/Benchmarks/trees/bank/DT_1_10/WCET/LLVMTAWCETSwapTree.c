#include "LLVMTAWCETSwapTree.h"
int main() {
 int pX[59];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict1(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict2(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict3(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict4(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict5(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict6(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict7(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict8(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0( int const pX[59]){
	if(pX[53] <=  0){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAWCETSwapTree_predict1( int const pX[59]){
	if(pX[6] <=  0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict2( int const pX[59]){
	if(pX[54] <=  -650){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict3( int const pX[59]){
	if(pX[30] <=  0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict4( int const pX[59]){
	if(pX[49] <=  513000){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict5( int const pX[59]){
	if(pX[55] <=  92868){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict6( int const pX[59]){
	if(pX[56] <=  -35450){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict7( int const pX[59]){
	if(pX[30] <=  0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict8( int const pX[59]){
	if(pX[33] <=  0){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAWCETSwapTree_predict9( int const pX[59]){
	if(pX[57] <=  1239){
		return 0;
	} else {
		return 0;
	}
}
