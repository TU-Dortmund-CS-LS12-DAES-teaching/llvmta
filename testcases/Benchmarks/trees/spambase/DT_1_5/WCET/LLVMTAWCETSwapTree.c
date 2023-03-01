#include "LLVMTAWCETSwapTree.h"
int main() {
 int pX[57];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict1(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict2(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict3(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0( int const pX[57]){
	if(pX[55] <=  1850){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAWCETSwapTree_predict1( int const pX[57]){
	if(pX[51] <=  7){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAWCETSwapTree_predict2( int const pX[57]){
	if(pX[20] <=  40){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAWCETSwapTree_predict3( int const pX[57]){
	if(pX[18] <=  112){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAWCETSwapTree_predict4( int const pX[57]){
	if(pX[54] <=  266){
		return 0;
	} else {
		return 1;
	}
}
