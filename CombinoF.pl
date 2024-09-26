%This program make combinaison and stock them in a txt file
%Here we start combino
%Here we add element in back
pushBack(Element,[],[Element]).
pushBack(Element,[Tail|Queue],[Tail|NewList]):-pushBack(Element,Queue,NewList).
%Here we add in-front
pushFront(Element,List,[Element|List]).

