#include "LLVMTAStandardIfTree.h"
int main() {
 char pX[784];
	unsigned int predCnt[10] ;
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
unsigned int LLVMTAStandardIfTree_predict0( char const pX[784]){
	if(pX[488] <= 1){
		return 3;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( char const pX[784]){
	if(pX[290] <= 0){
		return 1;
	} else {
		return 9;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( char const pX[784]){
	if(pX[409] <= 0){
		return 1;
	} else {
		return 9;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( char const pX[784]){
	if(pX[434] <= 0){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( char const pX[784]){
	if(pX[318] <= 1){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict5( char const pX[784]){
	if(pX[409] <= 0){
		return 1;
	} else {
		return 7;
	}
}
unsigned int LLVMTAStandardIfTree_predict6( char const pX[784]){
	if(pX[462] <= 2){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict7( char const pX[784]){
	if(pX[409] <= 0){
		return 1;
	} else {
		return 9;
	}
}
unsigned int LLVMTAStandardIfTree_predict8( char const pX[784]){
	if(pX[624] <= 0){
		return 9;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict9( char const pX[784]){
	if(pX[374] <= 0){
		return 1;
	} else {
		return 6;
	}
}
