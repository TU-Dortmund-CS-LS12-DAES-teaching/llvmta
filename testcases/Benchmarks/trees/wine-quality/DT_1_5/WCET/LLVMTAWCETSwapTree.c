#include "LLVMTAWCETSwapTree.h"
int main() {
float pX[11];
	unsigned int predCnt[7] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict1(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict2(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict3(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0(float const pX[11]){
	if(pX[4] <=  0.04050000011920929){
		return 3;
	} else {
		return 3;
	}
}
unsigned int LLVMTAWCETSwapTree_predict1(float const pX[11]){
	if(pX[10] <=  10.016666889190674){
		return 2;
	} else {
		return 3;
	}
}
unsigned int LLVMTAWCETSwapTree_predict2(float const pX[11]){
	if(pX[7] <=  0.9916349947452545){
		return 3;
	} else {
		return 3;
	}
}
unsigned int LLVMTAWCETSwapTree_predict3(float const pX[11]){
	if(pX[7] <=  0.9920350015163422){
		return 3;
	} else {
		return 3;
	}
}
unsigned int LLVMTAWCETSwapTree_predict4(float const pX[11]){
	if(pX[5] <=  13.5){
		return 2;
	} else {
		return 3;
	}
}
