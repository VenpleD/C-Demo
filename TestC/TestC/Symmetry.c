//
//  Symmetry.c
//  TestC
//
//  Created by duanwenpu on 2022/6/23.
//

#include "Symmetry.h"
#include <math.h>

//_Bool symmetry = 1;

struct TreeNode {
    int val;
    struct TreeNode* left;
    struct TreeNode* right;
};

void testSymetry(void) {
    int array[] = {1,2,2,3,4,4,3};
    int length = sizeof(array) / sizeof(array[0]);
    int result = 1;
    int idx = 1;
    int level = sqrt(length);
    for (int i = 1; i < level; i++) {
        

    }
    for (int i = 0; i < length; i++) {
        int root = array[i];
        int leftIdx = i*2 + 1;
        int rightIdx = i*2 + 2;
        int left = -1;
        int right = -1;
        if (leftIdx < length) {
            left = array[leftIdx];
        }
        if (rightIdx < length) {
            right = array[rightIdx];
        }
        if (left != right) {
            result = 0;
            break;
        }
    }
    printf("结果:%d", result);
}


int (*func)(int);

int a(int) {
    return 1;
}


struct TreeNode*traverse(struct TreeNode* root) {
    int symmetry = 1;
    if (!symmetry) {
        return NULL;
    }
    struct TreeNode* left = traverse(root->left);
    struct TreeNode* right = traverse(root->right);
    
    return root;
}
