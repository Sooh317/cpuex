#include <bits/stdc++.h>
#include "../decode.hpp"
#include "../util.hpp"
using namespace std;

int main(){
    ifstream ifs("contest");
    int s;
    while(ifs >> s){
        cout << s << endl;
        cout << bit_cast<float, int>(s) << endl;
    }
}