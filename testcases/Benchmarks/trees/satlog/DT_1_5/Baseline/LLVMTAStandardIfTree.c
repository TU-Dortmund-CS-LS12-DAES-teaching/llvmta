#include "LLVMTAStandardIfTree.h"
int main() {
unsigned char pX[36];
	unsigned int predCnt[6] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0(unsigned char const pX[36]){
	if(pX[8] <= 79){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAStandardIfTree_predict1(unsigned char const pX[36]){
	if(pX[16] <= 78){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAStandardIfTree_predict2(unsigned char const pX[36]){
	if(pX[12] <= 79){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAStandardIfTree_predict3(unsigned char const pX[36]){
	if(pX[4] <= 78){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAStandardIfTree_predict4(unsigned char const pX[36]){
	if(pX[16] <= 81){
		return 5;
	} else {
		return 2;
	}
}
