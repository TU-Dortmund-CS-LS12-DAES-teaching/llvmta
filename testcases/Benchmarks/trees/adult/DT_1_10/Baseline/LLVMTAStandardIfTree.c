#include "LLVMTAStandardIfTree.h"
int main() {
 int pX[64];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict5(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict6(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict7(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict8(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( int const pX[64]){
	if(pX[60] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( int const pX[64]){
	if(pX[49] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( int const pX[64]){
	if(pX[27] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( int const pX[64]){
	if(pX[59] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( int const pX[64]){
	if(pX[59] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict5( int const pX[64]){
	if(pX[0] <= 28){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict6( int const pX[64]){
	if(pX[50] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict7( int const pX[64]){
	if(pX[61] <= 5095){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict8( int const pX[64]){
	if(pX[0] <= 29){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict9( int const pX[64]){
	if(pX[0] <= 28){
		return 0;
	} else {
		return 0;
	}
}
