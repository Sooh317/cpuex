#include <bits/stdc++.h>
#include "../decode.hpp"
#include "../util.hpp"
using namespace std;

int main(){
    fstream ifs("contest.sld"), ofs("contest");
    string s;
    while(getline(ifs, s)){
        auto vec = remove_chars(s, " \t");
        for(int i = 0; i < (int)vec.size(); i++){
            string t = vec[i];
            int idx = -1;
            for(int j = 0; j < (int)t.size(); j++){
                if(t[j] == '.') idx = j;
            }
            if(idx != -1){
                float f = 0;
                f += float(stoi(t.substr(0, idx)));
                int len = (int)t.size() - idx - 1;
                f += (f < 0 ? -1 : 1) * float(stoi(t.substr(idx + 1, len))) * pow(0.1, len);
                ofs << bit_cast<int, float>(f) << endl;
            }
            else{
                int val = stoi(t);
                ofs << val << endl;
            }
        }
    }
    return 0;
}