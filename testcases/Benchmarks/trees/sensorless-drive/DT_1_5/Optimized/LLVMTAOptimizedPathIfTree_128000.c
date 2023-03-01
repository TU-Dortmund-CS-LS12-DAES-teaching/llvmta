#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
float pX[48];
	unsigned int predCnt[11] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0(float const pX[48]){
	if(pX[10] > -0.08742999844253063){
		return 4;
	} else {
		return 10;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1(float const pX[48]){
	if(pX[10] > -0.08611099794507027){
		return 3;
	} else {
		return 10;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2(float const pX[48]){
	if(pX[20] <= 2.3310999870300293){
		return 1;
	} else {
		return 8;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3(float const pX[48]){
	if(pX[35] > -0.01787099987268448){
		return 7;
	} else {
		return 10;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4(float const pX[48]){
	if(pX[11] <= 0.06774399802088737){
		return 0;
	} else {
		return 6;
	}
}
