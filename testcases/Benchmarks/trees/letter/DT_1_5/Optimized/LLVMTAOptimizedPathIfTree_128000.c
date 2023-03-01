#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
 char pX[16];
	unsigned int predCnt[26] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0( char const pX[16]){
	if(pX[12] <= 6){
		return 3;
	} else {
		return 12;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1( char const pX[16]){
	if(pX[10] > 2){
		return 5;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2( char const pX[16]){
	if(pX[10] > 2){
		return 15;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3( char const pX[16]){
	if(pX[11] > 4){
		return 20;
	} else {
		return 15;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4( char const pX[16]){
	if(pX[10] > 2){
		return 15;
	} else {
		return 0;
	}
}
