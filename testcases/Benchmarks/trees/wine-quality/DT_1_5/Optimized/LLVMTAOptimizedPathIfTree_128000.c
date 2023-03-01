#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
float pX[11];
	unsigned int predCnt[7] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0(float const pX[11]){
	if(pX[4] > 0.04050000011920929){
		return 3;
	} else {
		return 3;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1(float const pX[11]){
	if(pX[10] > 10.016666889190674){
		return 3;
	} else {
		return 2;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2(float const pX[11]){
	if(pX[7] > 0.9916349947452545){
		return 3;
	} else {
		return 3;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3(float const pX[11]){
	if(pX[7] > 0.9920350015163422){
		return 3;
	} else {
		return 3;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4(float const pX[11]){
	if(pX[5] > 13.5){
		return 3;
	} else {
		return 2;
	}
}
