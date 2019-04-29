#include <iostream.h>
#include <conio.h>

int data[100];
int n;

void main()
{
cout<<"===PROGRAM INPUTAN DATA DARI USER==="<<endl;
cout<<endl;
cout<<"Masukan Jumlah Data: ";
cin>>n;
cout<<endl;
for(int i=1;i<=n;i++)
{
cout<<"Masukkan data ke "<<i<< " : ";
cin>>data[i];
}
cout<<endl;
cout<<"Data yang di Masukan: ";
for(int i=1; i<=n; i++)
{
cout<<" "<<data[i];
}
getch();
}
