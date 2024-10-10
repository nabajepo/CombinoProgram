%This program make combinaison and stock them in a txt file
%Here we start combino
%Here we make full combinaison
startCombinoF:-writeln("Hey this program combine numbers for n elements selecte and save the result in a file"),
               write("Please enter the length of numbers wanted : "),
               read(N),
               write("For "),
               write(N),
               writeln(" elements we got : "),
               writeln("####################################--RESULTS--#################################").
combinoComplet([Tail|Queue],LoLs,SListEn,Result):-Queue\=[]->combino(LoLs,Tail,SListEn,TRN)
                                                           ,combinoComplet(Queue,LoLs,TRN,Result);
                                                           combino(LoLs,Tail,SListEn,Result),!.

% Here we do combinaison for a specifique element
combino([Tail|Queue],Elt,LoCres,FRes):-Queue\=[]->pushFront(Elt,Tail,Lres)
                                                 ,pushBack(Lres,LoCres,NLres)
                                                 ,combino(Queue,Elt,NLres,FRes);
                                                  pushFront(Elt,Tail,Leres)
                                                  ,pushBack(Leres,LoCres,FRes),!.

%Here we add element in back
pushBack(Element,[],[Element]).
pushBack(Element,[Tail|Queue],[Tail|NewList]):-pushBack(Element,Queue,NewList).
%Here we add in-front
pushFront(Element,List,[Element|List]).

