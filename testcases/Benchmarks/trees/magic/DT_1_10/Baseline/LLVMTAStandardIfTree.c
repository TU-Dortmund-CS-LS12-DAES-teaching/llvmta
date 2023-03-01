#include "LLVMTAStandardIfTree.h"
int main() {
 short pX[10];
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
unsigned int LLVMTAStandardIfTree_predict0( short const pX[10]){
	if(pX[8] <= 25){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict1( short const pX[10]){
	if(pX[7] <= 30){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict2( short const pX[10]){
	if(pX[0] <= 107){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict3( short const pX[10]){
	if(pX[8] <= 25){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict4( short const pX[10]){
	if(pX[5] <= -103){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAStandardIfTree_predict5( short const pX[10]){
	if(pX[8] <= 20){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict6( short const pX[10]){
	if(pX[8] <= 25){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict7( short const pX[10]){
	if(pX[1] <= 40){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict8( short const pX[10]){
	if(pX[1] <= 40){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAStandardIfTree_predict9( short const pX[10]){
	if(pX[8] <= 26){
		return 0;
	} else {
		return 1;
	}
}
