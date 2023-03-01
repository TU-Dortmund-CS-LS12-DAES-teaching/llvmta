#include "LLVMTAStandardIfTree.h"
int main() {
 char pX[16];
	unsigned int predCnt[26] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( char const pX[16]){
	if(pX[12] <= 6){
		return 3;
	} else {
		return 12;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 5;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 15;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( char const pX[16]){
	if(pX[11] <= 4){
		return 15;
	} else {
		return 20;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 15;
	}
}
