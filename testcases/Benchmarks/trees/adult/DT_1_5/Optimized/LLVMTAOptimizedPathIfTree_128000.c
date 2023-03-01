#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
 int pX[64];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0( int const pX[64]){
	if(pX[0] > 33){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1( int const pX[64]){
	if(pX[61] <= 5119){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2( int const pX[64]){
	if(pX[26] <= 12){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3( int const pX[64]){
	if(pX[50] <= 0){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4( int const pX[64]){
	if(pX[62] <= 1881){
		return 0;
	} else {
		return 1;
	}
}
