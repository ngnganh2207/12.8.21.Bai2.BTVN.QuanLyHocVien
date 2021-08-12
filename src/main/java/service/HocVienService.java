package service;

import models.HocVien;

import java.util.ArrayList;

public class HocVienService {
    public static ArrayList<HocVien> list= new ArrayList<>();
    public HocVienService(){
        list.add(new HocVien("tam1","13/10","HN1","123456","tam1@gmail.com","C01"));
        list.add(new HocVien("tam2","27/07","HN2","023456","tam2@gmail.com","C02"));
        list.add(new HocVien("tam3","02/02","HN3","023456","tam3@gmail.com","C03"));
    }
    public void save(HocVien hocVien){
        list.add(hocVien);
    }
    public void delete(int index){
        list.remove(index);
    }
    public void edit(HocVien hocVien,int index){
        list.set(index,hocVien);
    }
    public static ArrayList<HocVien> findByName(String name){
        //ArrayList<HocVien> list= new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getName().contains(name)) {
                list.add(list.get(i));
            }
        }
        return list;
    }
}
