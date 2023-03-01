#include "LLVMTAStandardIfTree.h"
int main() {
 char pX[16];
	unsigned int predCnt[26] ;
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
unsigned int LLVMTAStandardIfTree_predict0( char const pX[16]){
	if(pX[9] <= 2){
		return 11;
	} else {
		return 12;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( char const pX[16]){
	if(pX[13] <= 9){
		return 3;
	} else {
		return 24;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 24;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( char const pX[16]){
	if(pX[11] <= 4){
		return 15;
	} else {
		return 12;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 15;
	}
}
unsigned int LLVMTAStandardIfTree_predict5( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 15;
	}
}
unsigned int LLVMTAStandardIfTree_predict6( char const pX[16]){
	if(pX[12] <= 6){
		return 15;
	} else {
		return 12;
	}
}
unsigned int LLVMTAStandardIfTree_predict7( char const pX[16]){
	if(pX[10] <= 2){
		return 0;
	} else {
		return 5;
	}
}
unsigned int LLVMTAStandardIfTree_predict8( char const pX[16]){
	if(pX[6] <= 9){
		return 3;
	} else {
		return 19;
	}
}
unsigned int LLVMTAStandardIfTree_predict9( char const pX[16]){
	if(pX[12] <= 6){
		return 18;
	} else {
		return 12;
	}
}
