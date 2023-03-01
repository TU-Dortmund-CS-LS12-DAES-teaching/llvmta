#include "LLVMTAStandardIfTree.h"
int main() {
 char pX[784];
	unsigned int predCnt[10] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( char const pX[784]){
	if(pX[460] <= 1){
		return 0;
	} else {
		return 8;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( char const pX[784]){
	if(pX[489] <= 0){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( char const pX[784]){
	if(pX[625] <= 0){
		return 4;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( char const pX[784]){
	if(pX[625] <= 0){
		return 4;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( char const pX[784]){
	if(pX[156] <= 0){
		return 7;
	} else {
		return 2;
	}
}
