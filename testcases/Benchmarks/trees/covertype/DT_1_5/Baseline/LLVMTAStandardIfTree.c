#include "LLVMTAStandardIfTree.h"
int main() {
 short pX[54];
	unsigned int predCnt[7] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( short const pX[54]){
	if(pX[5] <= 1498){
		return 1;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( short const pX[54]){
	if(pX[23] <= 0){
		return 1;
	} else {
		return 2;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( short const pX[54]){
	if(pX[9] <= 1205){
		return 1;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( short const pX[54]){
	if(pX[52] <= 0){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( short const pX[54]){
	if(pX[2] <= 22){
		return 1;
	} else {
		return 1;
	}
}
