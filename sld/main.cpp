#include <bits/stdc++.h>
#include "../decode.hpp"
#include "../util.hpp"
using namespace std;

int main(){
    fstream ifs("contest.sld"), ofs("contest");
    string s;
    int cnt = 1;
    int num = 0;
    while(getline(ifs, s)){
        auto vec = remove_chars(s, " \t");
        num += vec.size();
        if(cnt <= 3){
            for(int i = 0; i < (int)vec.size(); i++){
                string t = vec[i];
                float f = float(stoi(t));
                ofs << bit_cast<int, float>(f) << endl;
            }
        }
        else if(4 <= cnt && cnt <= 20){
            for(int i = 0; i < 4; i++){
                string t = vec[i];
                ofs << stoi(t) << endl;
            }   
            for(int i = 4; i < (int)vec.size(); i++){
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
                    float f = float(stoi(t));
                    ofs << bit_cast<int, float>(f) << endl;
                }
            }
        }
        else{
            for(int i = 0; i < (int)vec.size(); i++){
                string t = vec[i];
                ofs << stoi(t) << endl;
            }
        }
        cnt++;
    }
    cerr << num << endl;
    return 0;
}