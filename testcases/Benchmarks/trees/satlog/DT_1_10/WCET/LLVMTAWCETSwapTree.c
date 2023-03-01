#include "LLVMTAWCETSwapTree.h"
int main() {
unsigned char pX[36];
	unsigned int predCnt[6] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict1(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict2(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict3(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict4(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict5(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict6(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict7(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict8(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0(unsigned char const pX[36]){
	if(pX[28] <=  78){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict1(unsigned char const pX[36]){
	if(pX[16] <=  81){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict2(unsigned char const pX[36]){
	if(pX[24] <=  81){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict3(unsigned char const pX[36]){
	if(pX[16] <=  81){
		return 5;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict4(unsigned char const pX[36]){
	if(pX[24] <=  81){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict5(unsigned char const pX[36]){
	if(pX[24] <=  81){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict6(unsigned char const pX[36]){
	if(pX[15] <=  72){
		return 5;
	} else {
		return 0;
	}
}
unsigned int LLVMTAWCETSwapTree_predict7(unsigned char const pX[36]){
	if(pX[15] <=  74){
		return 5;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict8(unsigned char const pX[36]){
	if(pX[0] <=  78){
		return 0;
	} else {
		return 2;
	}
}
unsigned int LLVMTAWCETSwapTree_predict9(unsigned char const pX[36]){
	if(pX[4] <=  81){
		return 0;
	} else {
		return 2;
	}
}
