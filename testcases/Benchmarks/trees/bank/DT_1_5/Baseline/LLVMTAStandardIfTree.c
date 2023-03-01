#include "LLVMTAStandardIfTree.h"
int main() {
 int pX[59];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( int const pX[59]){
	if(pX[55] <= 92868){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( int const pX[59]){
	if(pX[52] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( int const pX[59]){
	if(pX[57] <= 1239){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( int const pX[59]){
	if(pX[53] <= 0){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( int const pX[59]){
	if(pX[58] <= 5087650){
		return 0;
	} else {
		return 0;
	}
}
