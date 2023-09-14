class GroupAnagram {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String,List<String>> mapStr={};
    List sorted=[];
    List<List<String>> anaList=[];
    
    //sort the list
    for(var str in strs){
        var strAsList=str.split('');
        strAsList.sort();
        String sortedAndJoinedStr=strAsList.join();
        sorted.add(sortedAndJoinedStr);
    }
    //create a set of unique sorted elements
   var setStr={...sorted};
   setStr.forEach((e)=>mapStr[e]=[]); //let each element of the set be a key in the map. Let the value be an empty string
  
  //for each element in the sorted list, put the element in the same index from the original list into the value(of type list) of the map.
   for(int i=0;i<sorted.length;i++){
     if(mapStr.containsKey(sorted[i])){
       mapStr[sorted[i]]?.add(strs[i]);
     }
   }

   //put all the values in the map into an empty list
   for(var item in mapStr.values){
     anaList.add(item);
   }
    return(anaList);


  }
}